package com.jk.controller;

import com.jk.model.Order;
import com.jk.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * Created by 赵雅楠 on 2018/1/4.
 */
@Controller
public class OrderController {
    @Resource
    private OrderService orderService;

    @RequestMapping("selordertiao")
    public String selordertiao(){
        return "order/selorder";
    }

    @RequestMapping("selorder")
    @ResponseBody
    public Object selorder(String mas,int page,int rows){
        Map<String,Object> list=orderService.findAll(mas,page,rows);
         return list;
    }

    @RequestMapping("selorderbyid")
    public Object selorderbyid(Integer id, Model model){
        Order ord=orderService.selorderbyid(id);
        model.addAttribute("ord",ord);
        return "order/updateord";
    }

    @RequestMapping("editorder")
    @ResponseBody
    public void editorder(Order order){
        orderService.editorder(order);
    }

    @RequestMapping("delorder")
    @ResponseBody
    public void delorder(Integer id){
        orderService.delorder(id);
    }

    @RequestMapping("addordertiao")
    public String addordertiao(){
        return "order/addorder";
    }
    @RequestMapping("addorder")
    @ResponseBody
    public void addorder(Order order){
        orderService.addorder(order);
    }


   /* 找回订单===========================================*/
    @RequestMapping("selzhordertiao")
    public String selzhordertiao(){
        return "order/selzhorder";
    }

    @RequestMapping("selzhorder")
    @ResponseBody
    public Object selzhorder(String mas,int page,int rows){
        Map<String,Object> list=orderService.selzhorder(mas,page,rows);
        return list;
    }

    @RequestMapping("updbyid")
    public Object updbyid(Integer id, Model model){
        Order ord=orderService.selorderbyid(id);
        model.addAttribute("ord",ord);
        return "order/updatezhord";
    }

    @RequestMapping("updzhorder")
    @ResponseBody
    public void updzhorder(Order order){
        orderService.updzhorder(order);
    }

    @RequestMapping("delzhorder")
    @ResponseBody
    public void delzhorder(Order order){
        orderService.delzhorder(order);
    }



    /* 已拒订单===========================================*/
    @RequestMapping("selyjordertiao")
    public String selyjordertiao(){
        return "order/selyjorder";
    }

    @RequestMapping("selyjorder")
    @ResponseBody
    public Object selyjorder(String mas,int page,int rows){
        Map<String,Object> list=orderService.selzhorder(mas,page,rows);
        return list;
    }
}
