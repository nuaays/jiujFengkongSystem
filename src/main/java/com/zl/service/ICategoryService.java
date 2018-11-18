package com.zl.service;

import cn.zl.common.ServerResponse;
import com.zl.pojo.Scorecard;

import java.util.List;

public interface ICategoryService {
    ServerResponse addCategory(Scorecard scorecard);
    ServerResponse updateCategoryName(Scorecard scorecard);
    ServerResponse<List<String>> getChildrenParallelCategory(String categoryId);
    ServerResponse<List<Scorecard>> selectCategoryAndChildrenById(String categoryId);

    Integer deleteScordCard(String id);
}
