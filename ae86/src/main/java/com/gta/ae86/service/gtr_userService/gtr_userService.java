package com.gta.ae86.service.gtr_userService;

import com.gta.ae86.pojo.gtr_user;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface gtr_userService {
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
    gtr_user getUserById(int userId);

    /**
     * 根据用户账号获取用户信息
     *
     * @param account
     * @return
     */
    gtr_user getLogin(String account, String password);

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
    boolean updatePassword(String phone, String password);
}
