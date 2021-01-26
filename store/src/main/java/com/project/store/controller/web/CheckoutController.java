package com.project.store.controller.web;

import com.project.store.model.CartModel;
import com.project.store.model.ItemModel;
import com.project.store.model.UserModel;
import com.project.store.service.IProductService;

import javax.inject.Inject;
import javax.mail.*;
import javax.mail.internet.AddressException;
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
import java.util.Properties;

@WebServlet(name = "CheckoutController)", urlPatterns = "/checkout")
public class CheckoutController extends HttpServlet {

    @Inject
    private IProductService productService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        UserModel user = (UserModel) request.getSession().getAttribute("USERMODEL");
        CartModel cartModel = CartModel.getCart(request.getSession());

        if(user != null && cartModel != null){
            long id = productService.saveOrder(cartModel, user);
            productService.saveDetailOrder(cartModel, id);
            Properties prop  = new Properties();
            prop.put("mail.smtp.host", "smtp.gmail.com");
            prop.put("mail.smtp.port", "587");
            prop.put("mail.smtp.auth", "true");
            prop.put("mail.smtp.starttls.enable", "true");

            String username = "doubleoc1405@gmail.com";
            String password = "lxcfpdxpjwhksmma";

            if(user == null){
                response.sendRedirect(request.getContextPath() + "/checkout");
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
                    message.setSubject("Submit order");
                    message.setContent(cartModel.printItem() + "\nCảm ơn bạn đã đồng hành cùng với shop.", "text/html; charset=utf8");
                    Transport.send(message);
                    response.sendRedirect(request.getContextPath() + "/home");
                }catch (MessagingException e) {
                    e.printStackTrace();
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
                cartModel.remove(request.getSession());
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/checkout.jsp");
        rd.forward(request, response);
    }

}

