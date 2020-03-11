package com.app.contest.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ContestDTO {
    private Integer contestId;
    private String contestName;
    private String author;
    private String contestApplyTime;
    private String contestApplyEndTime;
    private String contestAddress;
    private String contactUser;
    private String contactPhone;
    private String contestStartTime;
    private String contestEndTime;
    private String contestCooperation;
    private String contestIntroduce;
    private String contestReward;
    private String contestApplyRule;
    private String contestProcess;
    private String contestInfo;
    private String contestThumb;
}
