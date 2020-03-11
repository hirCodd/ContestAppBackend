package com.app.contest.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;

@Getter
@Setter
@ToString
public class ContestMemberDTO implements Serializable {
    private Integer contestId;
    private String openId;
    private Integer teamId;
    private String memberName;
    private String memberPhone;
    private String contestArea;
    private String memberPlayerId;
    private String memberPlayLevel;
    private String contestOtherInfo;
    private Boolean isTeam;
    private Boolean applyResult;
}
