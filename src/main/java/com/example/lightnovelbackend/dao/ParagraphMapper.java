package com.example.lightnovelbackend.dao;

import com.example.lightnovelbackend.pojo.Paragraph;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ParagraphMapper {
    public abstract List<Paragraph> getParagraphs(Integer book_id, Integer volume_id, Integer chapter_id);
}
