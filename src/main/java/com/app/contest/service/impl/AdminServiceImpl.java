package com.app.contest.service.impl;

import com.app.contest.dao.AdminDao;
import com.app.contest.entity.Admin;
import com.app.contest.service.AdminService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {
    private Logger logger = LoggerFactory.getLogger(Logger.class);
    @Autowired
    AdminDao adminDao;

    @Override
    public Admin login(String loginName) {
        try {
            return adminDao.login(loginName);
        } catch (Exception e) {
            logger.error(e.getCause().toString());
        }
        return null;
    }
}
