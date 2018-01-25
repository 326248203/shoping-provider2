package com.jk.service;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Alipay;

import java.util.List;

/**
 * Created by 赵雅楠 on 2017/12/22.
 */
public interface AlipayService {
    JSONObject selydalipay(int page, int rows, Alipay alipay);

    JSONObject selwdalipay(int page, int rows, Alipay alipay);

    List selalipay(Alipay alipay);
}
