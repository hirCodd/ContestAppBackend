package com.app.contest.controller;

import com.app.contest.dto.ContestDTO;
import com.app.contest.dto.DelFileDTO;
import com.app.contest.entity.Contest;
import com.app.contest.response.Result;
import com.app.contest.response.ResultUtils;
import com.app.contest.service.ContestService;
import com.app.contest.utils.DateUtils;
import com.app.contest.utils.FileUploadUtils;
import com.app.contest.utils.HttpUtils;
import com.app.contest.utils.SpringContextUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;


@RestController
@RequestMapping("/api/contest")
public class ContestController {
    private Logger logger = LoggerFactory.getLogger(Logger.class);
    private static String DEV_ENVIRONMENT = "dev";
    private static String PROD_ENVIRONMENT = "prod";

    @Value("${file.dir}")
    private String fileDir;

    @Value("${images.protocol}")
    private String protocol;

    @Value("${images.domain}")
    private String domain;

    @Autowired
    ContestService contestService;

    @RequestMapping(value = "/publish", method = { RequestMethod.POST })
    public ResultUtils publishContest(@RequestBody ContestDTO contestDTO) {
        Contest contest = new Contest();
        BeanUtils.copyProperties(contestDTO, contest);
        contest.setPublishTime(DateUtils.getCurrentFullTime());
        Boolean flag = contestService.insertContest(contest);
        return flag ? ResultUtils.success() : ResultUtils.error();
    }

    @RequestMapping(value = "/upload", method = { RequestMethod.POST })
    public ResultUtils fileUpload(MultipartFile file) {
        if (file.isEmpty()) {
            return ResultUtils.error(Result.UPLOAD_FAILED);
        }
        String newName = FileUploadUtils.fileUpload(file, fileDir);
        String environment = SpringContextUtils.getActiveProfile();
        StringBuilder stringBuilder = new StringBuilder();
        //配置文件url
        if (DEV_ENVIRONMENT.equals(environment)) {
            stringBuilder.append(protocol)
                    .append("://")
                    .append(HttpUtils.getHost())
                    .append(":")
                    .append(HttpUtils.port)
                    .append("/images/")
                    .append(newName);
        } else if (PROD_ENVIRONMENT.equals(environment) && StringUtils.isEmpty(domain)) {
            stringBuilder.append(protocol)
                    .append("://")
                    .append(domain)
                    .append(":")
                    .append(HttpUtils.port)
                    .append("/images/")
                    .append(newName);
        } else {
            return ResultUtils.error();
        }
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
