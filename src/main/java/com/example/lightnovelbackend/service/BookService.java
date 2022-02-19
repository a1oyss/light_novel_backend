package com.example.lightnovelbackend.service;

import com.example.lightnovelbackend.dao.BookMapper;
import com.example.lightnovelbackend.pojo.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookService {
    @Autowired
    BookMapper bookMapper;

    @Autowired
    CategoryService categoryService;

    public List<Book> getAllBooks() {
        return bookMapper.getAllBooks();
    }

    public Book getBook(Integer id){
        return bookMapper.getBook(id);
    }

    public void addBook(Book book) {
        bookMapper.addBook(book);
    }

    public void updateBook(Book book){
        bookMapper.updateBook(book);
    }

    public void deleteBook(int id) {
        bookMapper.deleteBook(id);
    }

    public List<Book> getBookByCategory(int cid) {
        return bookMapper.getBookByCategory(cid);
    }
}
