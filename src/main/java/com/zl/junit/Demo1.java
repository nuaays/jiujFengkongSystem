package com.zl.junit;

import com.zl.dao.ClassifyDataMapper;
import com.zl.dao.ScorecardMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

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
    private ClassifyDataMapper cd;
    @Autowired
    private ScorecardMapper scorecard;



    @Test
    public void test() throws Exception{

//        ClassifyData cl = cd.queryClassifyById("201810011000");
//        Integer integer = scorecard.insertSelective(new Scorecard("999", "0", "测试数据", "", "0", "12", "0", 4.6, 4.6, "19", "2018-09-08 23:12:12"));
//        System.out.println(integer);
        //Integer integer = scorecard.updateByPrimaryKeySelective(new Scorecard("16", "0", "教育水平", "身份与职业", "0", "12", "0", 4.6, 4.6, "0", "2018-09-08 23:12:12"));
        //System.out.println("---------"+integer);
        //Integer integer = scorecard.deleteByPrimaryKey("2018-09-08 23:12:12");
       // System.out.println(integer);
       // List<Scorecard> scoreCardList = scorecard.selectCategoryChildrenByParentId("0");
        //System.out.println(scoreCardList);

        /*List<String> scoreList = scorecard.queryChildrenParallelCategory("0");
        for(String s:scoreList ){
            System.out.println(s);
        }*/
     /*  Scorecard s = new Scorecard();
        s.setId("194");
        s.setParentId("19");
        Scorecard s2 = new Scorecard();
        s2.setId("196");
        s2.setParentId("19");
        Integer sc = scorecard.updateByPrimaryKeySelective(s);
        Integer sc1 = scorecard.updateByPrimaryKeySelective(s2);
        System.out.println(sc1+"---"+sc);*/

//        List<String> scoreList = scorecard.queryChildrenParallelCategory("0");
//        for(String s1:scoreList ){
//            System.out.println(s1);
//        }
    }

}
