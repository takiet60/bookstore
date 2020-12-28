package com.project.store.controller.web;

import com.project.store.model.ProductModel;
import com.project.store.service.IProductService;
import com.project.store.service.impl.ProductService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SearchController)", urlPatterns = "/search")
public class SearchController extends HttpServlet {

    @Inject
    private IProductService productService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String search = request.getParameter("search");
        List<ProductModel> list = productService.search(search);
        System.out.println(list);
        request.setAttribute("list", list);
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/search.jsp");
        rd.forward(request, response);
    }
}

