package com.jk.controller;

import com.jk.model.User;
import com.jk.service.HiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * Created by 赵雅楠 on 2018/1/3.
 */
@Controller
public class HiController {
    @Autowired
    private HiService hiService;

    @RequestMapping("us")
    public String us(){
        return "uuu/index";
    }

    @RequestMapping("selqianketiao")
    public Object selqianketiao(){

        return "uuu/heikelist";
    }
    @RequestMapping("selqianke")
    @ResponseBody
    public Object selqianke(String mas,int page,int rows){
        Map<String,Object> list=hiService.findAll(mas,page,rows);
        //model.addAttribute("list",list);
        return list;
    }

    @RequestMapping("selheitiao")
    public String selheitiao(){

        return "redirect:/heilist";
    }

    @RequestMapping("heilist")
    public Object  heilist(Model model){
        List<User> list= hiService.selhei();
        model.addAttribute("list",list);
        return "uuu/heilist";
    }


}
