package com.app.contest.handler;

import com.app.contest.dao.ContestDao;
import com.app.contest.entity.ContestMember;
import com.app.contest.entity.TeamInfo;
import com.app.contest.utils.TeamIdUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.*;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.stream.Stream;

@Component
public class ContestMatchThread implements Runnable {
    private Logger LOGGER = LoggerFactory.getLogger(Logger.class);

    private volatile boolean isDone = false;
    private BlockingQueue<List<ContestMember>> matchPool = new LinkedBlockingQueue<>();

    @Autowired
    ContestDao contestDao;

    @Override
    public void run() {
        while (!isDone) {
            try {
                if (!matchPool.isEmpty()) {
                    Thread.sleep(3000);
                    LOGGER.info("match pool:" + matchPool.toString());
                    List<ContestMember> newContestMembers = matchPool.take();
                    if (!newContestMembers.isEmpty()) {
                        List<ContestMember> memberResult = new ArrayList<>();
                        List<ContestMember> contestMemberList = new ArrayList<>();
                        for (ContestMember contestMember : newContestMembers) {
                            if (!contestMember.getIsTeam()) {
                                contestMemberList.add(contestMember);
                            } else {
                                memberResult.add(contestMember);
                            }
                        }
                        Integer contestId = newContestMembers.get(1).getContestId();
                        processMatchPool(contestMemberList, contestId);
//                        LOGGER.info("====================");
//                        LOGGER.info(String.valueOf(contestMemberList));
//                        LOGGER.info(String.valueOf(contestMemberList.size()));
//                        LOGGER.info(String.valueOf(memberResult));
//                        LOGGER.info(String.valueOf(memberResult.size()));
//                        LOGGER.info(TeamIdUtils.generateTeamId());

//                        for (int i = 0;  i < newContestMembers.size(); i++ ) {
//                            LOGGER.info(newContestMembers.get(i).getIsTeam().toString());
//                            if (newContestMembers.get(i).getIsTeam() && newContestMembers.get(i).getTeamId() != null) {
//
//                                newContestMembers.remove(i);
//                            }
//                        }

//                        LOGGER.info("match poolsssss:" + newContestMembers.isEmpty());
//
//                        LOGGER.info("test:" + newContestMembers.toString());
                    }
                }
            } catch (Exception e) {
                LOGGER.error(e.toString());
            }

        }
    }

    private List processMatchPool(List<ContestMember> matchList, Integer contestId) {
        List<List<ContestMember>> lists = new ArrayList<>();
        Random random = new Random();
        while (!matchList.isEmpty()) {
            LOGGER.info("-----------------:" + matchList.size());
            List<ContestMember> temp = new ArrayList<>();
            TeamInfo teamInfo;
            teamInfo = new TeamInfo(TeamIdUtils.generateTeamId(), TeamIdUtils.generateTeamId(), contestId);
            Integer teamId = contestDao.insertTeamInfo(teamInfo);
            LOGGER.info("----------++++:" + teamId);
            for (int i = 0; i < 5; i++) {
                if (matchList.size() > 0) {
                    int n = random.nextInt(matchList.size());
                    ContestMember contestMember = matchList.get(n);
                    contestMember.setTeamId(teamId);
                    temp.add(contestMember);
                    matchList.remove(matchList.get(n));
                }
            }
            LOGGER.info("----------++++:" + temp.toString());
            lists.add(temp);
        }
        return lists;
    }

    public void addContestMember(List<ContestMember> contestPoolElement) {
        try {
            matchPool.put(contestPoolElement);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public void removeContestMember(Integer id) {
        synchronized (this) {
            matchPool.remove(id);
        }
    }


    public void stop() {
        // 关闭线程
        isDone = true;
    }
}
