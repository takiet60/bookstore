package com.project.store.controller.admin;

import com.project.store.model.DetailOrderModel;
import com.project.store.service.IDetailOrderService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HistoryActionController)", urlPatterns = "/admin-history")
public class HistoryActionController extends HttpServlet {

    @Inject
    private IDetailOrderService detailOrderService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long id = Long.parseLong(request.getParameter("id"));
        List<DetailOrderModel> list = detailOrderService.findByUserId(id);
        request.setAttribute("list", list);
        RequestDispatcher rd = request.getRequestDispatcher("views/admin/history-action.jsp");
        rd.forward(request, response);
    }
}

