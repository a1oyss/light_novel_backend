package com.example.lightnovelbackend.controller;

import com.example.lightnovelbackend.pojo.Chapter;
import com.example.lightnovelbackend.pojo.Paragraph;
import com.example.lightnovelbackend.pojo.Volume;
import com.example.lightnovelbackend.service.ChapterService;
import com.example.lightnovelbackend.service.ParagraphService;
import com.example.lightnovelbackend.service.VolumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin(origins = "*")
public class TextController {
    @Autowired
    private VolumeService volumeService;
    @Autowired
    private ChapterService chapterService;
    @Autowired
    private ParagraphService paragraphService;

    @GetMapping("/api/volume")
    public List<Volume> getVolumes(Integer book_id){
        return volumeService.getVolumes(book_id);
    }

    @GetMapping("/api/chapter")
    public List<Chapter> getChapters(Integer book_id, Integer volume_id){
        return chapterService.getChapters(book_id,volume_id);
    }

    @GetMapping("/api/paragraph")
    public List<Paragraph> getParagraphs(Integer book_id,Integer volume_id,Integer chapter_id){
        return paragraphService.getParagraphs(book_id,volume_id,chapter_id);
    }
}
