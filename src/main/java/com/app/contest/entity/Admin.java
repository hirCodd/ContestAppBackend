package com.app.contest.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@ToString
public class Admin {
    private Integer id;
    private String loginName;
    private String password;
    private Date loginTime;
    private String type;
}
