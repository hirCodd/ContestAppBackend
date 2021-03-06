package com.app.contest.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class WxUserDTO {
    private String openId;
    private String nickname;
    private String userThumb;
    private Integer gender;
    private String country;
    private String province;
    private String city;
}
