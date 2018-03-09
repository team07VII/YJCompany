package com.yanjiang.researchRA.controller;

import com.yanjiang.researchRA.domain.PersonalCenter;
import com.yanjiang.researchRA.service.PersonalCenterService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dllo on 18/3/5.
 */

//个人中心里数据的查询
@Controller
@RequestMapping("researchRA/")
public class PersonalCenterController {

    @Resource
    private PersonalCenterService personalCenterService;

    //查询数据
    @RequestMapping("/selectAllPersonalCenter")
    @ResponseBody
    public List<PersonalCenter> selectAllPersonalCenter(){
        List<PersonalCenter> personalCenters = personalCenterService.selectAllPersonalCenter();
        System.out.println(personalCenters);
        return personalCenters;
    }



}
