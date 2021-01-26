package com.project.store.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class BlogModel extends PagingModel<BlogModel> implements Serializable {

    private long id;
    private String title;
    private String thumbnail;
    private String sortDescription;
    private int categoryId;
    private String content;
    private Timestamp createdDate;
    private Timestamp modifiedDate;
    private String createdBy;
    private String modifiedBy;
    private BlogCategoryModel categoryModel;

    public BlogModel() {
    }

    public BlogModel(long id, String title, String thumbnail, String sortDescription, int categoryId, String content, Timestamp createdDate, Timestamp modifiedDate, String createdBy, String modifiedBy, BlogCategoryModel categoryModel) {
        this.id = id;
        this.title = title;
        this.thumbnail = thumbnail;
        this.sortDescription = sortDescription;
        this.categoryId = categoryId;
        this.content = content;
        this.createdDate = createdDate;
        this.modifiedDate = modifiedDate;
        this.createdBy = createdBy;
        this.modifiedBy = modifiedBy;
        this.categoryModel = categoryModel;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getSortDescription() {
        return sortDescription;
    }

    public void setSortDescription(String sortDescription) {
        this.sortDescription = sortDescription;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Timestamp getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Timestamp createdDate) {
        this.createdDate = createdDate;
    }

    public Timestamp getModifiedDate() {
        return modifiedDate;
    }

    public void setModifiedDate(Timestamp modifiedDate) {
        this.modifiedDate = modifiedDate;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public String getModifiedBy() {
        return modifiedBy;
    }

    public void setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public BlogCategoryModel getCategoryModel() {
        return categoryModel;
    }

    public void setCategoryModel(BlogCategoryModel categoryModel) {
        this.categoryModel = categoryModel;
    }
}
