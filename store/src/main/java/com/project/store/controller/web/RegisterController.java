package com.project.store.controller.web;

import com.project.store.model.UserModel;
import com.project.store.service.IUserService;

import javax.inject.Inject;
import javax.jws.soap.SOAPBinding;
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


@WebServlet(name = "RegisterController)", urlPatterns = "/register")


public class RegisterController extends HttpServlet {

    @Inject
    private IUserService userService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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


        UserModel user = userService.findByUsername(username);
        if(user != null){
            response.sendRedirect("register");
        }else{
            userService.save(userModel);
            response.sendRedirect("home");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/register.jsp");
        rd.forward(request, response);
    }
}

