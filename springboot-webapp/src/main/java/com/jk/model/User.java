package com.jk.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by 赵雅楠 on 2018/1/3.
 */
@Entity
public class User implements Serializable{
    private static final long serialVersionUID = -7752811156567145848L;
    @Id
    @GeneratedValue
    private Integer id;
    @Column(nullable = true, unique = true)
    private String name;
    @Column(nullable = true)
    private String phone;
    @Column(nullable = true)
    private String idnumber;
    @Column(nullable = true)
    private String qudaoid;
    @Column(nullable = true)
    private String cause;
    @Column(nullable = true)
    private String jinrongcp;
    @Column(nullable = true)
    private String type;
    @Column(nullable = true)
    private Date time;
    @Column(nullable = true)
    private String yewuyuan;
    @Column(nullable = true)
    private String flag;
    @Column(nullable = true)
    private String ss;


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
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getIdnumber() {
        return idnumber;
    }

    public void setIdnumber(String idnumber) {
        this.idnumber = idnumber;
    }

    public String getQudaoid() {
        return qudaoid;
    }

    public void setQudaoid(String qudaoid) {
        this.qudaoid = qudaoid;
    }

    public String getCause() {
        return cause;
    }

    public void setCause(String cause) {
        this.cause = cause;
    }

    public String getJinrongcp() {
        return jinrongcp;
    }

    public void setJinrongcp(String jinrongcp) {
        this.jinrongcp = jinrongcp;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getYewuyuan() {
        return yewuyuan;
    }

    public void setYewuyuan(String yewuyuan) {
        this.yewuyuan = yewuyuan;
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }

    public String getSs() {
        return ss;
    }

    public void setSs(String ss) {
        this.ss = ss;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", idnumber='" + idnumber + '\'' +
                ", qudaoid='" + qudaoid + '\'' +
                ", cause='" + cause + '\'' +
                ", jinrongcp='" + jinrongcp + '\'' +
                ", type='" + type + '\'' +
                ", time=" + time +
                ", yewuyuan='" + yewuyuan + '\'' +
                ", flag='" + flag + '\'' +
                ", ss='" + ss + '\'' +
                '}';
    }
}
