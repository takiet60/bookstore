package com.project.store.controller.admin;

import com.project.store.constant.SystemConstant;
import com.project.store.model.OrderModel;
import com.project.store.model.ProductModel;
import com.project.store.paging.PageRequest;
import com.project.store.paging.Pageble;
import com.project.store.service.IDetailOrderService;
import com.project.store.service.IOrderService;
import com.project.store.sort.Sorter;
import com.project.store.utils.FormUtil;
import org.junit.jupiter.api.Order;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin-home"})
public class HomeController extends HttpServlet {

    @Inject
    private IOrderService orderService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        OrderModel model = FormUtil.toModel(OrderModel.class, req);
        if(model.getPage() == null){
            Pageble pageble = new PageRequest(1, 10,
                    new Sorter("id", "DESC"));
            model.setListResult(orderService.findAll(pageble));
            model.setTotalItem(orderService.getTotalOrder());
            model.setMaxPageItem(10);
            model.setPage(1);
            model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getMaxPageItem()));
        }else{
            Pageble pageble = new PageRequest(model.getPage(), model.getMaxPageItem(),
                    new Sorter(model.getSortName(), model.getSortBy()));
            model.setListResult(orderService.findAll(pageble));
            model.setTotalItem(orderService.getTotalOrder());
            model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getMaxPageItem()));
        }
        req.setAttribute(SystemConstant.MODEL, model);
        RequestDispatcher rd = req.getRequestDispatcher("views/admin/home.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
