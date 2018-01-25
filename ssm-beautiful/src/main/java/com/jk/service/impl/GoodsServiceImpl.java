package com.jk.service.impl;


import com.jk.model.Product;
import com.jk.model.Result;
import com.jk.service.GoodsService;
import org.apache.commons.lang.StringUtils;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.impl.HttpSolrServer;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by 赵雅楠 on 2017/12/28.
 */
@Service("goodsService")
public class GoodsServiceImpl implements GoodsService{
   /* @Autowired
    private GoodsMapper goodsMapper;*/

    @Autowired
    private HttpSolrServer httpSolrServer;

    @Override
    public Result search(String queryString, String catalog_name, String price, String sort, Integer page) {
        // 创建SolrQuery对象
        SolrQuery solrQuery = new SolrQuery();

        // 设置查询关键词
        if (StringUtils.isNotBlank(queryString)) {
            solrQuery.setQuery(queryString);
        } else {
            solrQuery.setQuery("*:*");
        }
        // 设置默认域
        solrQuery.set("df", "name");

        // 设置商品类名过滤条件
        // 设置商品分类名称
        if (StringUtils.isNotBlank(catalog_name)) {
            catalog_name = "product_catalog_name:" + catalog_name;
        }

        // 设置商品价格
        if (StringUtils.isNotBlank(price)) {
            String[] sp = price.split("-");
            if (sp != null && sp.length == 2) {
                price = "price:[" + sp[0] + " TO " + sp[1] + "]";
            }
        }
        solrQuery.setFilterQueries(catalog_name, price);

        // 商品排序，如果是1，正序排序，如果是其他，则倒序排序
        if ("1".equals(sort)) {
            solrQuery.setSort("price", SolrQuery.ORDER.asc);
        } else {
            solrQuery.setSort("price", SolrQuery.ORDER.desc);
        }

        // 设置分页
        if (page == null) {
            page = 1;
        }
        solrQuery.setStart((page - 1) * 20);
        solrQuery.setRows(20);

        // 设置高亮
        solrQuery.setHighlight(true);
        solrQuery.addHighlightField("name");
        solrQuery.setHighlightSimplePre("<font color='red'>");
        solrQuery.setHighlightSimplePost("</font>");

        // 查询数据
        QueryResponse response;
        try {
            response = httpSolrServer.query(solrQuery);
            // 获取查询总数
            SolrDocumentList results = response.getResults();
            long total = results.getNumFound();

            // 获取高亮数据
            Map<String, Map<String, List<String>>> map = response.getHighlighting();

            // 解析结果集，存放到Product中
            List<Product> products = new ArrayList<Product>();
            for (SolrDocument solrDocument : results) {
                Product product = new Product();
                // 商品id
                product.setPid(solrDocument.get("pid").toString());
                // 商品标题，设置高亮
                List<String> list = map.get(solrDocument.get("pid")).get("name");
                if (list != null && list.size() > 0) {
                    product.setName(list.get(0));
                } else {
                    product.setName(solrDocument.get("name").toString());
                }
                // 商品价格
                product.setPrice(solrDocument.get("price").toString());
                // 商品图片
              if(solrDocument.get("picture")!=null ){
                  product.setPicture(solrDocument.get("picture").toString());
              }


                products.add(product);
            }

            // 封装返回对象
            Result result = new Result();

            result.setCurPage(page);
            result.setRecordCount(total);
            result.setProductList(products);
            // 总页数计算公式(total+rows-1)/rows
            result.setPageCount((int) (total + 20 - 1) / 20);

            return result;
        } catch (SolrServerException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }


        return null;
    }

   /* @Override
    public List queryGoods() {
        return goodsMapper.queryGoods();
    }*/
}
