package com.app.contest.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class TeamInfo {
    private Integer teamId;
    private String openId;
    private String teamName;
    private Integer contestId;

    public TeamInfo() {
    }

    public TeamInfo(String openId, String teamName, Integer contestId) {
        this.openId = openId;
        this.teamName = teamName;
        this.contestId = contestId;
    }
}
