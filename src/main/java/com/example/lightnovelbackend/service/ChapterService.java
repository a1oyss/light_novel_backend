package com.example.lightnovelbackend.service;

import com.example.lightnovelbackend.dao.ChapterMapper;
import com.example.lightnovelbackend.pojo.Chapter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ChapterService {
    @Autowired
    private ChapterMapper chapterMapper;
    public List<Chapter> getChapters(Integer book_id, Integer volume_id){
        return chapterMapper.getChapters(book_id,volume_id);
    }
}
