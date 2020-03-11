package com.app.contest.dao;

import com.app.contest.entity.Admin;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component
public interface AdminDao {
    Admin login(String loginName);
}
