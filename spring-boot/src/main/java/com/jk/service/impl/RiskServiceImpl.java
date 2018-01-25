package com.jk.service.impl;



import com.jk.dao.RiskMapper;

import com.jk.model.Order2;

import com.jk.service.RiskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by 赵雅楠 on 2018/1/4.
 */
@Service
public class RiskServiceImpl implements RiskService{
   @Resource
    private RiskMapper riskMapper;

    @Override
    public Map<String, Object> findAll(Order2 order, int page, int rows) {
        long total=riskMapper.getydzcount(order);
        int start=(page-1)*rows;
        int end= rows;
        List<Order2> list1=riskMapper.queryydz(start,end,order);
        Map<String,Object> map=new HashMap<>();
        map.put("total", total);
        map.put("rows", list1);
        return map;
    }

    @Override
    public List<Order2> selriskorder2() {
        return riskMapper.selriskorder2();
    }

    @Override
    public void del(Integer id) {
        riskMapper.del(id);
    }

    @Override
    public Order2 selbyid(Integer id) {
        return riskMapper.selbyid(id);
    }
}
