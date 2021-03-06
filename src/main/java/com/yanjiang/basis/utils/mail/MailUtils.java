package com.yanjiang.basis.utils.mail;

//import com.lanou.mail.AttachBean;
//import com.lanou.mail.Mail;

import javax.mail.*;
import javax.mail.Message.RecipientType;
import javax.mail.internet.*;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;

public class MailUtils {
    public MailUtils() {
    }

    public static Session createSession(String host, final String username, final String password) {
        Properties prop = new Properties();
        prop.setProperty("mail.host", host);
        prop.setProperty("mail.smtp.auth", "true");
        Authenticator auth = new Authenticator() {
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        };
        return Session.getInstance(prop, auth);
    }

    public static void send(Session session, Mail mail) throws MessagingException, IOException {
        MimeMessage msg = new MimeMessage(session);
        msg.setFrom(new InternetAddress(mail.getFrom()));
        msg.addRecipients(RecipientType.TO, mail.getToAddress());
        String cc = mail.getCcAddress();
        if(!cc.isEmpty()) {
            msg.addRecipients(RecipientType.CC, cc);
        }

        String bcc = mail.getBccAddress();
        if(!bcc.isEmpty()) {
            msg.addRecipients(RecipientType.BCC, bcc);
        }

        msg.setSubject(mail.getSubject());
        MimeMultipart parts = new MimeMultipart();
        MimeBodyPart part = new MimeBodyPart();
        part.setContent(mail.getContent(), "text/html;charset=utf-8");
        parts.addBodyPart(part);
        List attachBeanList = mail.getAttachs();
        MimeBodyPart attachPart;
        if(attachBeanList != null) {
            for(Iterator var9 = attachBeanList.iterator(); var9.hasNext(); parts.addBodyPart(attachPart)) {
                AttachBean attach = (AttachBean)var9.next();
                attachPart = new MimeBodyPart();
                attachPart.attachFile(attach.getFile());
                attachPart.setFileName(MimeUtility.encodeText(attach.getFileName()));
                String cid = attach.getCid();
                if(cid != null) {
                    attachPart.setContentID(cid);
                }
            }
        }

        msg.setContent(parts);
        Transport.send(msg);
    }
}