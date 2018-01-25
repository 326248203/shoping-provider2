package com.jk.controller;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Subject;
import com.jk.service.SubjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by 赵雅楠 on 2017/12/18.
 */
@Controller
@RequestMapping("subject")
public class SubjectController {
    @Autowired
    private SubjectService subjectService;

    @RequestMapping("selsubject")
    @ResponseBody
    public Object selsubject(int page,int rows,Subject subject){
        JSONObject jsonobj=subjectService.selsubject(page,rows,subject);
        System.out.println(subject.getPid());
        return jsonobj;
    }

    @RequestMapping("updSubjectById")

    public Object updSubjectById(Subject subject, HttpServletRequest res){
        Subject sub=subjectService.updSubjectById(subject);
        res.getSession().setAttribute("sub",sub);
        res.getSession().setAttribute("id",sub.getId());
        return "caiwu/subject/updatesubject";
    }

    @RequestMapping("updatesubject")
    @ResponseBody
    public void updatesubject(Subject subject,HttpServletRequest res){
        int id = (Integer)res.getSession().getAttribute("id");
        subject.setId(id);
        subjectService.updatesubject(subject);
    }

    @RequestMapping("deleteSubjectById")
    @ResponseBody
    public void deleteSubjectById(Subject subject){

        subjectService.deleteSubjectById(subject);
    }

    @RequestMapping("addSubjectTiao")
    public String  addSubjectTiao(){
        return "caiwu/subject/addsubject";
    }

    @RequestMapping("addSubject")
    @ResponseBody
    public void addSubject(Subject subject){

        subjectService.addSubject(subject);
    }

    @RequestMapping("deleteAllSubject")
    @ResponseBody
    public void deleteAllSubject(String ids){

        subjectService.deleteAllSubject(ids);
    }

    @RequestMapping("selerjifu")
    @ResponseBody
    public List selerjifu(Subject sub,HttpServletRequest res){

        List<Subject> list=subjectService.selerjifu(sub);
        res.getSession().setAttribute("list",list);
        return  list;
    }

    @RequestMapping("selerjizi")
    @ResponseBody
    public List selerjizi(Subject sub){
        //sub.setLeibie("支出");
        List<Subject> list=subjectService.selerjizi(sub);
        return  list;
    }
}
