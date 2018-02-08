package com.yanjiang.basis.utils.shiro;


import com.yanjiang.yjStaff.service.YjStaffService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import javax.annotation.Resource;

/**
 * Created by dllo on 17/12/1.
 */
public class PerRealm extends AuthorizingRealm {

//    提供数据库 用户, 角色, 权限 查询的业务对象
    @Resource
    private YjStaffService yjStaffService;

//    @Override
//    public String getName() {
//        return "myPermissionRealm";
//    }
//
//    @Override
//    public boolean supports(AuthenticationToken token) {
//        return token instanceof UsernamePasswordToken;
//    }

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {

//        授权方法

//        1. 认证的结果: 取出的User实体类/用户名
        String username = (String) principalCollection.getPrimaryPrincipal();

//        2. 根据用户名查询角色列表
//        Set<String> roles = userService.getRoles(username);

//        3. 根据用户名查询权限列表
//        Set<String> permissions = userService.getPermissions(username);

//        =======> 下面为模拟代码: <======

//        List<String> roleList = new ArrayList<String>();
//        roleList.add("CEO");
//        roleList.add("HR");
//
//        List<String> perList = new ArrayList<String>();
//        perList.add("user:create");
//        perList.add("user:query");
//        =======> 模拟结束 <======

//        4. 将获取的角色和权限都统一起来

        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
//        info.setRoles(roles);
//        info.setStringPermissions(permissions);


        return info;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {

        //        获得用户此次输入的用户名
        String username = (String) authenticationToken.getPrincipal();

//        获取用户输入的密码
        String password = new String((char[]) authenticationToken.getCredentials());

//        User user = userService.selectByUserName(username);

//        如果能查找 则返回一个认证器对象
//        if (user == null){
//            throw new UnknownAccountException("用户名不存在");
//        }


//        此处应该拿username去数据库查询, 是否存在该用户

//        =======> 下面为模拟代码: <======
//        if (!"wangwu".equals(username)){
//            throw new UnknownAccountException("用户名不存在");
//        }
//        =======> 模拟结束 <======

//        =======> 下面为模拟代码: <======
//        if (!"1234".equals(password)){
//            throw new IncorrectCredentialsException("密码错误");
//        }
//        =======> 模拟结束 <======


//        返回认证成功的信息
//        return new SimpleAuthenticationInfo(user.getUserName(), user.getPassword(), getName());
        return new SimpleAuthenticationInfo(username, username, getName());

    }
}
