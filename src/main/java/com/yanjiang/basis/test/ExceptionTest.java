package com.yanjiang.basis.test;

import com.yanjiang.basis.utils.impl.exception.AllException;
import com.yanjiang.basis.utils.impl.mail.SendEmail;
import org.junit.Test;

/**
 * Created by dllo on 18/2/3.
 */
public class ExceptionTest {

    @Test
    public void exception(){

        int a = 111111;

//        String b = "333333";


            try {
                throw new AllException();
            } catch (AllException e) {
                a = 2222222;
            }


        System.out.println(a);

    }

    @Test
    public void useEmail(){

        SendEmail sendEmail = new SendEmail();

        sendEmail.useSendMail("615973075@qq.com", "youyue", "你有一条消息");

//        sendEmail.sendMail("615973075@qq.com", "youyue", "new");

    }


}
