package com.app.contest.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@ToString
public class AdminDTO {
    private String loginName;
    private String password;
    private Date loginTime;
    private String type;
}
