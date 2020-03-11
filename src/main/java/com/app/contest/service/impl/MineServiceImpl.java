package com.app.contest.service.impl;


import com.app.contest.dao.MineDao;
import com.app.contest.service.MineService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MineServiceImpl implements MineService {
    private Logger logger = LoggerFactory.getLogger(Logger.class);

    @Autowired
    MineDao mineDao;

    @Override
    public String getAbout() {
        try {
            return mineDao.getAbout();
        } catch (Exception e) {
            logger.error(e.getCause().toString());
        }
        return null;
    }

    @Override
    public String getCopyright() {
        try {
            return mineDao.getCopyright();
        } catch (Exception e) {
            logger.error(e.getCause().toString());
        }
        return null;
    }
}
