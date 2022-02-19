package com.example.lightnovelbackend.service;

import com.example.lightnovelbackend.dao.ParagraphMapper;
import com.example.lightnovelbackend.pojo.Paragraph;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ParagraphService {
    @Autowired
    private ParagraphMapper paragraphMapper;
    public List<Paragraph> getParagraphs(Integer book_id,Integer volume_id,Integer chapter_id){
        return paragraphMapper.getParagraphs(book_id,volume_id,chapter_id);
    }
}
