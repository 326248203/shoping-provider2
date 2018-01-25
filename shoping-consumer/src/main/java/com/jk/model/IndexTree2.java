package com.jk.model;

import org.springframework.data.annotation.Transient;

import java.io.Serializable;
import java.util.List;

public class IndexTree2 implements Serializable {
    private static final long serialVersionUID = 4836319945280667255L;
    private Integer id;

    private String text;

    private Integer pid;

    private String url;

    private String state;

    @Transient
    private List<IndexTree2> nodes;//子节点列表   数据库没有该字段

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text == null ? null : text.trim();
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    public List<IndexTree2> getNodes() {
        return nodes;
    }

    public void setNodes(List<IndexTree2> nodes) {
        this.nodes = nodes;
    }
}