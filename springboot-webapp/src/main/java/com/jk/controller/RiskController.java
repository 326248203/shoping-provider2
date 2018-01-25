package com.jk.controller;

import com.jk.model.Order;
import com.jk.model.Order2;
import com.jk.service.RiskService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.Map;

/**
 * Created by 赵雅楠 on 2018/1/8.
 */
@Controller
public class RiskController {
    @Resource
    private RiskService riskService;

    @RequestMapping("selriskordertiao")
    public String selordertiao(){
        return "rick/selorder";
    }

    @RequestMapping("selriskorder")
    @ResponseBody
    public Object selriskorder(Order order, int page, int rows){
        Map<String,Object> list=riskService.findAll(order,page,rows);
        return list;
    }
}
