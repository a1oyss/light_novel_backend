package com.example.lightnovelbackend.service;

import com.example.lightnovelbackend.dao.BlogMapper;
import com.example.lightnovelbackend.pojo.Blog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BlogService {
    @Autowired
    BlogMapper blogMapper;

    public List<Blog> getAllBlogs(){
        return blogMapper.getAllBlogs();
    }
}
