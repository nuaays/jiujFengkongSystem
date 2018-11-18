package com.zl.controller;

import cn.zl.common.Const;
import cn.zl.common.ResponseCode;
import cn.zl.common.ServerResponse;
import com.zl.pojo.Admin;
import com.zl.pojo.Scorecard;
import com.zl.service.IAdminService;
import com.zl.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/manage/category")
public class CategoryManageController {


    @Autowired
    private IAdminService iAdminService;

    @Autowired
    private ICategoryService iCategoryService;

    @RequestMapping("add_category.action")
    @ResponseBody
//    gradeType: $scope.classifyData.gradeType,//memberId
//                    childname: $scope.classifyData.childname,
//                    lowgradebanlance: $scope.classifyData.lowgradebanlance,
//                    goal: $scope.classifyData.goal,
//                    parentId: $scope.classifyData.parentId,
//                    updatedate: $scope.classifyData.updatedate
    public ServerResponse addCategory(HttpSession session,String Id ,String gradeType,String childname,String goal,String parentId,@RequestParam(value = "updatedate",defaultValue = "") String updatedate){
        session.setAttribute("currentUser",new Admin("zhangsan","123","1"));
        System.out.println("shenfenGrade=============>"+gradeType+"-------------"+childname);
        System.out.println("插入数据====》"+" Id="+Id+"gradeType="+gradeType+"childname="+childname+"goal="+goal+"parentId="+parentId+"updatedate="+updatedate);

        Admin admin = (Admin)session.getAttribute(Const.CURRENT_USER);
        if(admin == null){
            return ServerResponse.createByErrorCodeMessage(ResponseCode.NEED_LOGIN.getCode(),"用户未登录,请登录");
        }
//        校验一下是否是管理员
        if(iAdminService.checkAdminRole(admin).isSuccess()){
//            是管理员
//            增加我们处理分类的逻辑
            Scorecard scorecard = new Scorecard();
            if(parentId != null){
                scorecard.setParentId(parentId);
            }

            scorecard.setId(Id);
            scorecard.setChildname(childname);
            scorecard.setGradeType(gradeType);
            scorecard.setGoal(Double.parseDouble(goal));
            scorecard.setUpdatedate(updatedate);
            return iCategoryService.addCategory( scorecard);


            //测试数据开始
//            scorecard.setParentId("19");
//            scorecard.setGoal(4.5);
//            scorecard.setGradeType("0");
//            scorecard.setChildname("测试数据");
//            scorecard.setUpdatedate(new Date()+"");
//            scorecard.setId("88888");
//            scorecard.setLowgradebanlance("测试数据最低值");

//            return iCategoryService.addCategory(scorecard);
        }else{
            return ServerResponse.createByErrorMessage("无权限操作,需要管理员权限");
        }
    }

    @RequestMapping("getAllMessage.action")
    @ResponseBody
    public Map<String,Object> showScordCard(Scorecard scorecard,HttpSession session){
        session.setAttribute("currentUser",new Admin("zhangsan","123","3"));
        scorecard.setParentId("0");
        Map<String,Object> map = new HashMap<>();
        ServerResponse showScoreCardDetail = iCategoryService.getChildrenParallelCategory("0");
        ServerResponse<List<Scorecard>> showClassifyRecordDetail = iCategoryService.selectCategoryAndChildrenById("0");

        ServerResponse showScoreCardDetail1 = iCategoryService.getChildrenParallelCategory("1");
        ServerResponse<List<Scorecard>> showClassifyRecordDetail1 = iCategoryService.selectCategoryAndChildrenById("1");

        ServerResponse showScoreCardDetail2 = iCategoryService.getChildrenParallelCategory("3");
        ServerResponse<List<Scorecard>> showClassifyRecordDetail2 = iCategoryService.selectCategoryAndChildrenById("3");

        ServerResponse showScoreCardDetail3 = iCategoryService.getChildrenParallelCategory("4");
        ServerResponse<List<Scorecard>> showClassifyRecordDetail3 = iCategoryService.selectCategoryAndChildrenById("4");

        map.put("sfGrade", showScoreCardDetail);
        map.put("cdGrade", showScoreCardDetail1);
        map.put("zpGrade", showScoreCardDetail2);
        map.put("xyGrade", showScoreCardDetail3);

        System.out.println("-----sfGrade----"+showClassifyRecordDetail);
        System.out.println("-----cdGrade----"+showClassifyRecordDetail1);
        System.out.println("-----zpGrade----"+showClassifyRecordDetail2);
        System.out.println("-----xyGrade----"+showClassifyRecordDetail3);

        return map;

    }

    //查询所有的一级目录
    @RequestMapping("getAllFirstCato.action")
    @ResponseBody
    public Map<String,Object> showFirstCatoScordCard(String id,HttpSession session){
        session.setAttribute("currentUser",new Admin("zhangsan","123","3"));
        if(id==null){
            id="0";
        }

        Map<String,Object> map = new HashMap<>();
        //通过id获得子集
        //ServerResponse<List<String>> showScoreCardDetail = iCategoryService.getChildrenParallelCategory(id);
        ServerResponse<List<Scorecard>> showClassifyRecordDetail = iCategoryService.selectCategoryAndChildrenById(id);
//

        map.put("sfGrade", showClassifyRecordDetail);

        System.out.println("-----sfGrade----"+showClassifyRecordDetail);

        return map;

    }

    //预更新评分卡
    @RequestMapping("preupdateScoreCard.action")
    @ResponseBody
    public Map<String,Object> preupdateScordCard(Scorecard scorecard,HttpSession session){
        session.setAttribute("currentUser",new Admin("zhangsan","123","3"));
        Admin user = (Admin)session.getAttribute(Const.CURRENT_USER);
        if(user == null){
            return null;
        }

        //预先查询到所有的父类表


        scorecard.setParentId("0");
        Map<String,Object> map = new HashMap<>();
        ServerResponse showScoreCardDetail = iCategoryService.getChildrenParallelCategory("0");
        ServerResponse<List<Scorecard>> showClassifyRecordDetail = iCategoryService.selectCategoryAndChildrenById("0");

        ServerResponse showScoreCardDetail1 = iCategoryService.getChildrenParallelCategory("1");
        ServerResponse<List<Scorecard>> showClassifyRecordDetail1 = iCategoryService.selectCategoryAndChildrenById("1");

        ServerResponse showScoreCardDetail2 = iCategoryService.getChildrenParallelCategory("3");
        ServerResponse<List<Scorecard>> showClassifyRecordDetail2 = iCategoryService.selectCategoryAndChildrenById("3");

        ServerResponse showScoreCardDetail3 = iCategoryService.getChildrenParallelCategory("4");
        ServerResponse<List<Scorecard>> showClassifyRecordDetail3 = iCategoryService.selectCategoryAndChildrenById("4");

        map.put("sfGrade", showScoreCardDetail);
        map.put("cdGrade", showScoreCardDetail1);
        map.put("zpGrade", showScoreCardDetail2);
        map.put("xyGrade", showScoreCardDetail3);

        System.out.println("-----sfGrade----"+showClassifyRecordDetail);
        System.out.println("-----cdGrade----"+showClassifyRecordDetail1);
        System.out.println("-----zpGrade----"+showClassifyRecordDetail2);
        System.out.println("-----xyGrade----"+showClassifyRecordDetail3);

        return map;

    }

    //删除评分记录
    @RequestMapping(value="deleteScoreCard.action")
    @ResponseBody
    public ServerResponse delClassifyData(String id,HttpSession session) {
        System.out.println("id==="+id);
        session.setAttribute("currentUser",new Admin("zhangsan","123","1"));
        Admin user = (Admin) session.getAttribute(Const.CURRENT_USER);
        if (user == null) {
            return ServerResponse.createByErrorCodeMessage(ResponseCode.NEED_LOGIN.getCode(), "用户未登录,请登录");
        }
        if(iAdminService.checkAdminRole(user).isSuccess()){
            Integer result = iCategoryService.deleteScordCard(id);
            if(result > 0){
                return ServerResponse.createBySuccessMessage("删除成功");
            }
            return ServerResponse.createByErrorMessage("删除失败");
        }
        return ServerResponse.createByErrorMessage("删除失败,无权限删除此表");
    }


    //需要动态ajax请求
    @RequestMapping("updateScoreCardSelect.action")
    @ResponseBody
    public Map<String,Object> updateScordCard(String parentId,HttpSession session){
        session.setAttribute("currentUser",new Admin("zhangsan","123","3"));
        Map<String,Object> map = new HashMap<>();
        parentId = "0";
        ServerResponse showScoreCardDetail = iCategoryService.getChildrenParallelCategory(parentId);
        ServerResponse<List<Scorecard>> showClassifyRecordDetail = iCategoryService.selectCategoryAndChildrenById(parentId);

        map.put("sfGrade", showScoreCardDetail);
        map.put("showClassifyRecordDetail",showClassifyRecordDetail);

        System.out.println("-----sfGrade----"+showClassifyRecordDetail);

        return map;

    }

    //更新评分卡：
    @RequestMapping("set_category_name.action")
    @ResponseBody
    public ServerResponse setCategoryName(HttpSession session, Scorecard scorecard){
        session.setAttribute("currentUser",new Admin("zhangsan","123","1"));
        Admin user = (Admin)session.getAttribute(Const.CURRENT_USER);
        if(user == null){
            return ServerResponse.createByErrorCodeMessage(ResponseCode.NEED_LOGIN.getCode(),"用户未登录,请登录");
        }
        //测试数据开始
        scorecard.setParentId("19");
        scorecard.setGoal(4.5);
        scorecard.setGradeType("0");
        scorecard.setChildname("测试数据");
        scorecard.setUpdatedate(new Date()+"");
        scorecard.setId("222");
        scorecard.setLowgradebanlance("测试数据最低值");

        if(iAdminService.checkAdminRole(user).isSuccess()){
            //更新categoryName
            return iCategoryService.updateCategoryName(scorecard);
        }else{
            return ServerResponse.createByErrorMessage("无权限操作,需要管理员权限");
        }
    }

    @RequestMapping("get_category.action")
    @ResponseBody
    public ServerResponse getChildrenParallelCategory(HttpSession session,@RequestParam(value = "parentId" ,defaultValue = "0") String parentId){
        session.setAttribute("currentUser",new Admin("zhangsan","123","1"));
        Admin user = (Admin)session.getAttribute(Const.CURRENT_USER);
        System.out.println("=====================根据父id查询子结构");
        if(user == null){
            return ServerResponse.createByErrorCodeMessage(ResponseCode.NEED_LOGIN.getCode(),"用户未登录,请登录");
        }
        if(iAdminService.checkAdminRole(user).isSuccess()){
            //查询子节点的category信息,并且不递归,保持平级
            System.out.println("=====================根据父id查询子结构");

            return iCategoryService.getChildrenParallelCategory(parentId);
        }else{
            return ServerResponse.createByErrorMessage("无权限操作,需要管理员权限");
        }
    }

    @RequestMapping("get_deep_category.action")
    @ResponseBody
    public ServerResponse getCategoryAndDeepChildrenCategory(HttpSession session,@RequestParam(value = "parentId" ,defaultValue = "0") String parentId){
        session.setAttribute("currentUser",new Admin("zhangsan","123","1"));
        Admin admin = (Admin)session.getAttribute(Const.CURRENT_USER);
        if(admin == null){
            return ServerResponse.createByErrorCodeMessage(ResponseCode.NEED_LOGIN.getCode(),"用户未登录,请登录");
        }
        if(iAdminService.checkAdminRole(admin).isSuccess()){
            //查询当前节点的id和递归子节点的id
//            0->10000->100000
            return iCategoryService.selectCategoryAndChildrenById(parentId);

        }else{
            return ServerResponse.createByErrorMessage("无权限操作,需要管理员权限");
        }
    }


}




