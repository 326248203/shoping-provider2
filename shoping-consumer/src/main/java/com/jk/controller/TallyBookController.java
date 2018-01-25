package com.jk.controller;

import com.jk.model.TallyBook;
import com.jk.service.TallyBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by 赵雅楠 on 2017/12/20.
 */
@Controller
@RequestMapping("tallybook")
public class TallyBookController {
    @Autowired
    private TallyBookService tallyBookService;

    @RequestMapping("addTallybookTiao")
    public String addTallybookTiao(){
        return "caiwu/tallybook/addtallybook";
    }

    @RequestMapping("addTallybook")
    @ResponseBody
    public void  addTallybook(TallyBook tallyBook){
        tallyBookService.addTallybook(tallyBook);
        //return "redirect:/tallybook/selTallybook.do";
    }

    @RequestMapping("selTallybook")
    @ResponseBody
    public List selTallybook(TallyBook tallyBook, HttpServletRequest res){
        List list= tallyBookService.selTallybook(tallyBook);
        res.getSession().setAttribute("list",list);
        return list;
    }

    @RequestMapping("updTallybookById")
    public String updTallybookById(TallyBook tallyBook, HttpServletRequest res){
        TallyBook tallybook= tallyBookService.updTallybookById(tallyBook);
        res.getSession().setAttribute("tallybook",tallybook);
        res.getSession().setAttribute("id",tallybook.getId());
        return "caiwu/tallybook/updtallybook";
    }

    @RequestMapping("updTallybook")
    @ResponseBody
    public void updTallybook(TallyBook tallyBook, HttpServletRequest res){
        int id = (Integer)res.getSession().getAttribute("id");
        tallyBook.setId(id);
        tallyBookService.updTallybook(tallyBook);
    }

    @RequestMapping("delTallybook")
    @ResponseBody
    public void delTallybook(TallyBook tallyBook, HttpServletRequest res){

        tallyBookService.delTallybook(tallyBook);
    }
}
