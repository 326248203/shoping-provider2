package com.jk.controller;


import com.alibaba.fastjson.JSONObject;
import com.jk.model.BiaoJI;
import com.jk.service.BiaoJiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.List;

/**
 * Created by 赵雅楠 on 2017/12/15.
 */
@Controller
@RequestMapping("biaoji")
public class BiaoJIController {

    @Autowired
    private BiaoJiService biaoJiService;

    @RequestMapping("selbiaoji")
    @ResponseBody
    public Object selbiaoji(int page,int rows, BiaoJI biaoji){
        JSONObject jsonobj=biaoJiService.selbiaoji(page,rows,biaoji);
        return jsonobj;
    }

    @RequestMapping("addbiaojitiao")
    public String addbiaojitiao(){

        return "caiwu/biaoji/addbiaoji";
    }
    @RequestMapping("addbiaoji")
    @ResponseBody
    public void addbiaoji(BiaoJI biaoJI){

        biaoJiService.addbiaoji(biaoJI);
    }
}
