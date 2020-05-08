package com.app.contest.dao;

import com.app.contest.entity.Contest;
import com.app.contest.entity.ContestMember;
import com.app.contest.entity.TeamInfo;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Set;

@Mapper
@Component
public interface ContestDao {
    /**
     * 发布比赛
     * @param contest
     * @return
     */
    Boolean insertContest(Contest contest);

    /**
     * 更新比赛
     * @param contest
     * @return
     */
    Boolean updateContest(Contest contest);

    /**
     * 获取全部比赛
     * @return
     */
    List<Contest> getAllContests();

    /**
     * 获取比赛详情
     * @param contestId
     * @return
     */
    Contest getContestContent(Integer contestId);

    /**
     * 插入报名人员
     * @param contestMemberList
     * @return
     */
    Boolean insertContestMembers(List<ContestMember> contestMemberList);

    Boolean queryApplyResultByContestIdAndOpenId(Integer contestId, String openId);

    /**
     * 查询比赛队伍信息
     * @param contestId
     * @param openId
     * @return
     */
    Integer queryTeamInfoResult(Integer contestId, String openId);

    /**
     * 查询比赛队伍名
     * @param contestId
     * @return
     */
    List<String> queryTeamNames(Integer contestId);

    /**
     * 插入比赛队伍
     * @param teamInfo
     * @return
     */
    Integer insertTeamInfo(TeamInfo teamInfo);

    /**
     * 查询比赛报名结果
     * @param openId
     * @return
     */
    List<Contest> queryMyContestApply(String openId);

    /**
     * 通过keyword查询文章
     * @param keyword keyword
     * @return 文章列表
     */
    List<Contest> getContestByKeyword(String keyword);

    /**
     * 查询所有比赛成员信息
     * @param contestId
     * @return
     */
    Set<ContestMember> queryMemberByContestId(Integer contestId);

    /**
     * 插入所有排序完成的队伍
     * @param members
     * @return
     */
    Boolean insertIntoMemberResult(List<ContestMember> members);

    /**
     * 删除原有数据
     * @param delMembers
     * @return
     */
    Boolean deleteOriginData(List<ContestMember> delMembers);

    /**
     * 查询当前比赛的所有队员
     * @param contestId
     * @return
     */
    List<ContestMember> queryCurrentContestMember(Integer contestId);
}
