package com.gta.ae86.service.gtr_userService;

import com.gta.ae86.dao.gtr_userMapper;
import com.gta.ae86.pojo.gtr_user;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class gtr_userServiceimpl implements gtr_userService {

    @Resource
    private gtr_userMapper mapper;

    @Override
    public List<gtr_user> getUserList() {

        return mapper.getUserList();
    }
}
