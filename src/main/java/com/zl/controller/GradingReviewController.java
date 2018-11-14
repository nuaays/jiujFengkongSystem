package com.zl.controller;

import com.zl.pojo.ScoringRules;
import com.zl.service.GradingReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("GradingReview")
public class GradingReviewController {
    @Autowired
    GradingReviewService gradingReviewService;
    @RequestMapping("findOneAndCustomer.action")
    public ScoringRules findOneAndCustomer(){
        return  gradingReviewService.findOneAndCustomer();
    }
}
