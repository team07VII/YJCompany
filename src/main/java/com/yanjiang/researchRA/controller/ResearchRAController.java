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

    @RequestMapping("GetPlanTypeEnum")
    public String GetPlanTypeEnum(){

//        System.out.println("zheli");

//        RdmsProjBudget projBudget = new RdmsProjBudget("123", "123", "123", "123", 12.8);

//        projBudgetService.insert(projBudget);

        return "";
    }

}
