package com.zl.junit;

import com.zl.dao.TbUserDao;
import com.zl.pojo.TbUser;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * createtime:  2018-11-08
 * auth:  Administrator
 * package:  com.zl.junit
 * description:  $END$
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:springIOC.xml","classpath:springMVC.xml"})
public class Demo1 {

    @Autowired
    private TbUserDao tbUserDao;



    @Test
    public void test() throws Exception{

        List<TbUser> allTbUser = tbUserDao.findAllTbUsers();

        System.out.println(allTbUser);
    }
}
