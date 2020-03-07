package com.app.contest.service;

import com.app.contest.entity.WxUser;

public interface WxUserService {
    String getUserInfo(String code);

    Integer queryUserOpenId(String openId);

    boolean insertWxUser(WxUser wxUser);

}
