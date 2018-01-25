package com.jk.controller;


import com.jk.model.Order2;
import com.jk.service.RiskService;
import net.sf.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

/**
 * Created by 赵雅楠 on 2018/1/8.
 */
@Controller
public class RiskController {
    @Resource
    private RiskService riskService;

    @RequestMapping("index")
    public String us(){
        return "uuu/index";
    }

    @RequestMapping("selriskordertiao")
    public String selriskordertiao(){
        return "risk/selorder";
    }

    @RequestMapping("selriskorder")
    @ResponseBody
    public Object selriskorder(Order2 order,int page,int rows){


        Map<String,Object> list=riskService.findAll(order,page,rows);

        return  list;
    }

    @RequestMapping("selriskorder2")
    public void selriskorder2(  HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setCharacterEncoding("utf-8");
        List<Order2> list=riskService.selriskorder2();
        PrintWriter out = response.getWriter();
        JSONArray resultJSON = JSONArray.fromObject(list); //根据需要拼装json
        String aa=resultJSON.toString();
        String jsonpCallback = request.getParameter("jsonptest");//客户端请求参数
        out.println(jsonpCallback+"("+aa+")");//返回jsonp格式数据
        out.flush();
        out.close();

    }

    @RequestMapping("del")
    public void del(Order2 order2,  HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println(order2.getId());
        response.setCharacterEncoding("utf-8");
        riskService.del(order2.getId());
        PrintWriter out = response.getWriter();
        String jsonpCallback = request.getParameter("jsonptest");//客户端请求参数
        out.println(jsonpCallback+"({'data':"+3+"})");//返回jsonp格式数据
        out.flush();
        out.close();

    }

    @RequestMapping("selbyid")
    public String selbyid( Order2 order2, HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setCharacterEncoding("utf-8");
        Order2 ord=riskService.selbyid(order2.getId());
        request.getSession().setAttribute("ord",ord);
        PrintWriter out = response.getWriter();
        JSONArray resultJSON = JSONArray.fromObject(ord); //根据需要拼装json
        String aa=resultJSON.toString();
        String jsonpCallback = request.getParameter("jsonptest");//客户端请求参数
        out.println(jsonpCallback+"("+aa+")");//返回jsonp格式数据
        out.flush();
        out.close();
        return  "order/upd";
    }
}
