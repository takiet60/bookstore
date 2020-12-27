package com.project.store.controller.web;

import com.project.store.model.CartModel;
import com.project.store.model.ItemModel;
import com.project.store.model.ProductModel;
import com.project.store.service.IProductService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "AddToCartController)", urlPatterns = "/cart/add")
public class AddToCartController extends HttpServlet {

    @Inject
    private IProductService productService;


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        if(id == null) response.sendRedirect("home");
        ProductModel productModel = productService.findById(id);
        if(productModel == null){
            response.sendRedirect("home");
            return;
        }else{
            HttpSession session = request.getSession();
            CartModel cart = CartModel.getCart(session);
            ItemModel itemModel = new ItemModel();
            itemModel.setProductModel(productModel);
            cart.put(itemModel);
            cart.commit(session);
            response.sendRedirect(request.getContextPath() + "/home");
        }

    }
}

