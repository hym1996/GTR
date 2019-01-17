package com.gta.ae86.dao.user;

import com.gta.ae86.pojo.gtr_user;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 用户专用Mapper
 */
@Mapper
public interface gtr_userMapper {
    /**
     * 获取用户集合
     *
     * @return
     */
    List<gtr_user> getUserList();


    /**
     * 根据用户ID获取用户信息
     *
     * @param userId
     * @return
     */
    gtr_user getUserById(@Param("userId") int userId);

    /**
     * 根据用户账号获取用户信息(登录使用)
     *
     * @param account
     * @return
     */
    gtr_user login(@Param("account") String account);

    /**
     * 创建一个新用户
     *
     * @param user
     * @return
     */
    boolean addUser(gtr_user user);

    /**
     * 根据手机号修改用户账号
     *
     * @param phone
     * @param password
     * @return
     */
    boolean updatePassword(@Param("phone") String phone, @Param("password") String password);
}

