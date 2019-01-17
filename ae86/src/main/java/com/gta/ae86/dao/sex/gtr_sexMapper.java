package com.gta.ae86.dao.sex;

import com.gta.ae86.pojo.gtr_sex;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * 用户性别专用mapper
 */

@Mapper
public interface gtr_sexMapper {

    /**
     * 根据用户性别获取性别
     * @param gender
     * @return
     */
     gtr_sex getUserSex(@Param("gender") String gender);
}
