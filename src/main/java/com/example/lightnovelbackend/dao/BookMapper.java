package com.example.lightnovelbackend.dao;

import com.example.lightnovelbackend.pojo.Book;
import com.example.lightnovelbackend.pojo.Category;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookMapper {
    public abstract void addBook(Book book);
    public abstract void updateBook(Book book);
    public abstract void deleteBook(@Param("id") Integer id);
    public abstract Book getBook(Integer id);
    public abstract List<Book> getAllBooks();
    public abstract List<Book> getBookByCategory(Integer id);
    public abstract List<Book> getBookByNameOrAuthor(@Param("key1") String key1, @Param("key2") String key2);
}
