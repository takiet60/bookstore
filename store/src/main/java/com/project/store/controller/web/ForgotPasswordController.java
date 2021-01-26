package com.project.store.controller.web;

import com.mysql.cj.util.StringUtils;
import com.project.store.model.UserModel;
import com.project.store.service.IUserService;
import org.apache.commons.lang3.RandomStringUtils;

import javax.inject.Inject;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Properties;

@WebServlet(name = "ForgotPasswordController)", urlPatterns = "/forgotPassword")
public class ForgotPasswordController extends HttpServlet {

    @Inject
    private IUserService userService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username1 = request.getParameter("username");
        UserModel user = userService.findByUserName(username1);
        request.getSession().setAttribute("username", username1);
        String randomPassword = RandomStringUtils.randomAlphanumeric(15, 20);
        Properties prop  = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", "587");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true");

        String username = "doubleoc1405@gmail.com";
        String password = "lxcfpdxpjwhksmma";

        if(user == null){
            response.sendRedirect(request.getContextPath() + "/forgotPassword");
        }else{
            Session session = Session.getInstance(prop,
                    new Authenticator() {
                        @Override
                        protected PasswordAuthentication getPasswordAuthentication() {
                            return new PasswordAuthentication(username, password);
                        }
                    }
            );
            Message message = new MimeMessage(session);

            try{
                message.setFrom(new InternetAddress("doubleoc1405@gmail.com","HKT Book Store"));
                message.setRecipients(Message.RecipientType.TO,
                        InternetAddress.parse(user.getEmail()));
                message.setSubject("Valid Password");
                message.setContent("Đây là mã xác nhận của bạn: " + randomPassword  + " .Vui lòng xác nhận sau 5 phút khi nhận được email", "text/html; charset=utf8");
                long start = System.currentTimeMillis();
                request.getSession().setAttribute("start", start);
                Transport.send(message);
                userService.updateCode(randomPassword, new Timestamp(start), username1);

                response.sendRedirect(request.getContextPath() + "/getNewPassword");
            }catch (MessagingException e) {
                e.printStackTrace();
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/web/forgot-password.jsp");
        dispatcher.forward(request, response);

    }

}

