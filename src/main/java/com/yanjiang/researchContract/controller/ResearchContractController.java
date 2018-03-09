package com.yanjiang.researchContract.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by dllo on 18/2/5.
 */
@Controller
@RequestMapping("researchContract/")
public class ResearchContractController {

    @RequestMapping("techonologyContractApply")
    public String techonologyContractApply(){
        return "researchContract/techonologyContractApply";
    }
    @RequestMapping("managerApproval")
    public String personalWorkbenchComplete(){
        return "researchContract/managerApproval";
    }


}
