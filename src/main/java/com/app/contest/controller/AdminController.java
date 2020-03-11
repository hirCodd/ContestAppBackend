package com.app.contest.controller;

import com.app.contest.entity.Admin;
import com.app.contest.response.Result;
import com.app.contest.response.ResultUtils;
import com.app.contest.service.AdminService;
import com.app.contest.vo.AdminVo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.constraints.NotNull;

@RestController
@RequestMapping("/api/admin")
public class AdminController {

    private Logger LOG = LoggerFactory.getLogger(Logger.class);

    @Autowired
    AdminService adminService;

    @RequestMapping(value = "/login", method = { RequestMethod.POST, RequestMethod.GET })
    public ResultUtils login(@RequestParam @NotNull String loginName, @RequestParam @NotNull String password) {
        Admin admin = adminService.login(loginName);
        LOG.info("admin:" + admin);
        if (admin != null && admin.getPassword().equals(password)) {
            AdminVo adminVo = new AdminVo();
            BeanUtils.copyProperties(admin, adminVo);
            return ResultUtils.success(Result.LOGIN_SUCCESS.getCode(), Result.LOGIN_SUCCESS.getMsg(), adminVo);
        } else {
            return ResultUtils.error(Result.LOGIN_FAILED.getCode(), Result.LOGIN_FAILED.getMsg());
        }
    }
}
