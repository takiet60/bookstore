package com.project.store.service;

import com.project.store.model.BlogModel;
import com.project.store.model.UserModel;
import com.project.store.paging.Pageble;

import java.util.List;

public interface IBlogService {
    long save(BlogModel blogModel, UserModel userModel);
    List<BlogModel> findAll();
    BlogModel findById(long id);
    List<BlogModel> findTop3();
    void update(BlogModel blogModel, UserModel userModel);
    List<BlogModel> findAllPag(Pageble pageble);
    int getTotalItem();
}
