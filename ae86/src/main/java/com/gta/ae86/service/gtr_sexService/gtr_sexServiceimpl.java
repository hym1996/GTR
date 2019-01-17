package com.gta.ae86.service.gtr_sexService;

import com.gta.ae86.dao.sex.gtr_sexMapper;
import com.gta.ae86.pojo.gtr_sex;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class gtr_sexServiceimpl implements gtr_sexService {

    @Resource
    private gtr_sexMapper mapper;

    @Override
    public gtr_sex getUserSex(String gender) {

        return mapper.getUserSex(gender);
    }
}
