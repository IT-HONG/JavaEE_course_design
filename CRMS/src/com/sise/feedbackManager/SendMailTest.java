package com.sise.feedbackManager;

import java.io.File; 
import java.io.FileInputStream; 
import java.io.FileNotFoundException; 
import java.io.FileOutputStream; 
import java.io.IOException; 
import java.io.InputStream; 
import java.util.Date; 
import java.util.Properties; 
 
import javax.activation.DataHandler; 
import javax.activation.DataSource; 
import javax.activation.FileDataSource; 
import javax.mail.Address; 
import javax.mail.Authenticator; 
import javax.mail.Message; 
import javax.mail.Message.RecipientType; 
import javax.mail.MessagingException; 
import javax.mail.PasswordAuthentication; 
import javax.mail.Session; 
import javax.mail.Transport; 
import javax.mail.internet.InternetAddress; 
import javax.mail.internet.MimeBodyPart; 
import javax.mail.internet.MimeMessage; 
import javax.mail.internet.MimeMultipart; 
import javax.mail.internet.MimeUtility; 
 
/**
 * ʹ��SMTPЭ�鷢�͵����ʼ�
*/ 
public class SendMailTest { 
     
    // �ʼ�����Э�� 
    private final static String PROTOCOL = "smtp"; 
     
    // SMTP�ʼ������� 
    private final static String HOST = "smtp.sina.com"; 
     
    // SMTP�ʼ�������Ĭ�϶˿� 
    private final static String PORT = "25"; 
     
    // �Ƿ�Ҫ�������֤ 
    private final static String IS_AUTH = "true"; 
     
    // �Ƿ����õ���ģʽ�����õ���ģʽ�ɴ�ӡ�ͻ�����������������ʱһ��һ�����Ӧ��Ϣ�� 
    private final static String IS_ENABLED_DEBUG_MOD = "true"; 
     
    // ������ 
    private static String from = "tandal@sina.cn"; 
 
    // �ռ��� 
    private static String to = "986290176@qq.com"; 
     
    // ��ʼ�������ʼ��������ĻỰ��Ϣ 
    private static Properties props = null; 
     
    static { 
        props = new Properties(); 
        props.setProperty("mail.transport.protocol", PROTOCOL); 
        props.setProperty("mail.smtp.host", HOST); 
        props.setProperty("mail.smtp.port", PORT); 
        props.setProperty("mail.smtp.auth", IS_AUTH); 
        props.setProperty("mail.debug",IS_ENABLED_DEBUG_MOD); 
    } 
 
    public static void main(String[] args) throws Exception { 
        // �����ı��ʼ� 
        sendTextEmail(); 
         
        // ���ͼ򵥵�html�ʼ� 
        //sendHtmlEmail(); 
         
        // ���ʹ���ǶͼƬ��HTML�ʼ� 
        //sendHtmlWithInnerImageEmail(); 
         
        // ���ͻ������ʼ� 
        //sendMultipleEmail(); 
         
        // �����Ѿ���ɵ�eml�ʼ� 
        //sendMailForEml(); 
    } 
     
    /**
     * ���ͼ򵥵��ı��ʼ�
    */ 
    public static void sendTextEmail() throws Exception { 
        // ����Sessionʵ����� 
        Session session = Session.getDefaultInstance(props); 
         
        // ����MimeMessageʵ����� 
        MimeMessage message = new MimeMessage(session); 
        // ���÷����� 
        message.setFrom(new InternetAddress(from)); 
        // �����ʼ����� 
        message.setSubject("ʹ��javamail���ͼ��ı��ʼ�"); 
        // �����ռ��� 
        message.setRecipient(RecipientType.TO, new InternetAddress(to)); 
        // ���÷���ʱ�� 
        message.setSentDate(new Date()); 
        // ���ô��ı�����Ϊ�ʼ����� 
        message.setText("ʹ��POP3Э�鷢���ı��ʼ�����!!!"); 
        // ���沢������յ��ʼ����� 
        message.saveChanges(); 
         
        // ���Transportʵ����� 
        Transport transport = session.getTransport(); 
        // ������ 
        transport.connect("tandal", "vj5097610"); 
        // ��message���󴫵ݸ�transport���󣬽��ʼ����ͳ�ȥ 
        transport.sendMessage(message, message.getAllRecipients()); 
        // �ر����� 
        transport.close(); 
    } 
     
    /**
     * ���ͼ򵥵�html�ʼ�
    */ 
    public static void sendHtmlEmail() throws Exception { 
        // ����Sessionʵ����� 
        Session session = Session.getInstance(props, new MyAuthenticator()); 
         
        // ����MimeMessageʵ����� 
        MimeMessage message = new MimeMessage(session); 
        // �����ʼ����� 
        message.setSubject("html�ʼ�����"); 
        // ���÷����� 
        message.setFrom(new InternetAddress(from)); 
        // ���÷���ʱ�� 
        message.setSentDate(new Date()); 
        // �����ռ��� 
        message.setRecipients(RecipientType.TO, InternetAddress.parse(to)); 
        // ����html����Ϊ�ʼ����ģ�ָ��MIME����Ϊtext/html���ͣ���ָ���ַ����Ϊgbk 
        message.setContent("<span style='color:red;'>html�ʼ�����...</span>","text/html;charset=gbk"); 
         
        // ���沢������յ��ʼ����� 
        message.saveChanges(); 
         
        // �����ʼ� 
        Transport.send(message); 
    } 
     
    /**
     * ���ʹ���ǶͼƬ��HTML�ʼ�
    */ 
    public static void sendHtmlWithInnerImageEmail() throws MessagingException { 
        // ����Sessionʵ����� 
        Session session = Session.getDefaultInstance(props, new MyAuthenticator()); 
         
        // �����ʼ����� 
        MimeMessage message = new MimeMessage(session); 
        // �ʼ�����,��ָ�������ʽ 
        message.setSubject("����ǶͼƬ��HTML�ʼ�", "utf-8");     
        // ������ 
        message.setFrom(new InternetAddress(from)); 
        // �ռ��� 
        message.setRecipients(RecipientType.TO, InternetAddress.parse(to)); 
        // ���� 
        message.setRecipient(RecipientType.CC, new InternetAddress("java_test@sohu.com")); 
        // ���� (�������ʼ��ռ���������ʾ����) 
        message.setRecipient(RecipientType.BCC, new InternetAddress("417067629@qq.com")); 
        // ����ʱ�� 
        message.setSentDate(new Date()); 
         
        // ����һ��MIME������Ϊ��related����MimeMultipart���� 
        MimeMultipart mp = new MimeMultipart("related"); 
        // ����һ����ʾ���ĵ�MimeBodyPart���󣬲�������뵽ǰ�洴����MimeMultipart������ 
        MimeBodyPart htmlPart = new MimeBodyPart(); 
        mp.addBodyPart(htmlPart); 
        // ����һ����ʾͼƬ��Դ��MimeBodyPart���󣬽�������뵽ǰ�洴����MimeMultipart������ 
        MimeBodyPart imagePart = new MimeBodyPart(); 
        mp.addBodyPart(imagePart); 
         
        // ��MimeMultipart��������Ϊ����ʼ������� 
        message.setContent(mp); 
         
        // ������ǶͼƬ�ʼ��� 
        DataSource ds = new FileDataSource(new File("resource/firefoxlogo.png")); 
        DataHandler dh = new DataHandler(ds); 
        imagePart.setDataHandler(dh); 
        imagePart.setContentID("firefoxlogo.png");  // �������ݱ��,���������ʼ������� 
         
        // ����һ��MIME������Ϊ"alternative"��MimeMultipart���󣬲���Ϊǰ�洴����htmlPart������ʼ����� 
        MimeMultipart htmlMultipart = new MimeMultipart("alternative"); 
        // ����һ����ʾhtml���ĵ�MimeBodyPart���� 
        MimeBodyPart htmlBodypart = new MimeBodyPart(); 
        // ����cid=androidlogo.gif�������ʼ��ڲ���ͼƬ����imagePart.setContentID("androidlogo.gif");��������ͼƬ 
        htmlBodypart.setContent("<span style='color:red;'>���Ǵ���ǶͼƬ��HTML�ʼ�Ŷ������<img src=\"cid:firefoxlogo.png\" /></span>","text/html;charset=utf-8"); 
        htmlMultipart.addBodyPart(htmlBodypart); 
        htmlPart.setContent(htmlMultipart); 
         
        // ���沢������յ��ʼ����� 
        message.saveChanges(); 
         
        // �����ʼ� 
        Transport.send(message); 
    } 
     
    /**
     * ���ʹ���ǶͼƬ�����������ռ���(��ʾ��������)���ʼ����ȼ����Ķ���ִ�������HTML�ʼ�
    */ 
    public static void sendMultipleEmail() throws Exception { 
        String charset = "utf-8";   // ָ�����ı����ʽ 
        // ����Sessionʵ����� 
        Session session = Session.getInstance(props,new MyAuthenticator()); 
         
        // ����MimeMessageʵ����� 
        MimeMessage message = new MimeMessage(session); 
        // �������� 
        message.setSubject("ʹ��JavaMail���ͻ��������͵��ʼ�����"); 
        // ���÷����� 
        message.setFrom(new InternetAddress(from,"���˲�������",charset)); 
        // �����ռ��� 
        message.setRecipients(RecipientType.TO,  
                new Address[] { 
                // ����1�������ַ������2�������ڿͻ����ռ�ֻ��ʾ�������ʾ�ʼ���ַ��������3�����������ַ���� 
                new InternetAddress("java_test@sohu.com", "����_sohu", charset), 
                new InternetAddress("xyang0917@163.com", "����_163", charset), 
            } 
        ); 
        // ���ó��� 
        message.setRecipient(RecipientType.CC, new InternetAddress("xyang0917@gmail.com","����_gmail",charset)); 
        // �������� 
        message.setRecipient(RecipientType.BCC, new InternetAddress("xyang0917@qq.com", "����_QQ", charset)); 
        // ���÷���ʱ�� 
        message.setSentDate(new Date()); 
        // ���ûظ���(�ռ��˻ظ����ʼ�ʱ,Ĭ���ռ���) 
        message.setReplyTo(InternetAddress.parse("\"" + MimeUtility.encodeText("����") + "\" <417067629@qq.com>")); 
        // �������ȼ�(1:����   3:��ͨ    5:��) 
        message.setHeader("X-Priority", "1"); 
        // Ҫ���Ķ���ִ(�ռ����Ķ��ʼ�ʱ����ʾ�ظ�������,�����ʼ����յ�,�����Ķ�) 
        message.setHeader("Disposition-Notification-To", from); 
         
        // ����һ��MIME������Ϊ"mixed"��MimeMultipart���󣬱�ʾ����һ����������͵��ʼ� 
        MimeMultipart mailContent = new MimeMultipart("mixed");  
        message.setContent(mailContent); 
         
        // ���� 
        MimeBodyPart attach1 = new MimeBodyPart(); 
        MimeBodyPart attach2 = new MimeBodyPart(); 
        // ���� 
        MimeBodyPart mailBody = new MimeBodyPart(); 
         
        // ��������������ӵ��ʼ����� 
        mailContent.addBodyPart(attach1); 
        mailContent.addBodyPart(attach2); 
        mailContent.addBodyPart(mailBody); 
         
        // ����1(����jaf��ܶ�ȡ���Դ����ʼ���) 
        DataSource ds1 = new FileDataSource("resource/Earth.bmp"); 
        DataHandler dh1 = new DataHandler(ds1); 
        attach1.setFileName(MimeUtility.encodeText("Earth.bmp")); 
        attach1.setDataHandler(dh1); 
         
        // ����2 
        DataSource ds2 = new FileDataSource("resource/���ѧ��C����.txt"); 
        DataHandler dh2 = new DataHandler(ds2); 
        attach2.setDataHandler(dh2); 
        attach2.setFileName(MimeUtility.encodeText("���ѧ��C����.txt")); 
         
        // �ʼ�����(��ǶͼƬ+html�ı�) 
        MimeMultipart body = new MimeMultipart("related");  //�ʼ�����Ҳ��һ�������,��Ҫָ����Ϲ�ϵ 
        mailBody.setContent(body); 
         
        // �ʼ�������html��ͼƬ���� 
        MimeBodyPart imgPart = new MimeBodyPart(); 
        MimeBodyPart htmlPart = new MimeBodyPart(); 
        body.addBodyPart(imgPart); 
        body.addBodyPart(htmlPart); 
         
        // ����ͼƬ 
        DataSource ds3 = new FileDataSource("resource/firefoxlogo.png"); 
        DataHandler dh3 = new DataHandler(ds3); 
        imgPart.setDataHandler(dh3); 
        imgPart.setContentID("firefoxlogo.png"); 
         
        // html�ʼ����� 
        MimeMultipart htmlMultipart = new MimeMultipart("alternative");  
        htmlPart.setContent(htmlMultipart); 
        MimeBodyPart htmlContent = new MimeBodyPart(); 
        htmlContent.setContent( 
                "<span style='color:red'>�������Լ���java mail���͵��ʼ�Ŷ��" + 
                "<img src='cid:firefoxlogo.png' /></span>" 
                        , "text/html;charset=gbk"); 
        htmlMultipart.addBodyPart(htmlContent); 
         
        // �����ʼ������޸� 
        message.saveChanges(); 
         
        /*File eml = buildEmlFile(message);
        sendMailForEml(eml);*/ 
         
        // �����ʼ� 
        Transport.send(message); 
    } 
     
    /**
     * ���ʼ��������eml�ļ�
    * @param message �ʼ�����
    */ 
    public static File buildEmlFile(Message message) throws MessagingException, FileNotFoundException, IOException { 
        File file = new File("c:\\" + MimeUtility.decodeText(message.getSubject())+".eml"); 
        message.writeTo(new FileOutputStream(file)); 
        return file; 
    } 
     
    /**
     * ���ͱ����Ѿ���ɺõ�email�ļ�
    */ 
    public static void sendMailForEml(File eml) throws Exception { 
        // ����ʼ��Ự 
        Session session = Session.getInstance(props,new MyAuthenticator()); 
        // ����ʼ�����,������ǰ��ɵ�eml�ļ� 
        InputStream is = new FileInputStream(eml); 
        MimeMessage message = new MimeMessage(session,is); 
        //�����ʼ� 
        Transport.send(message); 
    } 
     
    /**
     * ���ʼ��������ύ��֤��Ϣ
    */ 
    static class MyAuthenticator extends Authenticator { 
         
        private String username = "xyang0917"; 
         
        private String password = "123456abc"; 
         
        public MyAuthenticator() { 
            super(); 
        } 
 
        public MyAuthenticator(String username, String password) { 
            super(); 
            this.username = username; 
            this.password = password; 
        } 
 
        @Override 
        protected PasswordAuthentication getPasswordAuthentication() { 
             
            return new PasswordAuthentication(username, password); 
        } 
    } 
} 