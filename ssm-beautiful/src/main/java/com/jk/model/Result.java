package com.jk.model;

import java.io.Serializable;
import java.util.List;

/**
 * Created by 赵雅楠 on 2018/1/2.
 */
public class Result implements Serializable{
    private static final long serialVersionUID = -2893935077305125416L;
    private Integer curPage;// 当前页
    private Integer pageCount;// 总页数
    private Long recordCount;// 数据总条数
    private List<Product> productList;// 商品结果集

    public Integer getCurPage() {
        return curPage;
    }

    public void setCurPage(Integer curPage) {
        this.curPage = curPage;
    }

    public List<Product> getProductList() {
        return productList;
    }

    public void setProductList(List<Product> productList) {
        this.productList = productList;
    }

    public Long getRecordCount() {
        return recordCount;
    }

    public void setRecordCount(Long recordCount) {
        this.recordCount = recordCount;
    }

    public Integer getPageCount() {
        return pageCount;
    }

    public void setPageCount(Integer pageCount) {
        this.pageCount = pageCount;
    }

    @Override
    public String toString() {
        return "Result{" +
                "curPage=" + curPage +
                ", pageCount=" + pageCount +
                ", recordCount=" + recordCount +
                ", productList=" + productList +
                '}';
    }
}
