package com.app.contest.utils;

import java.time.LocalDateTime;
import java.time.ZoneOffset;

public class TeamIdUtils {
    public static String generateTeamId() {
        return String.valueOf(LocalDateTime.now().toInstant(ZoneOffset.of("+8")).toEpochMilli());
    }
}
