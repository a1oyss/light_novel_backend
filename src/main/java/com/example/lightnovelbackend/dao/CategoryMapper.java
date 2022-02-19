package com.example.lightnovelbackend.dao;

import com.example.lightnovelbackend.pojo.Category;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CategoryMapper {
    public abstract List<Category> getAllCategories();
    public abstract Category getCategory(Integer id);
}
