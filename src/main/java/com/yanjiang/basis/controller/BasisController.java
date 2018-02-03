package com.yanjiang.basis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by dllo on 18/2/2.
 */
@Controller
public class BasisController {

    @RequestMapping("/")
    public String home() {
        return "index";
    }

    @RequestMapping("/home")
    public String main(){
        return "main";
    }

    @RequestMapping("/error")
    public String error(){
        return "error";
    }

    @RequestMapping("RightBody_Welcome")
    public String welcome(){
        return "RightBody_Welcome";
    }

}
