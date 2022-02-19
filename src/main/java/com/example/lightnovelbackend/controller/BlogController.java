package com.example.lightnovelbackend.controller;

import com.example.lightnovelbackend.pojo.Blog;
import com.example.lightnovelbackend.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin(origins = "*")
public class BlogController {
    @Autowired
    BlogService blogService;

    @GetMapping("/api/blogs")
    public List<Blog> getAllBlogs(){
        return blogService.getAllBlogs();
    }
}
