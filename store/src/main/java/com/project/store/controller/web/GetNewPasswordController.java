package com.project.store.controller.web;

import com.project.store.model.UserModel;
import com.project.store.service.IUserService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Timestamp;

@WebServlet(name = "GetNewPasswordController)", urlPatterns = "/getNewPassword")
public class GetNewPasswordController extends HttpServlet {

    @Inject
    private IUserService userService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String code = request.getParameter("code");
        String password = request.getParameter("password");
        String username = (String) request.getSession().getAttribute("username");
        UserModel user = userService.findByUserName(username);
        long end = System.currentTimeMillis();
        long start = (long) (request.getSession().getAttribute("start"));
        long during = end - start;
        if(code.equals(user.getCode())){
            userService.updateNewPassword(user.getUsername(), password);
            response.sendRedirect(request.getContextPath() + "/login");
        }else if(during >= 300000){
            response.sendRedirect(request.getContextPath() + "/forgotPassword");
        }else{
            response.sendRedirect(request.getContextPath() + "/getNewPassword");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        RequestDispatcher dispatcher = request.getRequestDispatcher("views/web/new-password.jsp");
        dispatcher.forward(request, response);
    }
}

