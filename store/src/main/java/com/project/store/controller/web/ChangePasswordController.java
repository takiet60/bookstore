package com.project.store.controller.web;

import com.project.store.model.UserModel;
import com.project.store.service.IUserService;
import com.project.store.utils.HttpUtil;
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

@WebServlet(name = "ChangePasswordController)", urlPatterns = "/change-password")
public class ChangePasswordController extends HttpServlet {

    @Inject
    private IUserService userService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserModel userModel = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
        UserModel user = userService.findByUserName(userModel.getUsername());
        String oldPassword = request.getParameter("oldPassword");
        String newPassword = request.getParameter("newPassword");
        if(oldPassword.equals(user.getPassword())){
            userService.updateNewPassword(userModel.getUsername(), newPassword);
            response.sendRedirect(request.getContextPath() + "/change-password?alert=success");
        }else{
            response.sendRedirect(request.getContextPath() + "/change-password?alert=fail");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String alert = request.getParameter("alert");
        if(alert != null && alert.equals("success")){
            request.setAttribute("alert", "success");
            request.setAttribute("message", "Cập nhật thành công");
        }else if(alert != null && alert.equals("fail")){
            request.setAttribute("alert", "danger");
            request.setAttribute("message", "Mật khẩu cũ không chính xác");
        }
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/change-password.jsp");
        rd.forward(request, response);
    }
}

