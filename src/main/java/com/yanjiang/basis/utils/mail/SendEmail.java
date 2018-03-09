package com.yanjiang.basis.utils.mail;

import com.yanjiang.basis.utils.Utils;

import javax.mail.MessagingException;
import javax.mail.Session;
import java.io.IOException;

/**
 * Created by dllo on 18/2/3.
 */
public class SendEmail implements Utils {


    /**
     * 发送邮件使用线程发送
     * (测试时, 因为主函数停止后线程也会停止, 所以不能用线程测试)
     */
    @Override
    public void useSendMail(String email, String username, String message){

        new Thread(() -> sendMail(email, username, message)).start();

    }


    /**
     * 发送邮件
     *
     * @param email    收件人的邮箱
     * @param username 收件人的用户名
     * @param message 如果 message = new 直接发送 你有一条新的消息
     *                message 不为 new  请传入要发送的消息内容
     */
    private void sendMail(String email, String username, String message) {

//        new Thread(new Runnable() {
//            public void run() {
//                try {
//                    Thread.sleep(10000);    // 为了让用户充钱后感到满意的速度
//                } catch (InterruptedException e) {
//                    e.printStackTrace();
//                }
//            }
//        }).start();

        String mess = "";


        if (message.equals("new")) {

            mess = "你有一条新的消息";

        }else {

            mess = message;

        }

        try {
//            为邮件发送中填写发件邮箱和发件邮箱的规格
            Session session = MailUtils.createSession("smtp.163.com", "15842209819@163.com", "xxl101354@");

//            通过拼接字符串的给邮箱发送邮件
            Mail mail = new Mail("15842209819@163.com", email, "YJ Company",

                    "<div style=\"background: #17212e\">" + "<div style=\"padding-top: 32px\"></div>" +
                            "<div style=\"padding-left: 15px; font-family: Helvetica, Arial, sans-serif;font-size: 24px;color: #66c0f4;font-weight: bold;\">" +
                            "Hello  " + username + "</div>" +
                            "<div style=\"color: #c6d4df; font-size: 15px; padding-left: 30px\">" + mess + "</div>" +
                            "<div style=\"color: #c6d4df; font-size: 15px; padding-left: 30px\">" + "你可以登录你的业务平台. " +
                            "<a href='http://localhost:8080'>here.</a>" + "</div>" + "<div style=\"padding-bottom: 100px\"></div>" + "</div>");
            MailUtils.send(session, mail);
        } catch (MessagingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

}
