package com.zl.dao;

import com.zl.pojo.Scorecard;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ScorecardMapper {
    @Select("select ID,GRADETARGET,CHILDNAME,PARENTNAME,LOWGRADEBANLANCE,HIGHGRADEBANLANCE,GRADETARGET,GOAL,PARENTID,UPDATEDATE from Scorecard")
    List<Scorecard> findAll();
}
