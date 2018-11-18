package com.zl.controller.base;


import cn.zl.common.Const;
import cn.zl.common.ResponseCode;
import cn.zl.common.ServerResponse;
import com.zl.pojo.Admin;
import com.zl.pojo.ClassifyData;
import com.zl.pojo.ClassifyRecord;
import com.zl.pojo.FenYe;
import com.zl.service.IAdminService;
import com.zl.service.IClassifyDataService;
import com.zl.service.IClassifyRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("/classify")
public class ClassifyRecordController {
	@Autowired
	private IClassifyRecordService classifyRecordServiceImpl;
	@Autowired
	private IClassifyDataService classifyDataServiceImpl;
	@Autowired
	private IAdminService iAdminServiceImpl;

	//分页显示风险等级数据表
	/*@RequestMapping("showClassify.action")
	@ResponseBody
	public List<ClassifyData> showClassify(FenYe fy) {
		fy.setQuery(new ClassifyDataCondition(null, 40.0, 60.0, null,
				null, null, null, null));
		return classifyDataServiceImpl.showClassifyData(fy);


		//使用分页插件传值过去的时候只传Rows--对象和总页数PageCounts

	}*/


	@RequestMapping("showClassify.action")
	@ResponseBody
	/*
	@RequestParam(value="page", required=false) String page,
							  @RequestParam(value="rows", required=false) String rows,
							  @RequestParam(value="title", required=false) String title,
	 */
	public FenYe<ClassifyData> showAllTrainee(FenYe fy){

//		//获取页面分页参数
//		Page pageBean = new Page(Integer.parseInt(page), Integer.parseInt(rows));
//
//		System.out.println(pageBean);
//		Map reMap = new HashMap();
//
//		//分页查询条件
//		Map paraMap = new HashMap();
//
//		paraMap.put("title", title);
//		paraMap.put("firstPage", pageBean.getFirstPage());
//		paraMap.put("endPage", pageBean.getEndPage());
//		try {
//		System.out.println("fy=====>"+fy.toString());
			List<ClassifyData> lists = classifyDataServiceImpl.showClassifyData(fy);
			fy.setLists(lists);
			Map result2 = new HashMap();
			result2.put("fy",fy);
//			long total = classifyDataServiceImpl.queryClassifyRowss(paraMap);
//			reMap.put("rows", list);     //存放每页记录数
//			reMap.put("total", total);   //存放总记录数 ，必须的
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		return fy;
	}


	/**
	 * 查询所有的person内容
	 * @return
	 */
	/*@RequestMapping(value = "showClassify.action")
	public String jumpJsp(Map<String, Object> result, FenYe fy){
		PageHelper.startPage(1 , 8);
		List<ClassifyData> personList = classifyDataServiceImpl.showClassifyData(fy);
		//得到分页的结果对象
		PageInfo<ClassifyData> personPageInfo = new PageInfo<>(personList);
		//得到分页中的person条目对象
		List<ClassifyData> pageList = personPageInfo.getList();
		//将结果存入map进行传送
		result.put("pageInfo" , pageList);
		return "evaluate-list-easyuisplit";
	}*/


	//修改审批意见
	@RequestMapping("updateClassify.action")
	@ResponseBody
	public ServerResponse<Integer> updateClassify(ClassifyData classifyData, HttpSession session) {
		//允许管理员更新，无限制


		Integer result = classifyDataServiceImpl.updateClassify(classifyData);
		if (result == null) {
			return ServerResponse.createByErrorMessage("更新失败");
		}
		Admin user = (Admin) session.getAttribute(Const.CURRENT_USER);
		if (user == null) {
			return ServerResponse.createByErrorCodeMessage(ResponseCode.NEED_LOGIN.getCode(), "用户未登录,请登录");
		}
		if (classifyData.getItemno() != null && iAdminServiceImpl.checkAdminRole(user).isSuccess()){
			classifyDataServiceImpl.insertClassify(classifyData);
		}
		return ServerResponse.createBySuccessMessage("更新成功");
	}




	/*@RequestMapping("showClassify.action")
	public ServerResponse<PageInfo > showClassify(
				@RequestParam(value = "pn", defaultValue = "1") Integer pn,
				@RequestParam(value = "itemno")String itemno,
				@RequestParam(value ="objecttype")String objecttype,
				@RequestParam(value="lowevaluatescore")Double lowevaluatescore,
				@RequestParam(value="highevaluatescore")Double highevaluatescore,
				@RequestParam(value="lowitemvalue")Double lowitemvalue,
				@RequestParam(value="highitemvalue")Double highitemvalue,
				HttpServletResponse response,HttpServletRequest req){
		//req.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		//System.out.println(pn+","+name+","+b_date);
		PageHelper.startPage(pn,5);
		
		List<ClassifyData> booklist = classifyDataServiceImpl.showClassifyDataSpilit(itemno,objecttype,lowevaluatescore,highevaluatescore,lowitemvalue,highitemvalue);
		PageInfo page = new PageInfo(booklist,5);
		//System.out.println(page);
		return ServerResponse.createBySuccess(page);
	}*/

	//增加记录单
	@RequestMapping("insertClassify.action")
	@ResponseBody
	public ServerResponse<String> addClassify(ClassifyData classifyData,HttpSession session) {
	//public ServerResponse<String> addClassify(@RequestParam(value="classifyData") ClassifyData classifyData, HttpSession session) {
		//如果该记录表的项目表编号为null,
		System.out.println("=====================>"+classifyData.toString()+"2222222222222222");
		/*测试数据开始*/
		Admin currentUser = new Admin("zhangsan","123","1");
		session.setAttribute("currentUser",currentUser);
		//Double evaluatescore, String itemno, String itemvalue, String objectno, String objecttype, String serialno) {
		classifyData = new ClassifyData(67.8,"2017090980","78.9","20170908098","对象类型","");
		/*测试数据结束*/
		if (classifyData == null || classifyData.getItemno() == null) {
			return ServerResponse.createByErrorMessage("待新增记录为空，不允许增加");
		}
		Admin user = (Admin) session.getAttribute(Const.CURRENT_USER);
		if (user == null) {
			return ServerResponse.createByErrorCodeMessage(ResponseCode.NEED_LOGIN.getCode(), "用户未登录,请登录");
		}

//		校验一下是否是管理员
		if (classifyData.getItemno() != null && iAdminServiceImpl.checkAdminRole(user).isSuccess()) {
//		是管理员
//		增加我们处理的逻辑  --只允许客户经理创建评估记录表，其余人员不允许增加
			//先从记录表中查询看存不存在该记录的记录表，
			// 如果存在，则 不允许再增加，序列号固定即流水号唯一，不管状态有没有变动，
			if (classifyData.getSerialno() == null || classifyData.getSerialno().equals("")) {
				classifyData.setSerialno(UUID.randomUUID().toString());
				System.out.println(classifyData.getSerialno());
				ClassifyData cd = classifyDataServiceImpl.queryClassifyByserialNo(classifyData.getSerialno());
				System.out.println(cd+"==================空");
				if (cd == null) {
					System.out.println(classifyData.getSerialno());
					Integer result = classifyDataServiceImpl.insertClassify(classifyData);
					System.out.println(classifyData+"==================>"+classifyData.toString());
					if (result > 0) {
						return ServerResponse.createBySuccessMessage("记录增加成功");
					}
					return ServerResponse.createByErrorMessage("记录增加失败");
				}
				return ServerResponse.createByErrorMessage("记录表已经存在，不允许再增加");
			} else {
				//则表明增加的序列号不为空，指定流水号，即是属于支行或分行或总行人员插入记录，不允许插入记录表字段，
				return ServerResponse.createByErrorMessage("无操作权限，不允许插入指定序列号");
			}
		}else {
			return ServerResponse.createByErrorMessage("无权限操作,");
		}
	}

	//更新记录表
	//客户经理的身份可以更改客户经理意见栏，

	//客户经理的审核意见为：同意，才允许支行经理更新他对应的字段

	//支行经理的审核意见为：通过或同意，才允许分行人员更新其对应的字段

	//分行人员审核意见为：通过或同意，才允许分行经理或总行人员更新其对应的字段

	//总行认定人审核意见为：
	@RequestMapping("updateClassifyRecord.action")
	@ResponseBody
	public ServerResponse<String> updateClassifyRecord(ClassifyRecord classifyRecord,HttpSession session){

		/*测试数据开始*/
		Admin currentUser = new Admin("zhangsan","123","3");
		session.setAttribute("currentUser",currentUser);
		classifyRecord.setCustomerid("1");
		classifyRecord.setResult3("通过");
		classifyRecord.setFinishdate("2018-09-07 13:34:!2");
		classifyRecord.setClassifylevel("3");
		classifyRecord.setResultopinion3("建议审贷通过");
		classifyRecord.setClassifyorgid("分行");
		classifyRecord.setSerialno("d80ec189-ce74-4ee2-ba9f-19c52dabc7b5");
		/*测试数据结束*/

		if (classifyRecord == null || classifyRecord.getSerialno() == null) {
			return ServerResponse.createByErrorMessage("待修改的记录表不存在或更改记录为空");
		}
		currentUser = (Admin) session.getAttribute(Const.CURRENT_USER);
		if (currentUser == null) {
			return ServerResponse.createByErrorCodeMessage(ResponseCode.NEED_LOGIN.getCode(), "用户未登录,请登录");
		}
		if (classifyRecord.getSerialno() != null && iAdminServiceImpl.checkAdminRole(currentUser).isSuccess()) {
			//判定为客户经理
			classifyRecord.setClassifylevel(iAdminServiceImpl.checkZhihangRole(currentUser).getData());
			classifyRecord.setClassifyuserid((String)session.getAttribute("username"));
			System.out.println("客户经理更新记录表===>当前角色和认定人为"+classifyRecord.getClassifylevel()+"==========????"+classifyRecord.getClassifyuserid()+"============>");
			Integer result = classifyRecordServiceImpl.updateClassifyRecord(classifyRecord);
			if(result > 0 ){
				return ServerResponse.createBySuccessMessage("客户经理更新记录表成功");
			}
		}


		if(classifyRecord.getSerialno() != null && iAdminServiceImpl.checkZhihangRole(currentUser).isSuccess()){
			//判定为支行人员
			classifyRecord.setClassifylevel(iAdminServiceImpl.checkZhihangRole(currentUser).getData());
			classifyRecord.setClassifyuserid((String)session.getAttribute("username"));
			classifyRecord.setLastresult(classifyRecord.getResult1());
			System.out.println("支行更新记录表===>当前角色和认定人为"+classifyRecord.getClassifylevel()+"==========????"+classifyRecord.getClassifyuserid()+"============>");
			ClassifyRecord classifyRecord1 = classifyRecordServiceImpl.queryClassifyRecordByserialNo(classifyRecord.getSerialno());
			classifyRecord.setLastresult(classifyRecord1.getResult2());
			if(classifyRecord1.getResult1() !=null && classifyRecord1.getResult1().contains("通过")){
				Integer result = classifyRecordServiceImpl.updateClassifyRecord(classifyRecord);
				if(result > 0 ){
					return ServerResponse.createBySuccessMessage("分行更新记录表成功");
				}
			}
			return ServerResponse.createByErrorMessage("非法操作");
		}

		if(classifyRecord.getSerialno() != null && iAdminServiceImpl.checkFenHangRole(currentUser).isSuccess()){
			//判定为支行人员
			String classifyLevel = iAdminServiceImpl.checkFenHangRole(currentUser).getData();
			classifyRecord.setClassifylevel(classifyLevel);
			classifyRecord.setClassifyuserid((String)session.getAttribute("username"));//测试
			classifyRecord.setLastresult(classifyRecord.getResult2());
			System.out.println("分行更新记录表===>当前角色和认定人为"+classifyRecord.getClassifylevel()+"==========????"+classifyRecord.getClassifyuserid()+"============>");
			ClassifyRecord classifyRecord1 = classifyRecordServiceImpl.queryClassifyRecordByserialNo(classifyRecord.getSerialno());
			classifyRecord.setLastresult(classifyRecord1.getResult2());
			System.out.println("分行当前判断有没有getResult2支行审核结果 ：=========");//应该从表中查询出来结果
			if(classifyRecord1.getResult2() !=null && classifyRecord1.getResult2().contains("通过")){
				Integer result = classifyRecordServiceImpl.updateClassifyRecord(classifyRecord);
				if(result > 0 ){
					return ServerResponse.createBySuccessMessage("分行经理更新记录表成功");
				}
			}
			return ServerResponse.createByErrorMessage("非法操作");
		}

		if(classifyRecord.getSerialno() != null && iAdminServiceImpl.checkFenhangManagerRole(currentUser).isSuccess()){
			//判定为支行人员
			classifyRecord.setClassifylevel(iAdminServiceImpl.checkFenhangManagerRole(currentUser).getData());
			classifyRecord.setClassifyuserid((String)session.getAttribute("username"));
//			classifyRecord.setLastresult(classifyRecord.getResult3());
			ClassifyRecord classifyRecord1 = classifyRecordServiceImpl.queryClassifyRecordByserialNo(classifyRecord.getSerialno());
			classifyRecord.setLastresult(classifyRecord1.getResult3());
			System.out.println("分行经理更新记录表===>当前角色和认定人为"+classifyRecord.getClassifylevel()+"==========????"+classifyRecord.getClassifyuserid()+"============>");

			if(classifyRecord1.getResult3() !=null && classifyRecord1.getResult3().contains("通过")){
				Integer result = classifyRecordServiceImpl.updateClassifyRecord(classifyRecord);
				if(result > 0 ){
					return ServerResponse.createBySuccessMessage("总行人员更新记录表成功");
				}
			}
			return ServerResponse.createByErrorMessage("非法操作");
		}


		if( classifyRecord.getSerialno() != null && iAdminServiceImpl.checkFinalRole(currentUser).isSuccess()){
			//判定为支行人员
			classifyRecord.setClassifylevel(iAdminServiceImpl.checkFinalRole(currentUser).getData());
			classifyRecord.setClassifyuserid((String)session.getAttribute("username"));
			ClassifyRecord classifyRecord1 = classifyRecordServiceImpl.queryClassifyRecordByserialNo(classifyRecord.getSerialno());
			classifyRecord.setLastresult(classifyRecord1.getResult4());
			System.out.println("总行更新记录表===>当前角色和认定人为"+classifyRecord.getClassifylevel()+"==========????"+classifyRecord.getClassifyuserid()+"============>");

			if(classifyRecord1.getResult4() !=null  && classifyRecord1.getResult4().contains("通过")){
				Integer result = classifyRecordServiceImpl.updateClassifyRecord(classifyRecord);
				if(result > 0 ){
					return ServerResponse.createBySuccessMessage("总行人员更新记录表成功");
				}
			}
			return ServerResponse.createByErrorMessage("非法操作");
		}
		return ServerResponse.createByErrorMessage("更新失败");
	}
	
	
	
	
	//批量导出
	
	
	
	//查看评估记录详情页
	/*public List<ClassifyRecord> showClassifyRecord(){
		
		return classifyRecordServiceImpl.showClassifyRecord();
	}*/
	
	
	//查询评分记录表详情
	@RequestMapping("showClassifyRecordDetail.action")
	@ResponseBody
	public Map<String,Object> showclassifyRecordDetail(String serialno){
		System.out.println(serialno+"...........asfjd.....");
//		serialno="201810010901";
		Map<String,Object> map = new HashMap<>();
		ServerResponse<ClassifyRecord> showClassifyRecordDetail = classifyRecordServiceImpl.showClassifyRecordDetail(serialno);
		map.put("sr", showClassifyRecordDetail);
		System.out.println("---------"+showClassifyRecordDetail);
		System.out.println(showClassifyRecordDetail.getData().getBusinessbalance());
		return map;

	}
	
	
	
	//增加评分记录-----------------------------------------------------------改动了classifyRecord
	@RequestMapping(value="insertClassifyRecordDetail.action")
	@ResponseBody
	public ServerResponse<String> insertClassifyRecord(ClassifyData classifyData,ClassifyRecord classifyRecord, HttpSession session){
		/*if(cr == null) {
			return ServerResponse.createByErrorMessage("预增加的记录信息为空");
		}
		cr.setBusinessbalance(2323.23);
		cr.setClassify("1");
		cr.setClassifylevel("1");
		cr.setCustomerid("2");
		cr.setFinishdate2("2018-09-08 12:23:22");
		cr.setCustomerid("1001");
		cr.setFirstresult("初审通过");
		cr.setResult1("初次审批通过");
		cr.setReservesum(23333.9);*/
		session.setAttribute("currentUser",new Admin("zhangsan","123","1"));
		//应该根据序列号查询
		System.out.println("classifyData=="+classifyData);
		classifyData = classifyDataServiceImpl.queryClassifyByserialNo(classifyData.getSerialno());
		System.out.println(classifyData.toString()+"---------------------------------------------");
		//先判断该用户有没有登陆，如果未登录，则让其登陆，
		if (classifyData == null ) {
			return ServerResponse.createByErrorMessage("待新增记录为空，不允许增加");
		}

		Admin user = (Admin) session.getAttribute(Const.CURRENT_USER);
		if (user == null) {
			return ServerResponse.createByErrorCodeMessage(ResponseCode.NEED_LOGIN.getCode(), "用户未登录,请登录");
		}

		//怎样事先获得改项目的流水号，，，，客户经理增加对应的表时即会产生流水号，如何获得刚刚新建的流水号，有没有什么关系

//		ClassifyRecord classifyRecord = new ClassifyRecord();
		classifyRecord.setSerialno(classifyData.getSerialno());
		classifyRecord.setAccountmonth("1");
		classifyRecord.setObjectno(classifyData.getObjectno());
		classifyRecord.setObjecttype(classifyData.getObjecttype());
		System.out.println(classifyRecord.toString()+"??????????????????????????????????");
		if(classifyRecord.getSerialno() != null && iAdminServiceImpl.checkAdminRole(user).isSuccess()) {
			//如果角色是客户经理，则需要做的工作是向记录表中添加字段-项目编号，流水号，


			//classifyData.getItemno();
			//需要将客户id查询出来记录上：通过项目查询客户
			//模拟
			classifyRecord.setCustomerid("张三");

			Integer cd = classifyRecordServiceImpl.queryClassifyByserialNo(classifyRecord.getSerialno());
			if(cd==null || cd <=0) {
				//创建记录表
				ServerResponse<String> stringServerResponse = classifyRecordServiceImpl.insertClassifyRecord(classifyRecord);

				if(stringServerResponse.isSuccess()) {
					return ServerResponse.createBySuccessMessage("创建记录表成功");
				}
				return ServerResponse.createByErrorMessage("创建记录表失败");
			}

		}else {
			//如果角色是其他，则不允许创建，只许更改。
			return ServerResponse.createByErrorMessage("无操作权限");
		}
		return ServerResponse.createByErrorMessage("操作失败");
	}



}
