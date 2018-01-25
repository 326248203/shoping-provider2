package com.jk.service.impl;

import com.jk.dao.HiMapper;
import com.jk.model.User;
import com.jk.service.HiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by 赵雅楠 on 2018/1/3.
 */
@Service
//@Cacheable(value="user-key")
public class HiServiceImpl implements HiService {
    @Autowired
    private HiMapper hiMapper;
    @Override
    public Map<String,Object> findAll(String mas,int page,int rows) {

        page = page - 1;
        Sort sort = new Sort(Sort.Direction.DESC, "id");
        Pageable pageable = new PageRequest(page, rows, sort);

        Page<User> list =null;
        if(mas!=null && !"".equals(mas)){
            list = hiMapper.findByNameOrPhone(mas,mas,pageable);
        }else{
            list = hiMapper.findAll(pageable);
        }
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("rows",list.getContent());
        map.put("total",list.getTotalElements());
        return map;

    }

    @Override
    public List<User> selhei() {

        List<User> list = hiMapper.findAll();
        /*Map<String,Object> map = new HashMap<String,Object>();
        map.put("rows",list);*/
        return list;
    }

    @Override
    public User findUserById(int id) {
        return hiMapper.findUserById(id);
    }
}
