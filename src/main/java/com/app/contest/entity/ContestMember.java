package com.app.contest.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;

@Getter
@Setter
@ToString
public class ContestMember implements Serializable {
    private Integer memberId;
    private Integer contestId;
    private Integer teamId;
    private String openId;
    private String memberName;
    private String memberPhone;
    private String contestArea;
    private String memberPlayerId;
    private String memberPlayerLevel;
    private String contestOtherInfo;
    private Boolean isTeam;
    private Boolean applyResult;
}
