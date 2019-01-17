package com.gta.ae86.service.gtr_userService;

import com.gta.ae86.dao.user.gtr_userMapper;
import com.gta.ae86.pojo.gtr_user;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class gtr_userServiceimpl implements gtr_userService {

    @Resource
    private gtr_userMapper mapper;

    /**
     * 获取用户信息集合
     *
     * @return
     */
    @Override
    public List<gtr_user> getUserList() {
        return mapper.getUserList();
    }

    /**
     * 根据用户id获取用户信息
     *
     * @param userId
     * @return
     */
    @Override
    public gtr_user getUserById(int userId) {
        return mapper.getUserById(userId);
    }

    /**
     * 登录验证
     *
     * @param account
     * @param password
     * @return
     */
    @Override
    public gtr_user getLogin(String account, String password) {
        gtr_user user = mapper.login(account);
        if (null != user) {
            if (!user.getPassword().equals(password)) {
                user = null;
            }
        }
        return user;
    }

    /**
     * 添加用户
     *
     * @param user
     * @return
     */
    @Override
    public boolean addUser(gtr_user user) {
        return mapper.addUser(user);
    }

    @Override
    public boolean updatePassword(String phone, String password) {
        return mapper.updatePassword(phone, password);
    }
}
