package com.yanjiang.researchRA.controller;

import com.yanjiang.basis.utils.exception.CommonUtils;
import com.yanjiang.researchRA.domain.RdmsProjBase;
import com.yanjiang.researchRA.service.RdmsProjBaseService;
import com.yanjiang.researchRA.service.RdmsProjBudgetService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

/**
 * Created by dllo on 18/2/5.
 */
@Controller
@RequestMapping("researchRA/")
public class ResearchRAController {

    @Resource
    private RdmsProjBaseService projBaseService;

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

//    工程师组织审核
    @RequestMapping("engineerApproval")
    public String engineerApproval(){
        return "researchRA/engineerApproval";
    }

//    评审小组组长填写评审意见
    @RequestMapping("teamLeaderApproval")
    public String engineerReview(){
        return "researchRA/teamLeaderApproval";
    }

//    科技办经理审批
    @RequestMapping("technologyManagerApproval")
    public String technologyManagerApproval(){
        return "researchRA/technologyManagerApproval";
    }

//      财务部审批
    @RequestMapping("financialApproval")
    public String financialApproval(){
        return "researchRA/financialApproval";
    }



//    测试数据库是否能运行
    @RequestMapping("insertGetPlanTypeEnum")
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

    @RequestMapping("insert")
    public String insert(RdmsProjBase rdmsProjBase){


        rdmsProjBase.setProjId(CommonUtils.uuid());
        System.out.println(rdmsProjBase);

        projBaseService.insert(rdmsProjBase);

        return "researchRA/projectApplyBasic";


    }

}
