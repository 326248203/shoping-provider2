package com.jk.controller;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Alipay;
import com.jk.service.AlipayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by 赵雅楠 on 2017/12/22.
 */
@Controller
@RequestMapping("alipay")
public class AlipayController {
    @Autowired
    private AlipayService alipayService;

    /**
     * 查询已到账
     * @return
     */
    @RequestMapping("selydalipay")
    @ResponseBody
    public Object selydalipay(int page, int rows, Alipay alipay){
        JSONObject jsonobj=alipayService.selydalipay(page,rows,alipay);
        return jsonobj;
    }

    /**
     * 查询未到账
     * @return
     */
    @RequestMapping("selwdalipay")
    @ResponseBody
    public Object selwdalipay(int page, int rows, Alipay alipay, HttpServletRequest res){
        JSONObject jsonobj=alipayService.selwdalipay(page,rows,alipay);
        List list= alipayService.selalipay(alipay);
        res.getSession().setAttribute("alipaylist",list);
        return jsonobj;
    }

}
