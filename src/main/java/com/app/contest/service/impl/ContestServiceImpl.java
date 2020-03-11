package com.app.contest.service.impl;

import com.app.contest.dao.ContestDao;
import com.app.contest.entity.Contest;
import com.app.contest.entity.ContestMember;
import com.app.contest.entity.TeamInfo;
import com.app.contest.service.ContestService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContestServiceImpl implements ContestService {
    private Logger logger = LoggerFactory.getLogger(Logger.class);

    @Autowired
    ContestDao contestDao;

    @Override
    public Boolean insertContest(Contest contest) {
        try {
            return contestDao.insertContest(contest);
        } catch (Exception e) {
            logger.error(e.getCause().toString());
        }
        return false;
    }

    @Override
    public Boolean updateContest(Contest contest) {
        try {
            return contestDao.updateContest(contest);
        } catch (Exception e) {
            logger.error(e.getCause().toString());
        }
        return false;
    }

    @Override
    public List<Contest> getAllContests() {
        try {
            return contestDao.getAllContests();
        } catch (Exception e) {
            logger.error(e.getCause().toString());
        }
        return null;
    }

    @Override
    public PageInfo<Contest> getPaginationContest(Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<Contest> contests = getAllContests();
        logger.info(contests.toString());
        return new PageInfo<>(contests);
    }

    @Override
    public Contest getContestById(Integer contestId) {
        try {
            return contestDao.getContestContent(contestId);
        } catch (Exception e) {
            logger.error(e.getCause().toString());
        }
        return null;
    }

    @Override
    public Boolean insertContestMember(List<ContestMember> contestMembers) {
        try {
            return contestDao.insertContestMembers(contestMembers);
        } catch (Exception e) {
            logger.error(e.getCause().toString());
        }
        return false;
    }

    @Override
    public Boolean queryApplyResult(Integer contestId, String openId) {
        try {
            return contestDao.queryApplyResultByContestIdAndOpenId(contestId, openId);
        } catch (Exception e) {
            logger.error(e.getCause().toString());
        }
        return false;
    }

    @Override
    public Integer queryTeamInfoResult(Integer contestId, String openId) {
        try {
            return contestDao.queryTeamInfoResult(contestId, openId);
        } catch (Exception e) {
            logger.error(e.getCause().toString());
        }
        return null;
    }

    @Override
    public List<String> queryTeamNameList(Integer contestId) {
        try {
            return contestDao.queryTeamNames(contestId);
        } catch (Exception e) {
            logger.error(e.getCause().toString());
        }
        return null;
    }

    @Override
    public Integer insertTeamInfo(TeamInfo teamInfo) {
        try {
            return contestDao.insertTeamInfo(teamInfo);
        } catch (Exception e) {
            logger.error(e.getCause().toString());
        }
        return -1;
    }

    @Override
    public List<Contest> queryMyContestApply(String openId) {
        try {
            return contestDao.queryMyContestApply(openId);
        } catch (Exception e) {
            logger.error(e.getCause().toString());
        }
        return null;
    }

    @Override
    public List<Contest> getContestByKeyword(String keyword) {
        try {
            return contestDao.getContestByKeyword(keyword);
        } catch (Exception e) {
            logger.info(e.getCause().toString());
        }
        return null;
    }
}
