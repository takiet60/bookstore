package com.project.store.controller.web;

import com.project.store.model.CartModel;
import com.project.store.model.ItemModel;
import com.project.store.model.ProductModel;
import com.project.store.service.IProductService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "AddToCartController)", urlPatterns = "/cart/add")
public class AddToCartController extends HttpServlet {

    @Inject
    private IProductService productService;


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        if(id == null) response.sendRedirect(request.getContextPath() + "/home");
        ProductModel productModel = productService.findById(id);
        if(productModel == null){
            response.sendRedirect(request.getContextPath() + "/home");
            return;

        }


    }
}

