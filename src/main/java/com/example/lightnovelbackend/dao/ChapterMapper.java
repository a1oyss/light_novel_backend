package com.example.lightnovelbackend.dao;

import com.example.lightnovelbackend.pojo.Chapter;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ChapterMapper {
    public abstract List<Chapter> getChapters(Integer book_id, Integer volume_id);
}
