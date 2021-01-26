package com.project.store.controller.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoginFaceController)", urlPatterns = "/loginFace")
public class LoginFaceController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=utf-8");
        String action  = request.getParameter("action");

        if(action.equals("Face")){
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String id = request.getParameter("id");
            System.out.println(name +  email +  id);
            response.sendRedirect(request.getContextPath() + "/home");
        }
    }
}

