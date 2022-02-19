package com.example.lightnovelbackend.dao;

import com.example.lightnovelbackend.pojo.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {
    @Select("select * from user where username=#{username}")
    public abstract User findByUsername(String username);

    @Select("select * from user where username=#{username} and password=#{password}")
    public abstract User getByUsernameAndPassword(String username, String password);

    @Insert("insert into user value(#{username},#{password},#{salt})")
    public abstract void register(User user);

}
