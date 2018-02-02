//package com.yanjiang.basis.interceptor;
//
//import com.youyue.domain.Admin_info;
//import org.springframework.web.servlet.HandlerInterceptor;
//import org.springframework.web.servlet.ModelAndView;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
///**
// * Created by dllo on 17/11/25.
// */

//  登录拦截, 完成不了不做, 最后再说
//public class LoginIntercepor implements HandlerInterceptor {
//
//    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
//        String uri = request.getRequestURI();
//        if (uri.contains("login")){
//            return true;
//        }
//        Admin_info login = (Admin_info) request.getServletContext().getAttribute("login");
//        if (login == null){
//            request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request,response);
//        }
//        return true;
//    }
//
//    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
//
//    }
//
//    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {
//
//    }
//}
