package com.jk.service;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.IndexTree;
import com.jk.model.IndexTree2;
import com.jk.model.IndexTree3;

import java.util.List;

/**
 * Created by Administrator on 2017/12/12.
 */
public interface IndexTreeService {

    List<IndexTree> queryIndexTree();

    List<IndexTree2> queryIndexTree2();

    List<IndexTree3> queryIndexTree3();

    JSONObject beforqueryIndexTree();
}
