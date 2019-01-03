package com.gta.ae86.dao;

import com.gta.ae86.pojo.gtr_user;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 用户专用Mapper
 */
@Mapper
public interface gtr_userMapper {
     List<gtr_user> getUserList();
}
