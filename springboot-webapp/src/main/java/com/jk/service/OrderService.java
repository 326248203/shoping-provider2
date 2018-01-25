package com.jk.service;

import com.jk.model.Order;

import java.util.Map;

/**
 * Created by 赵雅楠 on 2018/1/4.
 */
public interface OrderService {
    Map<String,Object> findAll(String mas, int page, int rows);

    Map<String,Object> selzhorder(String mas, int page, int rows);

    Order selorderbyid(Integer id);

    void editorder(Order order);

    void delorder(Integer id);

    void updzhorder(Order order);

    void delzhorder(Order order);

    void addorder(Order order);
}
