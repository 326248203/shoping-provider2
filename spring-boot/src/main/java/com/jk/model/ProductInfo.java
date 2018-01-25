package com.jk.model;



import org.springframework.data.mongodb.core.mapping.Document;

import java.io.Serializable;

/**
 * Created by Administrator on 2018/1/5.
 */
@Document(collection="prolist")
public class ProductInfo implements Serializable{

    private static final long serialVersionUID = -2887323620427802873L;
    private String id;
    private String pname;
    private String ptype;
    private String pstate;
    private String popentime;
    private String presource;
    private String plilv;
    private String pqixian;
    private String pmethod;
    private String pedu;
    private String ppactid;

    @Override
    public String toString() {
        return "ProductInfo{" +
                "id=" + id +
                ", pname='" + pname + '\'' +
                ", ptype='" + ptype + '\'' +
                ", pstate='" + pstate + '\'' +
                ", popentime='" + popentime + '\'' +
                ", presource='" + presource + '\'' +
                ", plilv='" + plilv + '\'' +
                ", pqixian='" + pqixian + '\'' +
                ", pmethod='" + pmethod + '\'' +
                ", pedu='" + pedu + '\'' +
                ", ppactid='" + ppactid + '\'' +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPtype() {
        return ptype;
    }

    public void setPtype(String ptype) {
        this.ptype = ptype;
    }

    public String getPstate() {
        return pstate;
    }

    public void setPstate(String pstate) {
        this.pstate = pstate;
    }

    public String getPopentime() {
        return popentime;
    }

    public void setPopentime(String popentime) {
        this.popentime = popentime;
    }

    public String getPresource() {
        return presource;
    }

    public void setPresource(String presource) {
        this.presource = presource;
    }

    public String getPlilv() {
        return plilv;
    }

    public void setPlilv(String plilv) {
        this.plilv = plilv;
    }

    public String getPqixian() {
        return pqixian;
    }

    public void setPqixian(String pqixian) {
        this.pqixian = pqixian;
    }

    public String getPmethod() {
        return pmethod;
    }

    public void setPmethod(String pmethod) {
        this.pmethod = pmethod;
    }

    public String getPedu() {
        return pedu;
    }

    public void setPedu(String pedu) {
        this.pedu = pedu;
    }

    public String getPpactid() {
        return ppactid;
    }

    public void setPpactid(String ppactid) {
        this.ppactid = ppactid;
    }
}
