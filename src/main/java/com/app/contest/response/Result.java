package com.app.contest.response;

public enum Result {
    SUCCESS(0, "success"),
    ERROR(-1, "failed"),
    UPLOAD_FAILED(400, "upload failed");
    private final int code;
    private final String msg;

    Result(int code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public int getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }
}

