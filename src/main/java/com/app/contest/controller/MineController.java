package com.app.contest.controller;

import com.app.contest.response.ResultUtils;
import com.app.contest.service.MineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/mine")
public class MineController {

    @Autowired
    MineService mineService;

    @RequestMapping(value = "/about", method = { RequestMethod.GET, RequestMethod.POST })
    public ResultUtils getAbout() {
        return ResultUtils.success(mineService.getAbout());
    }

    @RequestMapping(value = "/copyright", method = { RequestMethod.GET, RequestMethod.POST })
    public ResultUtils getCopyright() {
        return ResultUtils.success(mineService.getCopyright());
    }
}
