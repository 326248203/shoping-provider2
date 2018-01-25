package com.jk.model;

import org.apache.solr.client.solrj.beans.Field;

import java.io.Serializable;

/**
 * Created by 赵雅楠 on 2018/1/2.
 */
public class Product implements Serializable{
    private static final long serialVersionUID = 5312757865545937522L;
    @Field
    private String pid;
    @Field
    private String name;
    @Field
    private String price;
    @Field
    private String picture;

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    @Override
    public String toString() {
        return "Product{" +
                "pid='" + pid + '\'' +
                ", name='" + name + '\'' +
                ", price='" + price + '\'' +
                ", picture='" + picture + '\'' +
                '}';
    }
}
