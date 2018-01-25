package com.jk.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class Alipay implements Serializable {
    private static final long serialVersionUID = 7645145707189406225L;
    private Integer id;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date time;

    private String zfbdingdanhao;

    private String dingdannum;

    private String dianpu;

    private String money;

    private String flag;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getZfbdingdanhao() {
        return zfbdingdanhao;
    }

    public void setZfbdingdanhao(String zfbdingdanhao) {
        this.zfbdingdanhao = zfbdingdanhao == null ? null : zfbdingdanhao.trim();
    }

    public String getDingdannum() {
        return dingdannum;
    }

    public void setDingdannum(String dingdannum) {
        this.dingdannum = dingdannum == null ? null : dingdannum.trim();
    }

    public String getDianpu() {
        return dianpu;
    }

    public void setDianpu(String dianpu) {
        this.dianpu = dianpu == null ? null : dianpu.trim();
    }

    public String getMoney() {
        return money;
    }

    public void setMoney(String money) {
        this.money = money == null ? null : money.trim();
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag == null ? null : flag.trim();
    }
}