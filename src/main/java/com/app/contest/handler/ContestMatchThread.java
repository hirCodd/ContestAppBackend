package com.app.contest.handler;

import com.app.contest.entity.ContestMember;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

@Component
public class ContestMatchThread implements Runnable {
    private Logger LOGGER = LoggerFactory.getLogger(Logger.class);

    private volatile boolean isDone = false;
    private ConcurrentHashMap<Integer, ContestMember> matchPool = new ConcurrentHashMap<>();

    @Override
    public void run() {
        synchronized (this) {
            while (!isDone) {

            }
        }


    }

    public void addContestMember(HashMap<Integer, ContestMember> contestMemberMap) {
        LOGGER.info(contestMemberMap.toString());

        synchronized (this) {
            matchPool.putAll(contestMemberMap);
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
