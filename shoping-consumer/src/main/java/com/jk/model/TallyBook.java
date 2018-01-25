package com.jk.model;

import java.io.Serializable;

public class TallyBook implements Serializable{
    private static final long serialVersionUID = -2031389298513965697L;
    private Integer id;

    private String name;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }
}