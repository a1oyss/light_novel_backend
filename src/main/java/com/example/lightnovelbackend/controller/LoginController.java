package com.example.lightnovelbackend.controller;

import com.example.lightnovelbackend.pojo.User;
import com.example.lightnovelbackend.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.HtmlUtils;

import javax.servlet.http.HttpSession;

@Controller
@CrossOrigin(origins = "*")
public class LoginController {
    @Autowired
    UserService userService;

    @PostMapping(value = "/api/login")
    @ResponseBody
    public Integer login(@RequestBody User requestUser, HttpSession session){
        String username=requestUser.getUsername();
        String password=requestUser.getPassword();
        username= HtmlUtils.htmlEscape(username);
        User user = userService.login(username, password);
        if (user==null){
            return -1;
        }else {
            session.setAttribute("user",user);
            return 1;
        }
    }

    @PostMapping("/api/register")
    @ResponseBody
    public Integer register(@RequestBody User user) {
        return userService.register(user);
    }
}
