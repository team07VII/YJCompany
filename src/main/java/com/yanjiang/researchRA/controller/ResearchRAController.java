package com.yanjiang.researchRA.controller;

import com.yanjiang.researchRA.service.RdmsProjBudgetService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * Created by dllo on 18/2/5.
 */
@Controller
@RequestMapping("researchRA/")
public class ResearchRAController {

    @Resource
    private RdmsProjBudgetService projBudgetService;

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

//    测试数据库是否能运行
    @RequestMapping("GetPlanTypeEnum")
    public String GetPlanTypeEnum(){

//        System.out.println("zheli");

//        RdmsProjBudget projBudget = new RdmsProjBudget("123", "123", "123", "123", 12.8);

//        projBudgetService.insert(projBudget);

        return "";
    }

    @RequestMapping("departmentManagerApproval")
    public String departmentManagerApproval(){
        return "researchRA/departmentManagerApproval";
    }

}
