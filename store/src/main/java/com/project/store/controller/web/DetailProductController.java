package com.project.store.controller.web;

import com.project.store.model.ProductModel;
import com.project.store.service.IProductService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DetailProductController)", urlPatterns = "/detail")
public class DetailProductController extends HttpServlet {

    @Inject
    private IProductService productService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Long id = Long.parseLong(request.getParameter("id"));
        ProductModel productModel = productService.findById(id);
        request.setAttribute("product",productModel);
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/detail-product.jsp");
        rd.forward(request, response);
    }
}

