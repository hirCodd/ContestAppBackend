package com.app.contest.service.impl;

import com.app.contest.dao.ContestDao;
import com.app.contest.entity.Contest;
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
}
