package com.project.store.controller.web;

import com.project.store.model.CartModel;
import com.project.store.model.ItemModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "AfterAddToCartController)", urlPatterns = "/cart/remove")
public class RemoveFromCartController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long id = (long) Long.parseLong(request.getParameter("id"));
        CartModel cart = CartModel.getCart(request.getSession());
        cart.remove(id);
        cart.commit(request.getSession());
        response.sendRedirect(request.getContextPath() + "/home");
//        RequestDispatcher rd = request.getRequestDispatcher("/views/web/home");
//        rd.forward(request, response);
    }
}

