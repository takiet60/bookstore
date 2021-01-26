package com.project.store.controller.web;

import com.project.store.constant.SystemConstant;
import com.project.store.model.BlogModel;
import com.project.store.model.CategoryModel;
import com.project.store.model.ProductModel;
import com.project.store.paging.PageRequest;
import com.project.store.paging.Pageble;
import com.project.store.service.IBlogService;
import com.project.store.service.ICategoryService;
import com.project.store.service.IProductService;
import com.project.store.service.impl.ProductService;
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

@WebServlet(name = "SearchController)", urlPatterns = "/search")
public class SearchController extends HttpServlet {

    @Inject
    private IProductService productService;

    @Inject
    private ICategoryService categoryService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String search = request.getParameter("search");
        ProductModel model = FormUtil.toModel(ProductModel.class, request);
        Pageble pageble = new PageRequest(model.getPage(), model.getMaxPageItem(),
                new Sorter(model.getSortName(), model.getSortBy()));
        model.setListResult(productService.search(search, pageble));
        model.setTotalItem(productService.getTotalItem());
        model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getMaxPageItem()));
        request.setAttribute(SystemConstant.MODEL, model);
        request.setAttribute("search", search);
        List<CategoryModel> categoryModelList = categoryService.findAll();
        request.setAttribute("categoryList", categoryModelList);
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/search.jsp");
        rd.forward(request, response);
    }
}

