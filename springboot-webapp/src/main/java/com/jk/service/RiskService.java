package com.jk.service;

import com.jk.model.Order;
import com.jk.model.Order2;

import java.util.Map;

/**
 * Created by 赵雅楠 on 2018/1/8.
 */
public interface RiskService {
    Map<String,Object> findAll(Order order, int page, int rows);
}
