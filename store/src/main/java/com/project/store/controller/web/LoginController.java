package com.project.store.controller.web;

import com.project.store.model.UserModel;
import com.project.store.service.IUserService;
import com.project.store.service.impl.UserService;

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

@WebServlet(name = "LoginController)", urlPatterns = "/login")
public class LoginController extends HttpServlet {
    @Inject
    private IUserService userService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        UserModel userModel = userService.findByUsername(username);
        if(userModel != null){
            if(userModel.getPassword().equals(password)){
                HttpSession session = request.getSession();
                session.setAttribute("user", userModel);
                response.sendRedirect("home");
            }else{
                response.sendRedirect("login");
            }
        }else{

            response.sendRedirect("login");

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/login.jsp");
        rd.forward(request, response);
    }
}

