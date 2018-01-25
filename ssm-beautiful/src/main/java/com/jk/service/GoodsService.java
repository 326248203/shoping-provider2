package com.jk.service;

import com.jk.model.Result;

import java.util.List;

/**
 * Created by 赵雅楠 on 2017/12/28.
 */
public interface GoodsService {
    //List queryGoods();
    Result search(String queryString, String catalog_name, String price, String sort, Integer page);
}
