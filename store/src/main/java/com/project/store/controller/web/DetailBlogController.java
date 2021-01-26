package com.project.store.controller.web;

import com.project.store.model.BlogModel;
import com.project.store.service.IBlogService;
import com.project.store.service.impl.BlogService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DetailBlogController)", urlPatterns = "/blog-detail")
public class DetailBlogController extends HttpServlet {

    @Inject
    private IBlogService blogService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long id = Long.parseLong(request.getParameter("id"));
        BlogModel blogModel = blogService.findById(id);
        request.setAttribute("model", blogModel);
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/detail-blog.jsp");
        rd.forward(request, response);
    }
}

