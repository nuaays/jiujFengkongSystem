package com.zl.dao;

import com.zl.pojo.Scorecard;

import java.util.List;

public interface ScorecardMapper {

    Integer deleteByPrimaryKey(String id);

    Integer insertSelective(Scorecard scorecard);

    Scorecard selectByPrimaryKey(String id);

    Integer updateByPrimaryKeySelective(Scorecard scorecard);

    List<Scorecard> selectCategoryChildrenByParentId(String parentId);

    List<String> queryChildrenParallelCategory(String parentId);

    List<Scorecard> findAll();
}
