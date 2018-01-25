package com.jk.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by 赵雅楠 on 2018/1/4.
 */

public class Order2 implements Serializable{
    private static final long serialVersionUID = -7789842590477136314L;

    private Integer id;

    private String ordernumber;

    private String zhanghao;

    private String name;

    private String qdaoid;

    private String jinrcp;

    private String cptype;

    private Date time;

    private String fengkongzl;

    private String hetong;

    private String ordertype;

    private String yuanyin;

    public String getYuanyin() {
        return yuanyin;
    }

    public void setYuanyin(String yuanyin) {
        this.yuanyin = yuanyin;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOrdernumber() {
        return ordernumber;
    }

    public void setOrdernumber(String ordernumber) {
        this.ordernumber = ordernumber;
    }

    public String getZhanghao() {
        return zhanghao;
    }

    public void setZhanghao(String zhanghao) {
        this.zhanghao = zhanghao;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getQdaoid() {
        return qdaoid;
    }

    public void setQdaoid(String qdaoid) {
        this.qdaoid = qdaoid;
    }

    public String getJinrcp() {
        return jinrcp;
    }

    public void setJinrcp(String jinrcp) {
        this.jinrcp = jinrcp;
    }

    public String getCptype() {
        return cptype;
    }

    public void setCptype(String cptype) {
        this.cptype = cptype;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getFengkongzl() {
        return fengkongzl;
    }

    public void setFengkongzl(String fengkongzl) {
        this.fengkongzl = fengkongzl;
    }

    public String getHetong() {
        return hetong;
    }

    public void setHetong(String hetong) {
        this.hetong = hetong;
    }

    public String getOrdertype() {
        return ordertype;
    }

    public void setOrdertype(String ordertype) {
        this.ordertype = ordertype;
    }


    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", ordernumber='" + ordernumber + '\'' +
                ", zhanghao='" + zhanghao + '\'' +
                ", name='" + name + '\'' +
                ", qdaoid='" + qdaoid + '\'' +
                ", jinrcp='" + jinrcp + '\'' +
                ", cptype='" + cptype + '\'' +
                ", time=" + time +
                ", fengkongzl='" + fengkongzl + '\'' +
                ", hetong='" + hetong + '\'' +
                ", ordertype='" + ordertype + '\'' +
                ", yuanyin='" + yuanyin + '\'' +
                '}';
    }
}
