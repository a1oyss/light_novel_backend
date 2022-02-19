package com.example.lightnovelbackend.controller;

import com.example.lightnovelbackend.pojo.Book;
import com.example.lightnovelbackend.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@RestController
@CrossOrigin(origins = "*")
public class BookController {
    @Autowired
    BookService bookService;

    @GetMapping("/api/book")
    public Book getBook(Integer id){
        return bookService.getBook(id);
    }
    @GetMapping("/api/books")
    public List<Book> selectAll() throws Exception {
        return bookService.getAllBooks();
    }

    @PostMapping("/api/books_insert")
    public Book addBook(@RequestBody Book book) throws Exception {
        bookService.addBook(book);
        return book;
    }

    @PostMapping("/api/books_update")
    public Book updateBook(@RequestBody Book book) throws Exception {
        bookService.updateBook(book);
        return book;
    }

    @PostMapping("/api/delete")
    public void deleteBook(@RequestBody Integer id) throws Exception {
        bookService.deleteBook(id);
    }


    @GetMapping("/api/categories/{cid}/books")
    public List<Book> getBookByCategory(@PathVariable("cid") Integer cid) throws Exception {
        if (0 != cid) {
            return bookService.getBookByCategory(cid);
        } else {
            return selectAll();
        }
    }
}
