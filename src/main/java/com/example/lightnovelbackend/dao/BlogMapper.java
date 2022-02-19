package com.example.lightnovelbackend.dao;

import com.example.lightnovelbackend.pojo.Blog;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BlogMapper {
    public abstract List<Blog> getAllBlogs();
}
