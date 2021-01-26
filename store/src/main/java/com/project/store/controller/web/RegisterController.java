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
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
// lấy dữ liệu từ V đưa

@WebServlet(name = "RegisterController)", urlPatterns = "/register")


public class RegisterController extends HttpServlet {

    @Inject
    private IUserService userService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String fName = request.getParameter("fname");
        String lName = request.getParameter("lname");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
        String ward = request.getParameter("ward");
        String commune = request.getParameter("commune");
        String city = request.getParameter("city");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String username = request.getParameter("username");
        UserModel userModel = new UserModel();
        userModel.setName(fName + " " + lName);
        userModel.setGender(gender);
        userModel.setAddress(address + ", " + ward + ", " + commune + ", " + city);
        userModel.setPhone(phone);
        userModel.setEmail(email);
        userModel.setUsername(username);
        userModel.setPassword(password);


        
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String message = request.getParameter("message");
        if(message != null){
            request.setAttribute("message", "Tên tài khoản hiện đang tồn tại");
            request.setAttribute("alert", "danger");
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/register.jsp");
            rd.forward(request, response);
        }else{
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/register.jsp");
            rd.forward(request, response);
        }

    }
}

