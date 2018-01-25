package com.jk.service.impl;

import com.jk.dao.OrderMapper;
import com.jk.model.Order;

import com.jk.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by 赵雅楠 on 2018/1/4.
 */
@Service
//@Cacheable(value="user-key")
public class OrderServiceImpl implements OrderService{
    @Autowired
    private OrderMapper orderMapper;

    @Override
    public Map<String, Object> findAll(String mas, int page, int rows) {
        page = page - 1;
        Sort sort = new Sort(Sort.Direction.DESC, "id");
        Pageable pageable = new PageRequest(page, rows, sort);

        Page<Order> list =null;
        if(mas!=null && !"".equals(mas)){
           list = orderMapper.findByNameOrQdaoidOrJinrcp(mas,mas,mas,pageable);
        }else{
           list = orderMapper.findAll(pageable);
        }
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("rows",list.getContent());
        map.put("total",list.getTotalElements());
        return map;

    }

    @Override
    public Map<String, Object> selzhorder(String mas, int page, int rows) {
        page = page - 1;
        Sort sort = new Sort(Sort.Direction.DESC, "id");
        Pageable pageable = new PageRequest(page, rows, sort);

        Page<Order> list =null;//OrdernumberOr
        if(mas!=null && !"".equals(mas)){
            list = orderMapper.findByNameOrQdaoidOrJinrcp(mas,mas,mas,pageable);
        }else{
            list = orderMapper.findAll(pageable);
        }
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("rows",list.getContent());
        map.put("total",list.getTotalElements());
        return map;
    }

    @Override
    public Order selorderbyid(Integer id) {
        Order ord=orderMapper.findOrderById(id);
        return ord;
    }

    @Override
    public void editorder(Order order) {
        orderMapper.save(order);
    }

    @Override
    public void delorder(Integer id) {
        orderMapper.delete(id);
    }

    @Override
    public void updzhorder(Order order) {
        orderMapper.save(order);
    }

    @Override
    public void delzhorder(Order order) {
        orderMapper.delete(order.getId());
    }

    @Override
    public void addorder(Order order) {
        orderMapper.save(order);
    }

}
