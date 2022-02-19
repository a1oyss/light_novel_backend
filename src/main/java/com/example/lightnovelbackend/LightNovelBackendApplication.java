package com.example.lightnovelbackend;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.example.lightnovelbackend.dao")
public class LightNovelBackendApplication {

    public static void main(String[] args) {
        SpringApplication.run(LightNovelBackendApplication.class, args);
    }

}
