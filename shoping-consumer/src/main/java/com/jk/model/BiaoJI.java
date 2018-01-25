package com.jk.model;

import java.io.Serializable;

public class BiaoJI implements Serializable{
    private static final long serialVersionUID = 6762857040040142462L;
    private Integer id;

    private String biaojigjc;

    private String shiyongdianpu;

    private String pipeiguize;

    private String money;

    private String mobanname;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBiaojigjc() {
        return biaojigjc;
    }

    public void setBiaojigjc(String biaojigjc) {
        this.biaojigjc = biaojigjc == null ? null : biaojigjc.trim();
    }

    public String getShiyongdianpu() {
        return shiyongdianpu;
    }

    public void setShiyongdianpu(String shiyongdianpu) {
        this.shiyongdianpu = shiyongdianpu == null ? null : shiyongdianpu.trim();
    }

    public String getPipeiguize() {
        return pipeiguize;
    }

    public void setPipeiguize(String pipeiguize) {
        this.pipeiguize = pipeiguize == null ? null : pipeiguize.trim();
    }

    public String getMoney() {
        return money;
    }

    public void setMoney(String money) {
        this.money = money == null ? null : money.trim();
    }

    public String getMobanname() {
        return mobanname;
    }

    public void setMobanname(String mobanname) {
        this.mobanname = mobanname == null ? null : mobanname.trim();
    }
}