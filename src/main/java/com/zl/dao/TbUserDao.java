package com.zl.dao;

import com.zl.pojo.TbUser;

import java.util.List;

/**
 * createtime:  2018-11-08
 * auth:  Administrator
 * package:  com.zl.dao
 * description:  $END$
 */
public interface TbUserDao {

    List<TbUser> findAllTbUsers();
}
