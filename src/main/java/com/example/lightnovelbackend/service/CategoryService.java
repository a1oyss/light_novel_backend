package com.example.lightnovelbackend.service;

import com.example.lightnovelbackend.dao.CategoryMapper;
import com.example.lightnovelbackend.pojo.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryService {
    @Autowired
    CategoryMapper categoryMapper;

    public List<Category> getAllCategories() {
        return categoryMapper.getAllCategories();
    }
}
