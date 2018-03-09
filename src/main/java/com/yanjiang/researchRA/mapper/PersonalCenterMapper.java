package com.yanjiang.researchRA.mapper;

import com.yanjiang.researchRA.domain.PersonalCenter;

import java.util.List;

/**
 * Created by dllo on 18/3/3.
 */
public interface PersonalCenterMapper {
    //查询所有个人中心
    List<PersonalCenter> selectAllPersonalCenter();
}
