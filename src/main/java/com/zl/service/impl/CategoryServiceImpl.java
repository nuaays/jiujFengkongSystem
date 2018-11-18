package com.zl.service.impl;

import cn.zl.common.ServerResponse;
import com.zl.dao.ScorecardMapper;
import com.zl.pojo.Scorecard;
import com.zl.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CategoryServiceImpl implements ICategoryService {

    @Autowired
    private ScorecardMapper scoreMapper;
    @Override
    public ServerResponse addCategory(Scorecard scorecard) {
        System.out.println("scorecard===============>"+scorecard.toString());
        if(scorecard==null || scorecard.equals("")){
            return ServerResponse.createByErrorMessage("待增加的种类为空");
        }
        Integer result = scoreMapper.insertSelective(scorecard);
        if(result > 0){
            return ServerResponse.createBySuccessMessage("新评分增加成功");
        }

        return ServerResponse.createByErrorMessage("增加失败");
    }

    @Override
    public ServerResponse updateCategoryName(Scorecard scorecard) {
        //判断当前用户身份，如果为超级管理员，则允许更改，否则不允许更改分类表

        if(scorecard == null || scorecard.equals("")){
            return ServerResponse.createByErrorMessage("");
        }
        Integer result = scoreMapper.updateByPrimaryKeySelective(scorecard);
        if(result > 0){
            return ServerResponse.createBySuccessMessage("更改成功");
        }

        return ServerResponse.createByErrorMessage("更新失败");
    }

    @Override
    public ServerResponse<List<String>> getChildrenParallelCategory(String categoryId) {
        if(categoryId == null && categoryId.equals("")){
            return null;
        }
        List<String> scorecard = scoreMapper.queryChildrenParallelCategory(categoryId);
        if(scorecard == null){
            return ServerResponse.createByError();
        }
        return ServerResponse.createBySuccess(scorecard);
    }

    @Override
    public ServerResponse<List<Scorecard>> selectCategoryAndChildrenById(String categoryId) {
        if(categoryId == null && categoryId.equals("")){
            return null;
        }
        List<Scorecard> scorecard = scoreMapper.selectCategoryChildrenByParentId(categoryId);
        if (scorecard == null ){
            return ServerResponse.createByError();
        }

        return ServerResponse.createBySuccess(scorecard);
    }

    @Override
    public Integer deleteScordCard(String id) {
        if(id == null ){
            return null;
        }

        return scoreMapper.deleteByPrimaryKey(id);
    }

}
