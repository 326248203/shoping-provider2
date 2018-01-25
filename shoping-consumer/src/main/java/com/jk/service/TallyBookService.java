package com.jk.service;

import com.jk.model.TallyBook;

import java.util.List;

/**
 * Created by 赵雅楠 on 2017/12/20.
 */
public interface TallyBookService {
    void addTallybook(TallyBook tallyBook);

    List selTallybook(TallyBook tallyBook);

    TallyBook updTallybookById(TallyBook tallyBook);

    void updTallybook(TallyBook tallyBook);

    void delTallybook(TallyBook tallyBook);
}
