package com.jk.controller;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.IndexTree;
import com.jk.model.IndexTree2;
import com.jk.model.IndexTree3;
import com.jk.service.IndexTreeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by Administrator on 2017/12/12.
 */
@Controller
@RequestMapping("/indexTreeController")
public class IndexTreeController {

    @Autowired
    private IndexTreeService indexTreeService;


    @RequestMapping("queryIndexTree")
    @ResponseBody
    public Object queryIndexTree(){

        List<IndexTree> indexTree = indexTreeService.queryIndexTree();

        return indexTree;
    }

    @RequestMapping("queryIndexTree2")
    @ResponseBody
    public Object queryIndexTree2(){

        List<IndexTree2> indexTree = indexTreeService.queryIndexTree2();

        return indexTree;
    }

    @RequestMapping("queryIndexTree3")
    @ResponseBody
    public Object queryIndexTree3(){

        List<IndexTree3> indexTree = indexTreeService.queryIndexTree3();

        return indexTree;
    }
    @RequestMapping("beforqueryIndexTree")
    @ResponseBody
    public JSONObject beforqueryIndexTree(){

        JSONObject indexTree = indexTreeService.beforqueryIndexTree();

        return indexTree;
    }

}
