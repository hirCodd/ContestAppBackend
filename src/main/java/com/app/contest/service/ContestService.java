package com.app.contest.service;

import com.app.contest.entity.Contest;

public interface ContestService {
    /**
     * 插入竞赛信息
     * @param contest 竞赛信息
     * @return true or false
     */
    Boolean insertContest(Contest contest);
}
