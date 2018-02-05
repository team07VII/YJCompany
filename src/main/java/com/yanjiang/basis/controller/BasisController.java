package com.yanjiang.basis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by dllo on 18/2/2.
 */
@Controller
public class BasisController {

//    初始页默认为主页
    @RequestMapping("/")
    public String home() {
        return "index";
    }

//    登录到个人平台页面
    @RequestMapping("/home")
    public String main(String username, String password){

        System.out.println("用户名: " + username + ", 密码: " + password);

        return "main";
    }

//    报错页面的跳转
    @RequestMapping("/error")
    public String error(){
        return "error";
    }

//    个人页面首页的右侧部门
    @RequestMapping("RightBody_Welcome")
    public String welcome(){
        return "RightBody_Welcome";
    }

//    登录页面
    @RequestMapping("login")
    public String login(){
        return "login";
    }


}
