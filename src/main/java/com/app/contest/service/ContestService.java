package com.app.contest.service;

import com.app.contest.entity.Contest;
import com.app.contest.entity.ContestMember;
import com.app.contest.entity.TeamInfo;
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
     * 更新比赛
     * @param contest
     * @return
     */
    Boolean updateContest(Contest contest);

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

    Integer queryTeamInfoResult(Integer contestId, String openId);

    /**
     * 查询所有名字
     * @param contestId
     * @return
     */
    List<String> queryTeamNameList(Integer contestId);

    /**
     * 插入队伍信息
     * @param teamInfo 插入队伍信息
     * @return 队伍id
     */
    Integer insertTeamInfo(TeamInfo teamInfo);

    List<Contest> queryMyContestApply(String openId);

    /**
     * 通过关键字查询文章
     * @param keyword
     * @return
     */
    List<Contest> getContestByKeyword(String keyword);
}
