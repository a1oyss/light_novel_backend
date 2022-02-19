package com.example.lightnovelbackend.pojo;

import lombok.Data;

@Data
public class Blog {
    private Integer id;
    private String date;
    private String title;
    private String content;
}
