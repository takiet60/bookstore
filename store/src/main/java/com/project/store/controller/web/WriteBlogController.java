package com.project.store.controller.web;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "WriteBlogController)", urlPatterns = "/write-blog")
public class WriteBlogController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String message = request.getParameter("message");
        if(message != null){
            request.setAttribute("message", "Gửi bài thành công! Chúng tôi sẽ kiểm duyệt bài của bạn. Nếu có gì thắc mắc xin hãy liên hệ với website.");
            request.setAttribute("alert", "success");
        }
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/write-blog.jsp");
        rd.forward(request, response);
    }
}

