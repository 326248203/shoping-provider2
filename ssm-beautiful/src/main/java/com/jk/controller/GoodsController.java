package com.jk.controller;

import com.jk.model.Result;
import com.jk.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by 赵雅楠 on 2017/12/28.
 */
@Controller
@RequestMapping("goods")
public class GoodsController {
    @Autowired
    private GoodsService goodsService;

    @RequestMapping("list")

    public String queryProduct(Model model, String queryString, String catalog_name, String price, String sort,
                               Integer page) {
        // 根据条件搜索


        Result result = this.goodsService.search(queryString, catalog_name, price, sort, page);

        // 把结果集放到模型中
        model.addAttribute("result", result);

        // 搜索条件数据回显
        model.addAttribute("queryString", queryString);
        model.addAttribute("catalog_name", catalog_name);
        model.addAttribute("price", price);
        model.addAttribute("sort", sort);
        model.addAttribute("page", page);

        return "index";
    }
}
