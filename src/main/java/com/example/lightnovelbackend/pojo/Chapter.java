package com.example.lightnovelbackend.pojo;

import lombok.Data;

@Data
public class Chapter {
    private Integer id;
    private String title;
    private Integer book_id;
    private Integer volume_id;
}
