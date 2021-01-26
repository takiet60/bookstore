package com.project.store.controller.admin;

import com.project.store.constant.SystemConstant;
import com.project.store.model.BlogModel;
import com.project.store.model.ProductModel;
import com.project.store.paging.PageRequest;
import com.project.store.paging.Pageble;
import com.project.store.service.IBlogService;
import com.project.store.sort.Sorter;
import com.project.store.utils.FormUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListBlogController)", urlPatterns = "/admin-list-blog")
public class ListBlogController extends HttpServlet {

    @Inject
    private IBlogService blogService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<BlogModel> listResult = blogService.findAll();
        request.setAttribute("listResult", listResult);
        BlogModel model = FormUtil.toModel(BlogModel.class, request);
        Pageble pageble = new PageRequest(model.getPage(), model.getMaxPageItem(),
                new Sorter(model.getSortName(), model.getSortBy()));
        model.setListResult(blogService.findAllPag(pageble));
        model.setTotalItem(blogService.getTotalItem());
        model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getMaxPageItem()));
        request.setAttribute(SystemConstant.MODEL, model);
        if(request.getParameter("type") != null){
            if(request.getParameter("type").equals("add")){
                if(request.getParameter("message") != null){
                    String message = request.getParameter("message");
                    String alert = request.getParameter("alert");
                    request.setAttribute("message", "Thêm thành công");
                    request.setAttribute("alert", alert);
                }
            }else if(request.getParameter("type").equals("edit")){
                if(request.getParameter("message") != null){
                    String message = request.getParameter("message");
                    String alert = request.getParameter("alert");
                    request.setAttribute("message", "Cập nhật thành công thành công");
                    request.setAttribute("alert", alert);
                }
            }
        }

        RequestDispatcher rd = request.getRequestDispatcher("views/admin/list-blog.jsp");
        rd.forward(request, response);
    }
}

