package com.jk.dao;

import com.jk.model.Order;
import com.jk.model.Order2;
import com.jk.model.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * Created by 赵雅楠 on 2018/1/4.
 */
public interface OrderMapper extends JpaRepository<Order, Integer> {
   Page<User> findByNameOrQdaoidOrOrdernumberOrJinrcp(String mas, String mas1, String mas2, String mas3, Pageable pageable);

    Page<Order> findAll(Pageable pageable);

   Page<Order> findByNameOrQdaoidOrJinrcp(String mas, String mas1, String mas2, Pageable pageable);

    Page<Order> findByOrdernumberOrNameOrQdaoidOrJinrcp(String mas, String mas1, String mas2, Pageable pageable);

    Order findById(Integer id);

    Order findOrderById(Integer id);

    @Select("<script>" +
            "SELECT count(*) from t_order" +
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
            "SELECT * from t_order" +
            "<where>"+
            "<if test=\"order2.name !=null and order2.name !=''\">" +
            "and name like concat('%',#{order2.name},'%' )" +
            "or jinrcp  like concat('%',#{order2.jinrcp},'%' )" +
            "</if>"+
            "</where>"+
            " limit #{start},#{end}" +
            "</script>")
    List<Order2> queryydz(@Param("start") int start, @Param("end")int end, @Param("order2") Order order2);

}
