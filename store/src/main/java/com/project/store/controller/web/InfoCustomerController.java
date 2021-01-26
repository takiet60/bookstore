package com.project.store.controller.web;

import com.project.store.constant.SystemConstant;
import com.project.store.model.UserModel;
import com.project.store.service.IUserService;
import com.project.store.utils.FormUtil;
import com.project.store.utils.HttpUtil;
import com.project.store.utils.SessionUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "InfoCustomerController)", urlPatterns = "/info")
public class InfoCustomerController extends HttpServlet {

    @Inject
    private IUserService userService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        UserModel userModel = FormUtil.toModel(UserModel.class, request);
        userService.updateInfo(userModel);
        SessionUtil.getInstance().putValue(request, "USERMODEL", userModel);
        response.sendRedirect(request.getContextPath() + "/info?alert=success&message=success");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        UserModel userModel = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
        request.setAttribute("userModel", userModel);
        String alert = request.getParameter("alert");
        if(alert != null){
            request.setAttribute("alert", "success");
            request.setAttribute("message", "Thay đổi thông tin thành công");

        }
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/info.jsp");
        rd.forward(request, response);
    }
}

