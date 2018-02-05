package com.yanjiang.basis.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by simone on 2018/2/5.
 */
@Controller
public class TechonologyContractApplyController {
    @RequestMapping("techonologyContractApply")
    public String techonologyContractApply(){
        return "techonologyContractApply";
    }
}
