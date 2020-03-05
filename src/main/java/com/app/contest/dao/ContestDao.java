package com.app.contest.dao;

import com.app.contest.entity.Contest;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface ContestDao {
    Boolean insertContest(Contest contest);


    List<Contest> getAllContests();
}
