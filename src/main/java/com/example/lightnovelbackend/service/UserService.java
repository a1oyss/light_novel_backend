package com.example.lightnovelbackend.service;

import com.example.lightnovelbackend.dao.UserMapper;
import com.example.lightnovelbackend.pojo.User;
import com.example.lightnovelbackend.result.ResultFactory;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.util.HtmlUtils;

@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;

    public boolean isExist(String username){
        User user=getByName(username);
        return null!=user;
    }

    public User getByName(String username){
        return userMapper.findByUsername(username);
    }
    public User login(String username, String password){
        return userMapper.getByUsernameAndPassword(username, password);
    }

    public Integer register(User user){
        String username = user.getUsername();
        String password = user.getPassword();
        username = HtmlUtils.htmlEscape(username);
        user.setUsername(username);
        boolean exist = isExist(username);
        if (exist) {
            return -1;
        }
        // 生成盐,默认长度 16 位
        String salt = new SecureRandomNumberGenerator().nextBytes().toString();
        // 设置 hash 算法迭代次数
        int times = 2;
        // 得到 hash 后的密码
        String encodedPassword = new SimpleHash("md5", password, salt, times).toString();
        // 存储用户信息，包括 salt 与 hash 后的密码
        user.setSalt(salt);
        user.setPassword(encodedPassword);
        userMapper.register(user);
        return 1;
    }


}
