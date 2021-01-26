package com.project.store.controller.admin;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.project.store.model.ProductModel;
import com.project.store.service.IProductService;
import com.project.store.utils.FormUtil;
import com.project.store.utils.HttpUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddProductController)", urlPatterns = "/admin-add-product")
public class AddProductController extends HttpServlet {

    @Inject
    private IProductService productService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("utf-8");
        response.setContentType("application/json");
        ProductModel productModel = HttpUtil.of(request.getReader()).toModel(ProductModel.class);
        productService.save(productModel);
        response.sendRedirect(request.getContextPath() + "/admin-home");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("views/admin/add-product.jsp");
        rd.forward(request, response);
    }
}

