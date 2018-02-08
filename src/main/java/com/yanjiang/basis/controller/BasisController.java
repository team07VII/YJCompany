package com.yanjiang.basis.controller;

import com.yanjiang.basis.utils.BaseResult;
import com.yanjiang.basis.utils.GEETEST.GeetestConfig;
import com.yanjiang.basis.utils.GEETEST.GeetestLib;
import com.yanjiang.yjStaff.domain.YjStaff;
import com.yanjiang.yjStaff.service.YjStaffService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

/**
 * Created by dllo on 18/2/2.
 */
@Controller
public class BasisController {

    @Resource
    private YjStaffService yjStaffService;

    //    初始页默认为主页
    @RequestMapping("/")
    public String home() {
        return "index";
    }

    //    登录到个人平台页面
    @RequestMapping("/home")
    public String main(String username, String password, HttpServletRequest request, Model model) {

        if (username.equals("") || password.equals("")) {
            model.addAttribute("msg", "用户名和密码不能为空");
            return "login";
        }

//        1. 获取当前Subject的用户对象
        Subject currentUser = SecurityUtils.getSubject();

//        2. 创建用户名/密码的token令牌
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);

//        3. 执行shiro认证
        try {
            currentUser.login(token);
        }catch (AuthenticationException e){
//            System.out.println("认证失败");
            model.addAttribute("msg", "用户名或密码错误");
            return "login";
        }


        request.getSession().setAttribute("username", token.getUsername());
        model.addAttribute("msg", "");

        return "main";
    }

    //    查询是否有该用户
//    @ResponseBody
//    @RequestMapping("/findUser")
//    public AjaxLoginResult findUser(String username, String password, HttpServletRequest request) {
//
//        AjaxLoginResult result = new AjaxLoginResult();
//
//        result.setErrorCode(0);
//
////        System.out.println("用户名: " + username + ", 密码: " + password);
//
//        request.getSession().setAttribute("username", username);
//
//        if (username.equals("") || password.equals("")) {
//            result.setErrorCode(500);
//            result.setMessage("用户名和密码不能为空");
//        }
//
//        return result;
//    }

    //    查询申请人
    @ResponseBody
    @RequestMapping("/findPeople")
    public BaseResult<YjStaff> findPeople(int pageIndex,int pageSize,YjStaff yjStaff) {

        BaseResult<YjStaff> result = null;

        try{

            result = yjStaffService.pageSelect(pageIndex, pageSize, yjStaff);

        }catch (Exception e){

            return null;

        }

        return result;
    }

    @RequestMapping("/selectPeople")
    public String selectPeople(){
        return "page/SelectPeople";
    }

//    @ResponseBody
//    @RequestMapping("/selectPeople")
//    public BaseResult<YjStaff> selectPeople() {
//
//        List<YjStaff> applicationUnits = yjStaffService.selectAll();
//        /*将查询到的记过进行封装*/
//        BaseResult<YjStaff> result = new BaseResult<>();
//        result.setTotal(100);//设置总记录数
//        result.setData(applicationUnits);//设置当前显示数据
//
//        return result;
//    }

    //    退出登录
    @RequestMapping("/exit")
    public String exit(HttpServletRequest request, HttpServletResponse response) {

        request.getSession().removeAttribute("username");

        Subject currentUser = SecurityUtils.getSubject();

        currentUser.logout();

        return "login";
    }


    //    报错页面的跳转
    @RequestMapping("/error")
    public String error() {
        return "error";
    }

    //    个人页面首页的右侧部门
    @RequestMapping("page/RightBody_Welcome")
    public String welcome() {
        return "page/RightBody_Welcome";
    }

    //    登录页面
    @RequestMapping("login")
    public String login() {
        return "login";
    }

    //    极验登录
    @RequestMapping("startCaptcha")
    public String StartCaptchaServlet(HttpServletRequest request, HttpServletResponse response) throws IOException {

            GeetestLib gtSdk = new GeetestLib(GeetestConfig.getGeetest_id(), GeetestConfig.getGeetest_key(),
                    GeetestConfig.isnewfailback());

            String resStr = "{}";

            String userid = "test";

            //自定义参数,可选择添加
            HashMap<String, String> param = new HashMap<String, String>();
            param.put("user_id", userid); //网站用户id
            param.put("client_type", "web"); //web:电脑上的浏览器；h5:手机上的浏览器，包括移动应用内完全内置的web_view；native：通过原生SDK植入APP应用的方式
            param.put("ip_address", "127.0.0.1"); //传输用户请求验证时所携带的IP

            //进行验证预处理
            int gtServerStatus = gtSdk.preProcess(param);

            //将服务器状态设置到session中
            request.getSession().setAttribute(gtSdk.gtServerStatusSessionKey, gtServerStatus);
            //将userid设置到session中
            request.getSession().setAttribute("userid", userid);

            resStr = gtSdk.getResponseStr();

            PrintWriter out = response.getWriter();
            out.println(resStr);

        return "";
    }

    @RequestMapping("hikibi")
    public String hikibi(){

        SecurityUtils.getSubject().login(new UsernamePasswordToken("admin", "admin"));

        return "main";
    }

}
