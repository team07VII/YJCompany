package com.yanjiang.basis.test;


import com.yanjiang.basis.utils.mail.MailUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
  * Created by dllo on 18/3/26.
 */
@RunWith(SpringJUnit4ClassRunner.class)//@RunWith(SpringJUnit4ClassRunner.class) 来启动 Spring 对测试类的支持
@ContextConfiguration(locations = {"classpath*:spring-mail.xml"})//@ContextConfiguration 注释标签来指定 Spring 配置文件或者配置类的位置
public class Mailtest {
    private static final Logger log = LoggerFactory.getLogger(Mailtest.class);

    @Resource
    private MailUtil mailUtil;

    @Test
    public void sendSingleTest(){
        log.info("sendSingleTest");
        mailUtil.send("615973075@qq.com", "This is a test single mail", "Hello Single!");
    }

    @Test
    public void sendMassTest(){
        log.info("sendMassTest");
        List<String> recipients=new ArrayList<String>();
        recipients.add("xx@sina.com");
        recipients.add("xx@qq.com");
        mailUtil.send(recipients, "This is a test mass mail", "Hello Mass!");
    }
}

