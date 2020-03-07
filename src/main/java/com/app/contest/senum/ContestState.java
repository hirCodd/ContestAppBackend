package com.app.contest.senum;

public enum ContestState {
    NoStartApply("未开始报名"),
    CanApply("正在报名"),
    CompleteApply("报名结束"),
    WaitStartContest("等待开赛"),
    Contesting("正在比赛"),
    CompleteContest("比赛结束");

    private final String state;
    ContestState(String state) {
        this.state = state;
    }
    public String getState() {
        return state;
    }
}
