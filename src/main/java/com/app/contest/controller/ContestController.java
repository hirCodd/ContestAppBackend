package com.app.contest.controller;

import com.app.contest.dao.ContestDao;
import com.app.contest.dto.ContestDTO;
import com.app.contest.dto.ContestMemberDTO;
import com.app.contest.dto.DelFileDTO;
import com.app.contest.dto.TeamRequestDTO;
import com.app.contest.entity.Contest;
import com.app.contest.entity.ContestMember;
import com.app.contest.entity.TeamInfo;
import com.app.contest.handler.ContestMatchThread;
import com.app.contest.response.Result;
import com.app.contest.response.ResultUtils;
import com.app.contest.service.ContestService;
import com.app.contest.utils.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.NotNull;
import java.util.*;


@RestController
@RequestMapping("/api/contest")
public class ContestController {
    private Logger logger = LoggerFactory.getLogger(Logger.class);

    @Value("${file.dir}")
    private String fileDir;

    @Value("${images.protocol}")
    private String protocol;

    @Value("${images.domain}")
    private String domain;

    @Autowired
    ContestService contestService;

    @Autowired
    ContestDao contestDao;

    @Autowired
    ContestMatchThread contestMatchThread;

    /**
     * 发布比赛
     * @param contestDTO
     * @return
     */
    @RequestMapping(value = "/publish", method = { RequestMethod.POST })
    public ResultUtils publishContest(@RequestBody ContestDTO contestDTO) {
        Contest contest = new Contest();
        BeanUtils.copyProperties(contestDTO, contest);
        contest.setPublishTime(DateUtils.getCurrentFullTime());
        Boolean flag = contestService.insertContest(contest);
        return flag ? ResultUtils.success() : ResultUtils.error();
    }

    /**
     * 更新比赛
     * @param contestDTO
     * @return
     */
    @RequestMapping(value = "/updateContest", method = { RequestMethod.POST })
    public ResultUtils updateContest(@RequestBody ContestDTO contestDTO) {
        Contest contest = new Contest();
        BeanUtils.copyProperties(contestDTO, contest);
        Boolean update = contestService.updateContest(contest);
        return update ? ResultUtils.success() : ResultUtils.error();
    }

    @RequestMapping(value = "/getContest", method = { RequestMethod.GET })
    public ResultUtils getPaginationContest(@RequestParam(defaultValue = "1") Integer pageNum,
                                            @RequestParam(defaultValue = "10") Integer pageSize) {
        return ResultUtils.success(contestService.getPaginationContest(pageNum, pageSize));
    }

    @RequestMapping(value = "/getContestDetail", method = { RequestMethod.GET })
    public ResultUtils getContestDetail(@RequestParam Integer contestId) {
        return ResultUtils.success(contestService.getContestById(contestId));
    }

    @RequestMapping(value = "/queryResult", method = { RequestMethod.GET } )
    public ResultUtils queryApplyResult(@RequestParam @NotNull Integer contestId,
                                        @RequestParam @NotNull String openId) {
        Boolean flag = contestService.queryApplyResult(contestId, openId);
        if (flag != null) {
            return flag ? ResultUtils.success(true) : ResultUtils.error();
        } else {
            return ResultUtils.error();
        }
    }

    /**
     * 查询队伍信息
     * @param contestId
     * @param openId
     * @return
     */
    @RequestMapping(value = "/queryTeamInfo", method = { RequestMethod.GET } )
    public ResultUtils queryTeamInfoResult(@RequestParam @NotNull Integer contestId,
                                        @RequestParam @NotNull String openId) {
        Integer teamId = contestService.queryTeamInfoResult(contestId, openId);
        if (teamId != null) {
            return ResultUtils.success(teamId);
        } else {
            return ResultUtils.error();
        }
    }

    @RequestMapping(value = "/queryTeamNames", method = { RequestMethod.GET } )
    public ResultUtils queryTeamNames(@RequestParam @NotNull Integer contestId) {
        List<String> nameList = contestService.queryTeamNameList(contestId);
        return nameList != null ? ResultUtils.success(nameList) : ResultUtils.error();
    }

    /**
     * 添加队伍
     * @param teamRequestDTO
     * @return
     */
    @RequestMapping(value = "/insertTeam", method = { RequestMethod.POST })
    public ResultUtils insertTeamInfo(@RequestBody TeamRequestDTO teamRequestDTO) {
        TeamInfo teamInfo = new TeamInfo();
        BeanUtils.copyProperties(teamRequestDTO, teamInfo);
        Integer flag = contestService.insertTeamInfo(teamInfo);
        return flag != -1 ? ResultUtils.success(flag) : ResultUtils.error();
    }

    /**
     * 添加队伍成员
     * @param contestMembers
     * @return
     */
    @RequestMapping(value = "/addMembers", method = { RequestMethod.POST })
    public ResultUtils insertContestMembers(@RequestBody List<ContestMemberDTO> contestMembers) {
        List<ContestMember> contestMembersList = ListUtils.listCopyProperties(ContestMember.class, contestMembers);
        Boolean flag = contestService.insertContestMember(contestMembersList);
        return flag ? ResultUtils.success() : ResultUtils.error();
    }

    /**
     * 查询我的比赛申请
     * @param openId
     * @return
     */
    @RequestMapping(value = "/queryMyContestApply", method = { RequestMethod.GET })
    public ResultUtils queryMyApply(@RequestParam String openId) {
        List<Contest> myApplyContest = contestService.queryMyContestApply(openId);
        return myApplyContest != null ? ResultUtils.success(myApplyContest) : ResultUtils.error();
    }

    /**
     * 比赛查询
     * @param keyword
     * @return
     */
    @RequestMapping(value = "/search", method = { RequestMethod.POST, RequestMethod.GET })
    public ResultUtils searchContest(@NotNull @RequestParam String keyword) {
        return ResultUtils.success(contestService.getContestByKeyword(keyword));
    }

    /**
     * 根据比赛id将所有队伍人员挑选出来
     * @param contestId
     * @return
     */
    @RequestMapping(value = "/match", method = { RequestMethod.POST, RequestMethod.GET })
    public ResultUtils matchContest(@RequestParam Integer contestId) {
        logger.info("contestId: {}", contestId);
        Set<ContestMember> memberHashSet = contestDao.queryMemberByContestId(contestId);
        List<ContestMember> contestMembers = new LinkedList<>(memberHashSet);
        contestMatchThread.addContestMember(contestMembers);
        return ResultUtils.success(contestMembers);
    }

    @RequestMapping(value = "/getMatchResult", method = { RequestMethod.POST, RequestMethod.GET })
    public ResultUtils getMatchResult(@RequestParam Integer contestId) {
        List<ContestMember> list = contestDao.queryCurrentContestMember(contestId);
        return ResultUtils.success(list);
    }

    @RequestMapping(value = "/upload", method = { RequestMethod.POST })
    public ResultUtils fileUpload(MultipartFile file) {
        if (file.isEmpty()) {
            return ResultUtils.error(Result.UPLOAD_FAILED);
        }
        String newName = FileUploadUtils.fileUpload(file, fileDir);
        StringBuilder stringBuilder = new StringBuilder();
        //配置文件url
        stringBuilder.append(protocol)
                .append("://")
                .append(domain)
                .append(":")
                .append(HttpUtils.port)
                .append("/images/")
                .append(newName);
        String url = String.valueOf(stringBuilder);
        return !newName.isEmpty() ? ResultUtils.success(url) : ResultUtils.error();
    }

    @RequestMapping(value = "/deleteImg", method = { RequestMethod.POST })
    public ResultUtils deleteFile(@RequestBody DelFileDTO delFileDTO) {
        int lastIndex = delFileDTO.getFileUrl().lastIndexOf("/");
        String fileName = delFileDTO.getFileUrl().substring(lastIndex+1);
        boolean flag = FileUploadUtils.deleteImg(fileName, fileDir);
        return flag ? ResultUtils.success() : ResultUtils.error();
    }
}
