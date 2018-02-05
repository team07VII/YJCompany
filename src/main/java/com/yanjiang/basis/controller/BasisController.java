package com.yanjiang.basis.controller;

import com.yanjiang.basis.utils.impl.exception.AjaxLoginResult;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
    public String main(){
        return "main";
    }

//    查询是否有该用户
    @ResponseBody
    @RequestMapping("/findUser")
    public AjaxLoginResult findUser(String username, String password, Model model){

        AjaxLoginResult result = new AjaxLoginResult();

        result.setErrorCode(0);

//        System.out.println("用户名: " + username + ", 密码: " + password);

        model.addAttribute("username", username);

        if (username.equals("")){
            result.setErrorCode(500);
        }

        return result;
    }

//    查询申请人
    @RequestMapping("/selectPeople")
    public String selectPeople(){

        System.out.println("selectPeople");

        return "page/SelectPeople";
    }

//    报错页面的跳转
    @RequestMapping("/error")
    public String error(){
        return "error";
    }

//    个人页面首页的右侧部门
    @RequestMapping("page/RightBody_Welcome")
    public String welcome(){
        return "page/RightBody_Welcome";
    }

//    登录页面
    @RequestMapping("login")
    public String login(){
        return "login";
    }


}
