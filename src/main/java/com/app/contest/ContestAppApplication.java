package com.app.contest;

import com.app.contest.handler.ContestMatchThread;
import com.app.contest.utils.SpringContextUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ContestAppApplication {
    private static Logger logger = LoggerFactory.getLogger(Logger.class);




    public static void main(String[] args) {
        SpringApplication.run(ContestAppApplication.class, args);
        initThread();
        logger.info("current environment:" + SpringContextUtils.getActiveProfile());
    }

    public static void initThread() {
        ContestMatchThread contestMatchThread = SpringContextUtils.getBean(ContestMatchThread.class);
        Thread contestThread = new Thread(contestMatchThread);
        contestThread.setName("contestThread");
        contestThread.start();
    }

}
