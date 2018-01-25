package com.jk.service.impl;


import com.jk.dao.OrderMapper;
import com.jk.dao.RiskMapper;
import com.jk.model.Order;
import com.jk.model.Order2;

import com.jk.service.RiskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by 赵雅楠 on 2018/1/4.
 */
@Service
public class RiskServiceImpl implements RiskService{
   @Autowired
    private RiskMapper riskMapper;

    @Autowired
    private OrderMapper orderMapper;


    @Override
    public Map<String, Object> findAll(Order order, int page, int rows) {
        long total=orderMapper.getydzcount(order);
        int start=(page-1)*rows;
        int end= rows;
        List<Order2> list1=orderMapper.queryydz(start,end,order);
        Map<String,Object> map=new HashMap<>();
        map.put("total", total);
        map.put("rows", list1);
        return map;
    }
}
