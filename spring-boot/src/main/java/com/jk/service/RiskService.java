package com.jk.service;


import com.jk.model.Order2;

import java.util.List;
import java.util.Map;

/**
 * Created by 赵雅楠 on 2018/1/8.
 */
public interface RiskService {
    Map<String,Object> findAll(Order2 order, int page, int rows);

    List<Order2> selriskorder2();

    void del(Integer id);

    Order2 selbyid(Integer id);
}
