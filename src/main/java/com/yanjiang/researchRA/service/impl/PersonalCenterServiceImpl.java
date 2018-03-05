package com.yanjiang.researchRA.service.impl;

import com.yanjiang.researchRA.domain.PersonalCenter;
import com.yanjiang.researchRA.mapper.PersonalCenterMapper;
import com.yanjiang.researchRA.service.PersonalCenterService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dllo on 18/3/5.
 */
@Service("personalCenterService")
public class PersonalCenterServiceImpl implements PersonalCenterService {

    @Resource
    private PersonalCenterMapper personalCenterMapper;
    @Override
    public List<PersonalCenter> selectAllPersonalCenter() {
        return personalCenterMapper.selectAllPersonalCenter();
    }
}
