package com.app.contest.controller;

import com.app.contest.dto.VerifyUserDTO;
import com.app.contest.dto.WxUserDTO;
import com.app.contest.entity.WxUser;
import com.app.contest.response.ResultUtils;
import com.app.contest.service.WxUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.constraints.NotNull;

@RestController
@RequestMapping("/api/user")
public class WxUserController {
    private Logger logger = LoggerFactory.getLogger(Logger.class);

    @Autowired
    WxUserService wxUserService;

    /**
     * 小程序登录接口
     * @param code
     * @return
     */
    @RequestMapping("/onLogin")
    public ResultUtils getUserInfo(@NotNull @RequestParam String code) {

        return ResultUtils.success(wxUserService.getUserInfo(code));
    }

    /**
     * 小程序核验接口
     * @param verifyUserDTO
     * @return
     */
    @RequestMapping("/verify")
    public ResultUtils verifyUser(@RequestBody VerifyUserDTO verifyUserDTO) {
       return ResultUtils.success(wxUserService.queryUserOpenId(verifyUserDTO.getOpenId()));
    }

    /**
     * 小程序注册接口
     * @param wxUserDTO
     * @return
     */
    @RequestMapping("/register")
    public ResultUtils registerUser(@RequestBody WxUserDTO wxUserDTO){
        WxUser wxUser = new WxUser();
        BeanUtils.copyProperties(wxUserDTO, wxUser);
        logger.info(wxUser.toString());

        return ResultUtils.success(wxUserService.insertWxUser(wxUser));

    }
}
