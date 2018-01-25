package com.jk.service;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Subject;

import java.util.List;

/**
 * Created by 赵雅楠 on 2017/12/18.
 */
public interface SubjectService {
    JSONObject selsubject(int page, int rows, Subject subject);

    Subject updSubjectById(Subject subject);

    void updatesubject(Subject subject);

    void deleteSubjectById(Subject subject);

    void addSubject(Subject subject);

    void deleteAllSubject(String ids);

    List selerjifu(Subject sub);

    List selerjizi(Subject sub);
}
