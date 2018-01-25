package com.jk.service;

import com.jk.model.User;

import java.util.List;
import java.util.Map;

/**
 * Created by 赵雅楠 on 2018/1/3.
 */
public interface HiService {
   Map<String,Object> findAll(String mas,int page,int rows);

    List<User> selhei();

    User findUserById(int id);
}
