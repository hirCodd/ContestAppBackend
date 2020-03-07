package com.app.contest.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class TeamInfo {
    private String openId;
    private String teamName;
    private Integer contestId;
}
