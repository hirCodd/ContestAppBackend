package com.app.contest.service;

import com.app.contest.entity.Contest;
import com.app.contest.entity.ContestMember;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface ContestService {
    /**
     * 插入竞赛信息
     * @param contest 竞赛信息
     * @return true or false
     */
    Boolean insertContest(Contest contest);

    /**
     * 获取所有比赛
     * @return 所有文章
     */
    List<Contest> getAllContests();

    /**
     *
     * @param pageNum 页数
     * @param pageSize 每页多少数目
     * @return 分页后的文章
     */
    PageInfo<Contest> getPaginationContest(Integer pageNum, Integer pageSize);

    /**
     * 获取内容
     * @param contestId
     * @return
     */
    Contest getContestById(Integer contestId);

    Boolean insertContestMember(List<ContestMember> contestMembers);

    /**
     * 查询比赛结果
     * @param contestId 比赛id
     * @param openId openid
     * @return true or false
     */
    Boolean queryApplyResult(Integer contestId, String openId);
}
