package com.jk.service;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.BiaoJI;

/**
 * Created by 赵雅楠 on 2017/12/15.
 */
public interface BiaoJiService {
    JSONObject selbiaoji(int page, int rows, BiaoJI biaoji);

    void addbiaoji(BiaoJI biaoJI);
}
