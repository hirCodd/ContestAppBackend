package com.app.contest.dao;

import com.app.contest.entity.Contest;
import com.app.contest.entity.ContestMember;
import com.app.contest.entity.TeamInfo;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface ContestDao {
    Boolean insertContest(Contest contest);

    Boolean updateContest(Contest contest);

    List<Contest> getAllContests();

    Contest getContestContent(Integer contestId);

    Boolean insertContestMembers(List<ContestMember> contestMemberList);

    Boolean queryApplyResultByContestIdAndOpenId(Integer contestId, String openId);

    Integer queryTeamInfoResult(Integer contestId, String openId);

    List<String> queryTeamNames(Integer contestId);

    Integer insertTeamInfo(TeamInfo teamInfo);

    List<Contest> queryMyContestApply(String openId);

    /**
     * 通过keyword查询文章
     * @param keyword keyword
     * @return 文章列表
     */
    List<Contest> getContestByKeyword(String keyword);


}
