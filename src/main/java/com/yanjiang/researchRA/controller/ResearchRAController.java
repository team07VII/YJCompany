package com.yanjiang.researchRA.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by dllo on 18/2/5.
 */
@Controller
@RequestMapping("researchRA/")
public class ResearchRAController {

    //    科研项目申请表单
    @RequestMapping("projectApplyBasic")
    public String projectApplyBasic(){
        return "researchRA/projectApplyBasic";
    }
    //      联合申请单位选择
    @RequestMapping("CombineUnit")
    public String CombineUnit(){
        return "researchRA/CombineUnit";
    }

    //    项目申报单位选择
    @RequestMapping("applicationUnit")
    public String applicationUnit(){
        return "researchRA/applicationUnit";
    }
    //   部门经理选择
    @RequestMapping("departmentManager")
    public String departmentManager(){
        return "researchRA/departmentManager";
    }

}
