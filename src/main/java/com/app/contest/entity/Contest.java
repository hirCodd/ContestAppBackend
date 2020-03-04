package com.app.contest.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.stereotype.Component;

@Component
@Getter
@Setter
@ToString
public class Contest {
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
    private String publishTime;
}
