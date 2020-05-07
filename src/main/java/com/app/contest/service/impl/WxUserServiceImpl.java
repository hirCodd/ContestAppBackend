package com.app.contest.service.impl;


import com.app.contest.dao.WxUserDao;
import com.app.contest.entity.WxUser;
import com.app.contest.pojo.WxConfig;
import com.app.contest.service.WxUserService;
import com.app.contest.utils.SslUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.net.MalformedURLException;
import java.net.URL;

@Service
public class WxUserServiceImpl implements WxUserService {
    private Logger logger = LoggerFactory.getLogger(Logger.class);

    @Autowired
    WxConfig wxConfig;

    @Autowired
    RestTemplate restTemplate;

    @Autowired
    WxUserDao wxUserDao;

    @Override
    public String getUserInfo(String code) {

        String url = "https://api.weixin.qq.com/sns/jscode2session?appid="
                + wxConfig.getAppId() + "&secret=" + wxConfig.getSecret()
                + "&js_code="+code + "&grant_type="+wxConfig.getAuthCode();
        logger.info("this url:" + url);
        URL realUrl = null;
        try {
            realUrl = new URL(url);
            if("https".equalsIgnoreCase(realUrl.getProtocol())){
                SslUtils.ignoreSsl();
            }
        } catch (Exception e) {
            logger.error(e.toString());
        }
        ResponseEntity<String> response = restTemplate.getForEntity(String.valueOf(realUrl), String.class);

        logger.info(response.toString());
        return response.getStatusCode() == HttpStatus.OK ? response.getBody() : null;
    }

    @Override
    public Integer queryUserOpenId(String openId) {
        try {
            return wxUserDao.queryUserIdByOpenId(openId);
        } catch (Exception e) {
            logger.error(e.getCause().toString());
        }
        return null;
    }

    @Override
    public boolean insertWxUser(WxUser wxUser) {
        try {
            return wxUserDao.insertWxUser(wxUser);
        } catch (Exception e) {
            logger.error(e.toString());
        }
        return false;
    }
}
