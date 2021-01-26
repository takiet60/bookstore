package com.project.store.dao.impl;

import com.project.store.constant.SystemConstant;
import com.project.store.dao.IBlogDAO;
import com.project.store.mapper.BlogMapper;
import com.project.store.mapper.ProductMapper;
import com.project.store.model.BlogModel;
import com.project.store.model.UserModel;
import com.project.store.paging.Pageble;
import org.apache.commons.lang.StringUtils;

import java.sql.Timestamp;
import java.util.List;

public class BlogDAO extends AbtractDAO<BlogModel> implements IBlogDAO {
    @Override
    public long save(BlogModel blogModel, UserModel userModel) {
        StringBuilder sql = new StringBuilder("INSERT INTO blog(title, thumbnail, shortDescription, content, categoryId, createdDate, createdBy, status)");
        sql.append( " VALUES(?, ?, ?, ?, ?, ?, ?, ?);");
        return insert(sql.toString(), blogModel.getTitle(), blogModel.getThumbnail(), blogModel.getSortDescription(), blogModel.getContent(),
                blogModel.getCategoryId(), new Timestamp(System.currentTimeMillis()), userModel.getName(), 0);
    }

    @Override
    public List<BlogModel> findAll() {
        String sql = "SELECT * FROM blog";
        return query(sql, new BlogMapper());
    }

    @Override
    public BlogModel findById(long id) {
        String sql = "SELECT * FROM blog WHERE id = ?";
        List<BlogModel> list = query(sql, new BlogMapper(), id);
        return list.size() == 0 ? null : list.get(0);
    }

    @Override
    public List<BlogModel> findTop3() {
        String sql = "SELECT * FROM blog LIMIT 0,3";
        return query(sql, new BlogMapper());
    }

    @Override
    public void update(BlogModel blogModel, UserModel userModel) {
        StringBuilder sql  = new StringBuilder("UPDATE blog SET title = ?, thumbnail = ?, ");
        sql.append("shortDescription = ?, content = ?, categoryId = ?, modifiedDate = ?, modifiedBy = ? ");
        sql.append("WHERE id = ?");
        update(sql.toString(), blogModel.getTitle(), blogModel.getThumbnail(), blogModel.getSortDescription(),
                blogModel.getContent(), blogModel.getCategoryId(), new Timestamp(System.currentTimeMillis()), userModel.getName(), blogModel.getId());
    }

    @Override
    public List<BlogModel> findAllPag(Pageble pageble) {
        StringBuilder sql = new StringBuilder("SELECT * FROM blog");
        if(pageble.getSorter() != null && StringUtils.isNotBlank(pageble.getSorter().getSortName())&& StringUtils.isNotBlank(pageble.getSorter().getSortBy())){
            sql.append(" ORDER BY " + pageble.getSorter().getSortName() + " " + pageble.getSorter().getSortBy() + "");
        }
        if(pageble.getOffset() != null &&  pageble.getLimit() != null){
            sql.append(" LIMIT " + pageble.getOffset() + ", " + pageble.getLimit() + "");
        }
        return query(sql.toString(), new BlogMapper());
    }

    @Override
    public int getTotalItem() {
        String sql = "SELECT count(*) FROM blog";
        return count(sql);
    }
}
