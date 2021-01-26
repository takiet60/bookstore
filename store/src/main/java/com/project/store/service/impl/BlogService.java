package com.project.store.service.impl;

import com.project.store.dao.IBlogDAO;
import com.project.store.model.BlogModel;
import com.project.store.model.UserModel;
import com.project.store.paging.Pageble;
import com.project.store.service.IBlogService;

import javax.inject.Inject;
import java.util.List;


public class BlogService implements IBlogService {

    @Inject
    IBlogDAO blogDAO;

    @Override
    public long save(BlogModel blogModel, UserModel userModel) {
        return blogDAO.save(blogModel, userModel);
    }

    @Override
    public List<BlogModel> findAll() {
        return blogDAO.findAll();
    }

    @Override
    public BlogModel findById(long id) {
        return blogDAO.findById(id);
    }

    @Override
    public List<BlogModel> findTop3() {
        return blogDAO.findTop3();
    }

    @Override
    public void update(BlogModel blogModel, UserModel userModel) {
        blogDAO.update(blogModel, userModel);
    }

    @Override
    public List<BlogModel> findAllPag(Pageble pageble) {
        return blogDAO.findAllPag(pageble);
    }

    @Override
    public int getTotalItem() {
        return blogDAO.getTotalItem();
    }
}
