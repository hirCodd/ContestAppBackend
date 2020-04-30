package com.app.contest.handler;

import com.app.contest.entity.ContestMember;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.stream.Stream;

@Component
public class ContestMatchThread implements Runnable {
    private Logger LOGGER = LoggerFactory.getLogger(Logger.class);

    private volatile boolean isDone = false;
    private BlockingQueue<List<ContestMember>> matchPool = new LinkedBlockingQueue<>();

    @Override
    public void run() {
        while (true) {
            try {
                if (!matchPool.isEmpty()) {
                    Thread.sleep(3000);
                    LOGGER.info("match pool:" + matchPool.toString());
                    List<ContestMember> newContestMembers = matchPool.take();
                    LOGGER.info("match pool:" + newContestMembers.size());
                    LOGGER.info("match pool:" + newContestMembers.toString());
                    LOGGER.info("match pool:" + newContestMembers.isEmpty());
                    LOGGER.info("match pool:" + matchPool.toString());
                    if (!newContestMembers.isEmpty()) {
                        for (int i = 0;  i < newContestMembers.size(); i++ ) {
                            if (newContestMembers.get(i).getIsTeam()) {
                                LOGGER.info(newContestMembers.get(i).getIsTeam().toString());
                                newContestMembers.remove(i);
                            }
                        }

                        LOGGER.info("match poolsssss:" + newContestMembers.isEmpty());

                        LOGGER.info("test:" + newContestMembers.toString());
                    }
                }
            } catch (Exception e) {
                LOGGER.error(e.getCause().toString());
            }

        }
    }

    private void processMatchPool() {

    }

    public void addContestMember(List<ContestMember> contestPoolElement) {
        try {
            matchPool.put(contestPoolElement);

        } catch (InterruptedException e) {
            e.printStackTrace();
        }
//        synchronized (this) {
//
//        }
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
