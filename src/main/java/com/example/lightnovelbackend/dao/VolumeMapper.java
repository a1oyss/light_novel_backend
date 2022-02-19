package com.example.lightnovelbackend.dao;

import com.example.lightnovelbackend.pojo.Volume;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface VolumeMapper {
    public abstract List<Volume> getVolumes(Integer book_id);
}
