package com.project.store.controller.admin;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.project.store.model.BlogModel;
import com.project.store.model.ProductModel;
import com.project.store.model.UserModel;
import com.project.store.service.IBlogService;
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

@WebServlet(name = "AddBlogController)", urlPatterns = "/admin-add-blog")
public class AddBlogController extends HttpServlet {

    @Inject
    private IBlogService blogService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("utf-8");
        response.setContentType("application/json");
        BlogModel blogModel = HttpUtil.of(request.getReader()).toModel(BlogModel.class);
        UserModel userModel = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
        blogService.save(blogModel, userModel);
        response.sendRedirect("/admin-home");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("views/admin/add-blog.jsp");
        rd.forward(request, response);
    }
}

