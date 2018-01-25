package com.jk.dao;

import com.jk.model.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by 赵雅楠 on 2018/1/3.
 */
public interface HiMapper extends JpaRepository<User,Long> {
    User findUserById(int id);

    Page<User> findByNameOrPhone(String mas, String mas1, Pageable pageable);

    Page<User> findByNameOrPhoneLike(String mas, String mas1, Pageable pageable);

    Page<User> findByNameLikeOrPhoneLike(String mas, String mas1, Pageable pageable);
}
