package com.example.lightnovelbackend.service;

import com.example.lightnovelbackend.dao.VolumeMapper;
import com.example.lightnovelbackend.pojo.Volume;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VolumeService {
    @Autowired
    private VolumeMapper volumeMapper;
    public List<Volume> getVolumes(Integer book_id){
        return volumeMapper.getVolumes(book_id);
    }
}
