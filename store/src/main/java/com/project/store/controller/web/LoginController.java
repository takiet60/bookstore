package com.project.store.controller.web;

import com.project.store.model.UserModel;
import com.project.store.service.ICategoryService;
import com.project.store.service.IUserService;
import com.project.store.service.impl.UserService;
import com.project.store.utils.SessionUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ResourceBundle;

@WebServlet(name = "LoginController)", urlPatterns = "/login")
public class LoginController extends HttpServlet {
    @Inject
    private IUserService userService;

    @Inject
            private ICategoryService categoryService;

    ResourceBundle myBunble = ResourceBundle.getBundle("message");

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        UserModel userModel = userService.findByUserNameAndPassWordAndStatus(username, password);
        if(userModel != null){
            SessionUtil.getInstance().putValue(request,"USERMODEL", userModel);
            if(userModel.getRoleModel().getCode().equals("USER")){
                response.sendRedirect(request.getContextPath() + "/home");
            }else if(userModel.getRoleModel().getCode().equals("ADMIN")){
                response.sendRedirect(request.getContextPath() + "/admin-home");
            }
        }else{
            response.sendRedirect(request.getContextPath() + "/login?message=username_password_invalid&alert=danger");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        String message = request.getParameter("message");
        String alert = request.getParameter("alert");
        if(message != null && alert != null){
            request.setAttribute("message", myBunble.getString(message));
            request.setAttribute("alert", myBunble.getString(alert));
        }
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/login.jsp");
        rd.forward(request, response);
    }
}

