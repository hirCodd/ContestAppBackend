package com.app.contest.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class TeamRequestDTO {
    private String openId;
    private String teamName;
    private Integer contestId;
}
