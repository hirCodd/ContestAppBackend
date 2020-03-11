package com.app.contest.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@ToString
public class AdminVo {
    private String loginName;
    private Date loginTime;
    private String type;
}
