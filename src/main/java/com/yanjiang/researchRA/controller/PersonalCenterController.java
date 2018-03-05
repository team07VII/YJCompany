package com.yanjiang.researchRA.controller;

import com.yanjiang.researchRA.service.PersonalCenterService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * Created by dllo on 18/3/5.
 */
@Controller
@RequestMapping("researchRA/")
public class PersonalCenterController {

    @Resource
    private PersonalCenterService personalCenterService;

    @RequestMapping("RightBody_Welcome")
    private String selectAllPersonalCenter(){
        personalCenterService.selectAllPersonalCenter();
        return "";
    }



}
