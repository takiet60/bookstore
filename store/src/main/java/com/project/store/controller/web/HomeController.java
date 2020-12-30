package com.project.store.controller.web;

import com.project.store.model.CartModel;
import com.project.store.model.ItemModel;
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
import java.sql.SQLException;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

@WebServlet(urlPatterns = {"/home"})
public class HomeController extends HttpServlet {

    @Inject
    private IProductService productService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<ProductModel> list = productService.findAll();
        List<ProductModel> listByCategory7 = productService.findByCategoryId(7);
        List<ProductModel> listByNewest = productService.findByNewest();
        List<ProductModel> listByCategory8 = productService.findByCategoryId(8);
        List<ProductModel> listByCategory9 = productService.findByCategoryId(9);
        req.setAttribute("listProduct", list);
        req.setAttribute("listByCategory7", listByCategory7);
        req.setAttribute("listByNewest", listByNewest);
        req.setAttribute("listByCategory8", listByCategory8);
        req.setAttribute("listByCategory9", listByCategory9);
        CartModel cart = CartModel.getCart(req.getSession());
        Collection<ItemModel> data = cart.getCart();
        req.setAttribute("data", data);
        int totalQuantity = cart.totalQuantity();
        long total = cart.total();
        req.setAttribute("total", total);
        req.setAttribute("data", data);
        req.setAttribute("totalQuantity", totalQuantity);
        RequestDispatcher rd = req.getRequestDispatcher("/views/web/home.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}