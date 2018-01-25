package com.jk.dao;

import com.jk.model.Order;
import com.jk.model.Order2;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by 赵雅楠 on 2018/1/8.
 */
public interface RiskMapper {
   @Select("<script>" +
            "SELECT count(*) from t_order2" +
            "<where>"+
            "<if test=\"name !=null and name !=''\">" +
            "and name like concat('%',#{name},'%' )" +
            "or jinrcp  like concat('%',#{jinrcp},'%' )" +
            "</if>"+
            "</where>"+
            " limit #{start},#{end}" +
            "</script>")
    long getydzcount(Order order);
   @Select("<script>" +
            "SELECT * from t_order2" +
            "<where>"+
            "<if test=\"order2.name !=null and order2.name !=''\">" +
            "and name like concat('%',#{order2.name},'%' )" +
            "or jinrcp  like concat('%',#{order2.jinrcp},'%' )" +
            "</if>"+
            "</where>"+
            " limit #{start},#{end}" +
            "</script>")
    List<Order2> queryydz(@Param("start") int start, @Param("end")int end,@Param("order2") Order order);
}
