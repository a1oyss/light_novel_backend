package com.example.lightnovelbackend.pojo;

import lombok.Data;

@Data
public class Paragraph {
    private Integer id;
    private String content;
    private Integer book_id;
    private Integer chapter_id;
    private Integer volume_id;

}
