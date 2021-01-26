package com.project.store.controller.web;

import com.project.store.model.*;
import com.project.store.service.IBlogService;
import com.project.store.service.ICategoryService;
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

    @Inject
    private ICategoryService categoryService;

    @Inject
    private IBlogService blogService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        List<ProductModel> list = productService.findAll();
        List<ProductModel> listByCategory1 = productService.findByCategoryId(1);
        List<ProductModel> listByNewest = productService.findByNewest();
        List<ProductModel> listByCategory2 = productService.findByCategoryId(2);
        List<ProductModel> listByCategory3 = productService.findByCategoryId(3);
        List<ProductModel> listByCategory4 = productService.findByCategoryId(4);
        List<ProductModel> listByCategory5 = productService.findByCategoryId(5);
        List<CategoryModel> findAll = categoryService.findAll();
        req.setAttribute("listProduct", list);
        req.setAttribute("listByCategory1", listByCategory1);
        req.setAttribute("listByNewest", listByNewest);
        req.setAttribute("listByCategory2", listByCategory2);
        req.setAttribute("listByCategory3", listByCategory3);
        req.setAttribute("listByCategory4", listByCategory4);
        req.setAttribute("listByCategory5", listByCategory5);
        req.setAttribute("findAll", findAll);
        CartModel cart = CartModel.getCart(req.getSession());
        Collection<ItemModel> data = cart.getCart();
        req.setAttribute("data", data);
        int totalQuantity = cart.totalQuantity();
        long total = cart.total();
        req.setAttribute("total", total);
        req.setAttribute("data", data);
        req.setAttribute("totalQuantity", totalQuantity);
        List<BlogModel> listBlog = blogService.findTop3();
        req.setAttribute("listBlog", listBlog);
        List<ProductModel> listBestSeller = productService.findBestSeller();
        req.setAttribute("listBestSeller", listBestSeller);
        RequestDispatcher rd = req.getRequestDispatcher("/views/web/home.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}