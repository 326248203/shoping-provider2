package com.jk.dao;


import com.jk.model.Order2;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

/**
 * Created by 赵雅楠 on 2018/1/8.
 */
public interface RiskMapper {
   @Select("<script>" +
            "SELECT count(*) from t_order2" +
            "<where>" +
           "1 = 1"+
            "<if test=\"name !=null and name !=''\">" +
            "and name like concat('%',#{name},'%' )" +
            "or jinrcp  like concat('%',#{jinrcp},'%' )" +
            "</if>"+
            "</where>"+
            "</script>")
    long getydzcount(Order2 order);
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
    List<Order2> queryydz(@Param("start") int start, @Param("end") int end, @Param("order2") Order2 order);
    @Select("select * from t_order2")
    List<Order2> selriskorder2();
    @Delete("delete from t_order2 where id=#{id}")
    void del(Integer id);
    @Select("select * from t_order2 where id=#{id}")
    Order2 selbyid(Integer id);
}
