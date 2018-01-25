package com.jk.controller;

import com.jk.model.ProductInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * Created by 赵雅楠 on 2018/1/11.
 */
@Controller
public class ProductController {
    @Autowired
    private MongoTemplate mongoTemplate;

    @RequestMapping("delproduct")
    @ResponseBody
    public void delproduct(String id){
        System.out.print(id);
        ProductInfo productInfo=new ProductInfo();
        productInfo.setId(id);
        mongoTemplate.remove(productInfo);

    }

    @RequestMapping("addproducttiao")
    public String addproducttiao(){
        return "product/addpro";
    }

    @RequestMapping("addProduct")
    @ResponseBody
    public void addProduct(ProductInfo productInfo){
        productInfo.setId(UUID.randomUUID().toString());
        mongoTemplate.save(productInfo);
    }

    @RequestMapping("selproducttiao")
    public String selproducttiao(){
        return "product/selpro";
    }

    @RequestMapping("selproduct")
    @ResponseBody
    public Object selproduct(int page,int rows,HttpServletResponse response){
       Query query = new Query();
       //分页
       int start = (page-1) * rows;
       query.skip(start);
       query.limit(rows);
       //查询总条数
       int total =  (int) mongoTemplate.count(query, ProductInfo.class);
       //查询每页数据
       List<ProductInfo> productInfos = mongoTemplate.find(query, ProductInfo.class);
       //实例化jsonobject对象存值
       Map<String,Object> map=new HashMap<>();
       map.put("total", total);
       map.put("rows", productInfos);
       return map;
   }


}
