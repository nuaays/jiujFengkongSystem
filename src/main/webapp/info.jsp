<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<HEAD>
<base href="<%=basePath%>">
<TITLE>一卡通|借记卡分类一览表_招商银行</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<SCRIPT language="javascript" src="info_files/jquery-1.10.2.js" type="text/javascript"></SCRIPT>

<SCRIPT language="javascript" src="info_files/jquery.cookie.js" type="text/javascript"></SCRIPT>

<SCRIPT type="text/javascript">
    jQuery.noConflict(); 
</SCRIPT>

<SCRIPT language="javascript" src="info_files/NetBank.js" type="text/javascript"></SCRIPT>

<SCRIPT language="javascript" src="info_files/Common.js" type="text/javascript"></SCRIPT>
<LINK href="../../cmb.ico" rel="Shortcut Icon">
<LINK href="../../cmb.ico" rel="Bookmark">
<LINK href="../../touch-icon-ipad.png" rel="apple-touch-icon" sizes="72x72">
<LINK href="info_files/Common.css" rel="stylesheet" type="text/css">
<LINK href="info_files/header.css" rel="stylesheet" type="text/css">
<LINK href="info_files/footer.css" rel="stylesheet" type="text/css">
<LINK href="info_files/Personal.css" rel="stylesheet" type="text/css">
<META name="keywords" content="储蓄卡,银行卡,借记卡,M+卡,金卡,金葵花卡,一卡通">
<META name="description" content="招商银行一卡通优惠多多,开卡刷卡均有好礼相送.一卡通申请,储蓄卡卡片分类,银行卡卡类大全,一卡通专属权益,还有更多优惠活动尽在招商银行一卡通频道,招商银行一卡通开启您最贴心的银行服务!">
<META name="GENERATOR" content="MSHTML 11.00.9600.17842">
<style type="text/css">
.gray {
	background-color: #ffffff;
}

.gray td {
	height: 30px;
	font-size: 16px;
	width: 139px;
}

.gray td:first-child {
	text-align: right;
	height: 33px;
	width: 107px;
}

.gray td:last-child {
	width: 36px;
}

.gray td input {
	height: 20px;
}

.gray td select {
	height: 30px;
	width: 150px;
}
</style>
</HEAD>
<BODY>
		<DIV class="aspNetHidden">
			<INPUT name="__VIEWSTATE" id="__VIEWSTATE" type="hidden" value="/wEPDwULLTE5NjQxMjE5MDJkZPPzyw0vaYv0ZU7USlVzs93TJZ4IFRzjJzptxPGxHpa0">
		</DIV>
		<DIV class="aspNetHidden">
			<INPUT name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" type="hidden" value="0AEADED8">
		</DIV>
		<DIV id="top_bar">
			<TABLE align="center" class="FrameTable" style="line-height: 32px;" cellspacing="0">
				<TBODY>
					<TR>
						<TD width="25"></TD>
						<TD width="60" align="center" id="tdf_1" style="display: none;">
							<A href="javascript:toGB2312()" otype="文字链接" oname="简体中文" cname="顶部导航">简体中文</A>
						</TD>
						<TD class="version_left" id="tdf_2" style="display: none;"></TD>
						<TD width="49" class="version_bg" id="tdf_3" style="display: none;">
							<A href="javascript:toBig5()" otype="文字链接" oname="繁体中文" cname="顶部导航">繁体中文</A>
						</TD>
						<TD class="version_right" id="tdf_4" style="display: none;"></TD>
						<TD class="version_left" id="tdj_1"></TD>
						<TD width="49" class="version_bg" id="tdj_2">
							<A href="javascript:toGB2312()" otype="文字链接" oname="简体中文" cname="顶部导航">简体中文</A>
						</TD>
						<TD class="version_right" id="tdj_3"></TD>
						<TD width="60" align="center" id="tdj_4">
							<A href="javascript:toBig5()" otype="文字链接" oname="繁体中文" cname="顶部导航">繁体中文</A>
						</TD>
						<TD width="60" align="center">
							<fjtignoreurl> <A href="http://english.cmbchina.com/" target="_blank" otype="文字链接" oname="English" cname="顶部导航">English</A></fjtignoreurl>
						</TD>
						<TD width="200"></TD>
						<TD align="right">
							<DIV id="common_navlink">
								<UL>
									<LI>
										<c:if test="${loginUser==null}">
											<A href="user/login.action" otype="文字链接" oname="一网通登录" cname="顶部导航">一网通登录</A>
										</c:if>
										<c:if test="${loginUser!=null}">
											<A href="user/index.action" otype="文字链接" oname="一网通登录" cname="顶部导航">${loginUser.userName }</A>
										</c:if>
									</LI>

									<LI>|</LI>
									<LI>
										<c:if test="${loginUser==null}">
											<A href="user/showRegist.action" otype="文字链接" oname="一网通注册" cname="顶部导航">注册</A>
										</c:if>
										<c:if test="${loginUser!=null}">
											<A href="user/loginout.action" otype="文字链接" oname="一网通注册" cname="顶部导航">退出</A>
										</c:if>
									</LI>

									<LI>|</LI>
									<LI>
										<A href="http://branch.cmbchina.com/" target="_blank" otype="文字链接" oname="分行网站" cname="顶部导航">分行网站</A>
									</LI>
									<LI>|</LI>
									<LI>
										<A href="http://career.cmbchina.com/" target="_blank" otype="文字链接" oname="人才招聘" cname="顶部导航">人才招聘</A>
									</LI>
									<LI>|</LI>
									<LI>
										<A href="http://map.cmbchina.com/" target="_blank" otype="文字链接" oname="服务网点" cname="顶部导航">服务网点</A>
									</LI>
									<LI>|</LI>
									<LI>
										<A href="javascript:fLoginICS();" otype="文字链接" oname="在线客服" cname="顶部导航">在线客服</A>
									</LI>

									<LI>|</LI>
								</UL>
							</DIV>
						</TD>
						<TD width="65">
							<DIV class="map_link" id="maplink" onmouseover="showNavList(this)" onmouseout="hideNavList()" otype="文字链接" oname="网站导航" cname="顶部导航">
								网站导航
								<SPAN style="height: 20px; line-height: 20px;">
									<IMG width="8" height="4" align="middle" src="info_files/arrow_01.gif" border="0">
								</SPAN>
							</DIV>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
		</DIV>
		<DIV id="divNavList" onmouseover="this.style.display='block'; document.getElementById('maplink').className = 'map_link_focus';" onmouseout="this.style.display='none'; document.getElementById('maplink').className = 'map_link';">
			<P>
				<FONT color="#ff0000">
					<STRONG>
						<FONT color="#000000">投资理财：</FONT>
					</STRONG>
					<BR>
				</FONT>
				<A href="http://fund.cmbchina.com/" target="_blank">基金</A>
				<A href="http://fx.cmbchina.com/" target="_blank">外汇</A>
				<A href="http://gold.cmbchina.com/" target="_blank">黄金</A>
				<A href="http://info.cmbchina.com/" target="_blank">证券</A>
				<BR>
				<A href="http://www.cignacmb.com/" target="_blank">保险</A>
				<A href="http://www.cmbchina.com/cfweb" target="_blank">理财产品</A>
				<A href="http://info.cmbchina.com/bond" target="_blank">
					债券
					<STRONG>
						<FONT color="#ff0000"></FONT>
					</STRONG>
				</A>
			</P>
			<P>
				<STRONG>分支机构：</STRONG>
				<BR>
				<A href="http://www.winglungbank.com/wlbchannel.html" target="_blank">永隆银行</A>
				&nbsp;
				<A href="http://ny.cmbchina.com/" target="_blank">纽约分行</A>
				&nbsp;
				<A href="http://hk.cmbchina.com/" target="_blank">香港分行</A>
				<BR>
				<A href="http://branch.cmbchina.com/0010.htm" target="_blank">北京分行</A>
				&nbsp;
				<A href="http://branch.cmbchina.com/0021.htm" target="_blank">上海分行</A>
				&nbsp;
				<A href="http://london.cmbchina.com/" target="_blank">伦敦分行</A>
				<BR>
				<A href="http://sg.cmbchina.com/" target="_blank">新加坡分行</A>
			</P>
			<P>
				<STRONG>
					<FONT color="#000000">
						快捷通道：
						<BR>
					</FONT>
				</STRONG>
				<A href="http://link.cmbchina.com/onlineservice/onlineservice.ashx">在线客服</A>
				<A href="http://forum.cmbchina.com/" target="_blank">社区</A>
				<A href="http://ccclub.cmbchina.com/" target="_blank">信用卡商城</A>
				<BR>
				<A href="http://shop.cmbchina.com/CellTelephone/Default.aspx" target="_blank">手机充值</A>
				<A href="http://trip.cmbchina.com/" target="_blank">机票预订</A>
				&nbsp;&nbsp;&nbsp;
				<BR>
				<A href="http://shop.cmbchina.com/" target="_blank">商城</A>
				&nbsp;&nbsp;
				<A href="http://www.cmbchina.com/corporate/custody/" target="_blank">托管银行</A>
				<A href="http://pension.cmbchina.com/" target="_blank">企业年金</A>
				<BR>
				<A href="http://supplier.cloud.cmbchina.com:8083/" target="_blank">建材品牌库</A>
			</P>
			<P>
				<STRONG>
					<A href="http://www.cmbchina.com/About/sitemap.aspx" target="_blank">
						<FONT color="#000000">更多内容&gt;&gt;</FONT>
					</A>
				</STRONG>
			</P>
		</DIV>
		<SCRIPT language="javascript">


      if(window.location.href.indexOf("big5.cmbchina.com") != -1)
      {
         for(var i = 1; i<= 4; i++)
         {
            document.getElementById("tdj_"+i).style.display = "none";
            document.getElementById("tdf_"+i).style.display = "";
         }
      }
     
	if (top.location != self.location) {
		var topWeb = document.referrer;
		if (topWeb.indexOf(".cmbchina.com") == -1) {
			top.location = self.location;
		}
	}

	function showNavList(element) {
		var obj = document.getElementById("divNavList");
		obj.style.display = 'block';
		var offsetTop = element.offsetTop;
		var offsetLeft = element.offsetLeft;
		var offsetWidth = element.offsetWidth;
		var offsetHeight = element.offsetHeight;
		while (element = element.offsetParent) {
			offsetTop += element.offsetTop;
			offsetLeft += element.offsetLeft;
		}
		obj.style.left = (offsetLeft - 147) + "px";
		obj.style.top = offsetTop + 20 + "px";
		document.getElementById("maplink").className = "map_link_focus";
	}

	function hideNavList() {
		var obj = document.getElementById("divNavList");
		obj.style.display = 'none';
		document.getElementById("maplink").className = "map_link";
	}

	function toGB2312() {
		var curUrl = window.location.href;
		var gb2312Url = curUrl.replace("big5.cmbchina.com/gate/big5/", "");
		window.location.href = gb2312Url;
	}

	function toBig5() {
		var curUrl = window.location.href;
		var big5Url = "http://big5.cmbchina.com/gate/big5/" + curUrl.replace("http://", "");
		window.open(big5Url);
	}

	document.onkeypress = function(evt) {
		var isie = (document.all) ? true : false; //判断是IE内核还是Mozilla
		var key;
		if (isie) {
			key = window.event.keyCode;
			if (key == 13) {
				window.event.returnValue = false;
				document.getElementById("btn_search").click();
			}
		}
		else {
			key = evt.which;
			if (key == 13) {
				evt.preventDefault();
				document.getElementById("btn_search").click();
			}
		}
	}
//    var curDomain = location.hostname;
//     if (curDomain.indexOf(".cmbchina.com") == -1) {
//      location.href = "http://www.cmbchina.com";
//     }

</SCRIPT>
		<!--[if lt IE 8 ]><script language="javascript" src="/Scripts/json2.min.js" type="text/javascript"></script><![endif]-->
		<SCRIPT language="javascript" src="info_files/personalreco.js" type="text/javascript"></SCRIPT>

		<SCRIPT src="info_files/cmbsearch.js" type="text/javascript" charset="gb2312"></SCRIPT>

		<TABLE align="center" class="FrameTable" cellspacing="0">
			<TBODY>
				<TR>
					<TD>
						<A class="mainlogo" href="http://www.cmbchina.com/"></A>
						<A class="mainlogo1" href="http://www.cmbchina.com/"></A>
					</TD>
					<TD>
						<DIV class="mainsearch">
							<INPUT name="SearchWord" id="SearchWord" onfocus="this.style.color='black';&#10;&#9;if (this.value == '理财产品' ) {&#10;&#9;this.value='';&#10;&#9;                }" onblur="this.style.color = '#666';&#10;&#9;                if ( this.value =='' ){&#10;&#9;this.value = '理财产品';&#10;&#9;                }" value="理财产品">

							<DIV style="float: left;">
								<INPUT name="btn_search" id="btn_search" onclick="CmbSearch(document.getElementById('SearchWord').value, 'www')" type="button" otype="按钮链接" oname="搜索按钮" cname="搜索">
							</DIV>
						</DIV>
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<SCRIPT type="text/javascript">
    var tabIndex;

    function SelectMenu(index) {
 
        for (i = 1; i <= 5; i++) 
        {
            if (i == index)
                continue;
            if (document.getElementById("sub_menu_" + i) && document.getElementById("sub_menu_" + i).style.display != "none")
                document.getElementById("sub_menu_" + i).style.display = "none";
                
            if(i == tabIndex)
                continue;
                
            if (document.getElementById("menu_" + i) && document.getElementById("menu_" + i).className != "mainmenu")
                document.getElementById("menu_" + i).className = "mainmenu";
         }

        if (document.getElementById("sub_menu_" + index) && document.getElementById("sub_menu_" + index).style.display != "block")
            document.getElementById("sub_menu_" + index).style.display = "block";
        else if(tabIndex == 0) 
            document.getElementById("sub_menu_1").style.display = "block";
            
        if (document.getElementById("menu_" + index) && document.getElementById("menu_" + index).className != "CurMenu") {
            document.getElementById("menu_" + index).className = "CurMenu";
        }
    }
    
    function HideAllMenu() 
    {
        for (i = 1; i <= 5; i++) {
            if (i == tabIndex)
                continue;
            if (document.getElementById("sub_menu_" + i) && document.getElementById("sub_menu_" + i).style.display == "block")
                document.getElementById("sub_menu_" + i).style.display = "none";
            if (document.getElementById("menu_" + i) && document.getElementById("menu_" + i).className != "mainmenu")
                document.getElementById("menu_" + i).className = "mainmenu";
        }
         if (document.getElementById("sub_menu_" + tabIndex))
            document.getElementById("sub_menu_" + tabIndex).style.display = "block";
         else
            document.getElementById("sub_menu_1").style.display = "block";
        
          if (document.getElementById("menu_" + tabIndex) && document.getElementById("menu_" + tabIndex).className != "CurMenu") 
            document.getElementById("menu_" + tabIndex).className = "CurMenu";
    }
      
    function HideMenu(e, subMenuElementID)
    {
        if(!isMouseToSubMenu(e, subMenuElementID))
        HideAllMenu();
    } 
    
    function HideSubMenu(e, handler)
    {
        if(isMouseLeaveOrEnter(e, handler))
        {
        HideAllMenu();
        }
    } 
    

    function isMouseLeaveOrEnter(e, handler)
    {
      if (e.type != 'mouseout' && e.type != 'mouseover') return false;
       var reltg = e.relatedTarget ? e.relatedTarget : e.type == 'mouseout' ? e.toElement : e.fromElement;
       while (reltg && reltg != handler)
                 reltg = reltg.parentNode;
       return (reltg != handler);
    }

    function isMouseToSubMenu(e, subMenuElementID)
    {
     if (e.type != 'mouseout')
        return false;
     var reltg = e.relatedTarget ? e.relatedTarget : e.toElement;
     while(reltg && reltg.id != subMenuElementID)
        reltg = reltg.parentNode;
       
      return reltg;
    }

</SCRIPT>

		<DIV class="FrameTable">
			<DIV class="menubg">
				<DIV class="main_menu">
					<UL>
						<LI class="MenuLeftspace">&nbsp;</LI>
						<LI class="MenuLi" onmouseover="SelectMenu(1)" onmouseout="HideMenu(event, 'subMenuItems')">
							<A class="mainmenu" id="menu_1" href="user/index.action" otype="文字链接" oname="主 页" cname="主菜单导航">主 页</A>
						</LI>
						<LI>
							<DIV class="mainMenu_Spacer"></DIV>
						</LI>

						<LI class="MenuLi">
							<A class="CurMenu" onmouseover="SelectMenu(2);" href="user/person.action" otype="文字链接" oname="个人业务" cname="主菜单导航"> 个人业务</A>
						</LI>

						<SCRIPT>tabIndex = 2;</SCRIPT>

						<LI>
							<DIV class="mainMenu_Spacer"></DIV>
						</LI>

						<LI class="MenuLi" onmouseover="SelectMenu(3)" onmouseout="HideMenu(event, 'subMenuItems')">
							<A class="mainmenu" id="menu_3" href="http://www.cmbchina.com/corporate" otype="文字链接" oname="公司业务" cname="主菜单导航">公司业务</A>
						</LI>

						<LI>
							<DIV class="mainMenu_Spacer"></DIV>
						</LI>
						<LI>
							<DIV class="mainMenu_Spacer"></DIV>
						</LI>
						<LI class="MenuLi" onmouseover="SelectMenu(4)" onmouseout="HideMenu(event, 'subMenuItems')">
							<A class="mainmenu" id="menu_4" href="http://cc.cmbchina.com/" target="_blank" otype="文字链接" oname="信用卡" cname="主菜单导航">信用卡</A>
						</LI>
						<LI>
							<DIV class="mainMenu_Spacer"></DIV>
						</LI>
						<LI class="MenuLi">
							<A class="mainmenu" href="http://trip.cmbchina.com/" target="_blank" otype="文字链接" oname="商旅预订" cname="主菜单导航">商旅预订</A>
						</LI>

						<LI>
							<DIV class="mainMenu_Spacer"></DIV>
						<LI class="MenuLi" onmouseover="SelectMenu(5)" onmouseout="HideMenu(event, 'subMenuItems')">
							<A class="mainmenu" id="menu_5" href="http://www.cmbchina.com/cmbinfo" otype="文字链接" oname="今日招行" cname="主菜单导航">今日招行</A>
						</LI>

						<LI></LI>
					</UL>
				</DIV>
				<DIV class="main_online">
					<A href="http://www.cmbchina.com/CustomerService/Default.aspx" target="_blank">
						<IMG src="info_files/main_95555.gif" border="0">
					</A>
				</DIV>
			</DIV>
			<DIV class="submenubg" id="subMenuItems" onmouseout="HideSubMenu(event, this)">
				<DIV class="sub_menu" id="sub_menu_1">
					<UL>
						<LI>
							<P class="submenu_title">热点频道：</P>
						</LI>
						<LI>
							<A class="submenu" href="http://gongyi.cmbchina.com/Client/CommonWealActs.aspx?index=4" target="_blank" otype="文字链接" oname="公益平台" cname="热点频道">公益平台</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="https://fi.cmbchina.com/" target="_blank" otype="文字链接" oname="招赢通" cname="热点频道">招赢通</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/personal/sunflower" otype="文字链接" oname="金葵花理财" cname="热点频道">金葵花理财</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/privatebank" otype="文字链接" oname="私人银行" cname="热点频道">私人银行</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://fx.cmbchina.com/cgjr/" target="_blank" otype="文字链接" oname="跨境金融" cname="热点频道">跨境金融</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/corporate/cashmanagement" otype="文字链接" oname="现金管理" cname="热点频道">现金管理</A>
							|
						</LI>
						<!--<li><a href="/cmbinfo/brand/" target="_blank" class="submenu">品牌活动</a> |</li>-->

						<LI>
							<A class="submenu" href="http://www.cmbchina.com/cmbir/" target="_blank" otype="文字链接" oname="投资者关系" cname="热点频道">投资者关系</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/Main/NoticeInfo.aspx?guid=5c378a13-44b5-4744-9c28-40eef2de92b6" target="_blank" otype="文字链接" oname="社区" cname="热点频道">社区</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://t.sina.com.cn/cmbchina" target="_blank" otype="文字链接" oname="微博" cname="热点频道">微博</A>
						</LI>
					</UL>
				</DIV>
				<DIV class="sub_menu" id="sub_menu_2" style="display: none;">
					<UL class="narrow">
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/personal/sunflower" otype="文字链接" oname="金葵花理财" cname="个人业务二级导航">金葵花理财</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/privatebank" otype="文字链接" oname="私人银行" cname="个人业务二级导航">私人银行</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="BusinessApply/businessApplyList.action" otype="文字链接" oname="跨境金融" cname="个人业务二级导航">个人业务申请表</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="lc/loan.action" otype="文字链接" oname="个人贷款" cname="个人业务二级导航">个人贷款</A>
							|
						</LI>
						<!--<li><a href="http://95555.cmbchina.com" target="_blank" class="submenu" cname="个人业务二级导航" oname="空中银行" otype="文字链接">空中银行</a> |</li>-->

						<LI>
							<A class="selectSubMenu" href="IndInfo/queryIndInfo.action" otype="文字链接" oname="一卡通" cname="个人业务二级导航">个人信息管理</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/personal/WealthAccount" otype="文字链接" oname="财富账户" cname="个人业务二级导航">财富账户</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/personal/ebank" otype="文字链接" oname="电子银行" cname="个人业务二级导航">电子银行</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/personal/living" otype="文字链接" oname="居家生活" cname="个人业务二级导航">居家生活</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/personal/saving" otype="文字链接" oname="储蓄业务" cname="个人业务二级导航">储蓄业务</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/personal/invest" otype="文字链接" oname="投资理财" cname="个人业务二级导航">投资理财</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/personal/netbank" otype="文字链接" oname="网上个人银行" cname="个人业务二级导航">网上个人银行</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://link.cmbchina.com/cmbfinprod/" target="_blank" otype="文字链接" oname="产品信息查询平台" cname="个人业务二级导航">产品信息查询平台</A>
						</LI>
					</UL>
				</DIV>
				<DIV class="sub_menu" id="sub_menu_3" style="display: none;">
					<UL>
						<LI>
							<P class="submenu_title">&nbsp;</P>
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/corporate/cashmanagement" otype="文字链接" oname="现金管理" cname="公司业务二级导航">现金管理</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/corporate/domestic" otype="文字链接" oname="国内业务" cname="公司业务二级导航">国内业务</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/corporate/international" otype="文字链接" oname="跨境金融" cname="公司业务二级导航">跨境金融</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/corporate/investment" otype="文字链接" oname="投资银行" cname="公司业务二级导航">投资银行</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/corporate/offshore" otype="文字链接" oname="离岸业务" cname="公司业务二级导航">离岸业务</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/corporate/custody" otype="文字链接" oname="资产托管" cname="公司业务二级导航">资产托管</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/corporate/pension" otype="文字链接" oname="养老金金融" cname="公司业务二级导航">养老金金融</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/cfweb/corporate/" target="_blank" otype="文字链接" oname="公司理财" cname="公司业务二级导航">公司理财</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmb-leasing.com/" target="_blank" otype="文字链接" oname="融资租赁" cname="公司业务二级导航">融资租赁</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/corporate/financial" otype="文字链接" oname="同业金融" cname="公司业务二级导航">同业金融</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/corporate/firmbank" otype="文字链接" oname="网上企业银行" cname="公司业务二级导航">网上企业银行</A>
						</LI>
					</UL>
				</DIV>
				<DIV class="sub_menu" id="sub_menu_4" style="display: none;">
					<UL>
						<LI>
							<P class="submenu_title">&nbsp;</P>
						</LI>

						<LI>
							<A class="submenu" href="http://cc.cmbchina.com/" target="_blank" otype="文字链接" oname="信用卡首页" cname="主菜单二级导航-信用卡">信用卡首页</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://cc.cmbchina.com/cusservice/" target="_blank" otype="文字链接" oname="客户服务" cname="主菜单二级导航-信用卡">客户服务</A>
							|
						</LI>

						<LI>
							<A class="submenu" href="http://ccclub.cmbchina.com/ccproduct/newcustomer.aspx?WT.mc_id=N379101201012150" target="_blank" otype="文字链接" oname="信用卡在线申请" cname="主菜单二级导航-信用卡">信用卡在线申请</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://cc.cmbchina.com/Promotion/" target="_blank" otype="文字链接" oname="特惠快讯" cname="主菜单二级导航-信用卡">特惠快讯</A>
							|
						</LI>

						<LI>
							<A class="submenu" href="http://jf.cmbchina.com/" target="_blank" otype="文字链接" oname="积分计划" cname="主菜单二级导航-信用卡">积分奖励</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://best.cmbchina.com/" target="_blank" otype="文字链接" oname="优惠商户" cname="主菜单二级导航-信用卡">优惠商户</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://cc.cmbchina.com/StepShop/" target="_blank" otype="文字链接" oname="分期付款购物" cname="主菜单二级导航-信用卡">分期付款购物</A>
							|
						</LI>

						<LI>
							<A class="submenu" href="http://cc.cmbchina.com/financing/" target="_blank" otype="文字链接" oname="信贷理财" cname="主菜单二级导航-信用卡">信贷理财</A>
							|
						</LI>

						<LI>
							<A class="submenu" href="http://trip.cmbchina.com/" target="_blank" otype="文字链接" oname="商旅预订" cname="主菜单二级导航-信用卡">商旅预订</A>
						</LI>
					</UL>
				</DIV>
				<DIV class="sub_menu" id="sub_menu_5" style="display: none;">
					<UL>
						<LI>
							<P class="submenu_title">&nbsp;</P>
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/cmbinfo/aboutcmb/" otype="文字链接" oname="招行介绍" cname="今日招行二级导航">招行介绍</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/cmbinfo/news/" otype="文字链接" oname="招行新闻" cname="今日招行二级导航--cmbinfo">招行新闻</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/cmbir" target="_blank" otype="文字链接" oname="投资者关系" cname="今日招行二级导航--cmbinfo">投资者关系</A>
							|
						</LI>

						<LI>
							<A class="submenu" href="http://www.cmbchina.com/cmbinfo/awards/" otype="文字链接" oname="荣誉榜" cname="今日招行二级导航--cmbinfo">荣誉榜</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/cmbinfo/brand/" otype="文字链接" oname="首席观点" cname="今日招行二级导航--cmbinfo">首席观点</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://career.cmbchina.com/" target="_blank" otype="文字链接" oname="人才招聘" cname="今日招行二级导航--cmbinfo">人才招聘</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://purchase.cmbchina.com/portal/" target="_blank" otype="文字链接" oname="采购平台" cname="今日招行二级导航--cmbinfo">采购平台</A>
							|
						</LI>

						<LI>
							<A class="submenu" href="http://gongyi.cmbchina.com/qyzr/" target="_blank" otype="文字链接" oname="企业社会责任" cname="今日招行二级导航--cmbinfo">企业社会责任</A>
							|
						</LI>
						<!--    <li>
        <a href="/cmbinfo/finremark/" class="submenu" cname="今日招行二级导航--cmbinfo" oname="金融市场评论" otype="文字链接">金融市场评论</a> |</li>-->

						<LI>
							<A class="submenu" href="http://www.cmbchina.com/assetdisposal" otype="文字链接" oname="资产处置" cname="今日招行二级导航--cmbinfo">资产处置</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/Cmb2014Web/CmbInfo/CustomerService/" target="_blank" otype="文字链接" oname="消费者权益保护" cname="个人业务二级导航">消费者权益保护</A>
						</LI>
					</UL>
				</DIV>
				<DIV class="sub_menu" id="sub_menu_6" style="display: none;">
					<UL>
						<LI>
							<P class="submenu_title">&nbsp;</P>
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/corporate/cashmanagement" otype="文字链接" oname="现金管理" cname="公司业务二级导航">现金管理</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/corporate/domestic" otype="文字链接" oname="国内业务" cname="公司业务二级导航">国内业务</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/corporate/international" otype="文字链接" oname="跨境金融" cname="公司业务二级导航">跨境金融</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/corporate/investment" otype="文字链接" oname="投资银行" cname="公司业务二级导航">投资银行</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/corporate/offshore" otype="文字链接" oname="离岸业务" cname="公司业务二级导航">离岸业务</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/corporate/custody" otype="文字链接" oname="资产托管" cname="公司业务二级导航">资产托管</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/corporate/pension" otype="文字链接" oname="养老金金融" cname="公司业务二级导航">养老金金融</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/cfweb/corporate/" target="_blank" otype="文字链接" oname="公司理财" cname="公司业务二级导航">公司理财</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmb-leasing.com/" target="_blank" otype="文字链接" oname="融资租赁" cname="公司业务二级导航">融资租赁</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/corporate/financial" otype="文字链接" oname="同业金融" cname="公司业务二级导航">同业金融</A>
							|
						</LI>
						<LI>
							<A class="submenu" href="http://www.cmbchina.com/corporate/firmbank" otype="文字链接" oname="网上企业银行" cname="公司业务二级导航">网上企业银行</A>
						</LI>
					</UL>
				</DIV>
			</DIV>
			<DIV class="submenubottom"></DIV>
		</DIV>
		<SCRIPT type="text/javascript">       
     SelectMenu(tabIndex);
  </SCRIPT>

		<DIV class="comdivcontainer">
			<DIV class="left">
				<DIV class="lefttop">
					<DIV id="NavigationLinkDiv" style="border: 1px solid rgb(204, 204, 204); border-image: none; width: 721px; height: 28px; color: rgb(105, 105, 105); line-height: 28px; background-color: rgb(241, 241, 241);">
						&nbsp; &nbsp;当前位置：&nbsp;
						<A id="content_NavigationLink1_main" href="http://www.cmbchina.com/">九江银行</A>
						&gt;
						<A id="content_NavigationLink1_Root"></A>
						<A id="content_NavigationLink1_parentPageInfo" href="http://www.cmbchina.com/personal">个人业务</A>
						&gt;
						<A id="content_NavigationLink1_subParentPageInfo"></A>
						个人信息
					</DIV>
					<DIV style="margin-top: 5px;">
						<DIV id="MainBanner">
							<DIV id="SlidePlayer" style="width: 721px; height: 129px;">
								<UL class="Slides" id="Slides" style="height: 129px;">
									<LI style="width: 721px; height: 129px;">
										<A href="http://www.cmbchina.com/personal/allinonecard/#" target="_self" otype="图片链接" oname="招商银行App7.0全新上线" cname="主广告位--personalbusiness">
											<IMG title="招商银行App7.0全新上线" style="width: 721px; height: 130px;" src="info_files/95c48f26-169e-41aa-836c-c7f81b09.jpg">
										</A>
									</LI>
									<LI style="width: 721px; height: 129px;">
										<A href="http://survey.pcac.org.cn:8080/survey/showSurvey/survey7" target="_blank" otype="图片链接" oname="移动支付调查问卷" cname="主广告位--personalbusiness">
											<IMG title="移动支付调查问卷" style="width: 721px; height: 130px;" src="info_files/8b597e9c-ca80-4d78-8222-7876455e.jpg">
										</A>
									</LI>
									<LI style="width: 721px; height: 129px;">
										<A href="https://market.cmbchina.com/personal/sjpx/index.html" target="_blank" otype="图片链接" oname="寻找改变世界的中国少年" cname="主广告位--personalbusiness">
											<IMG title="寻找改变世界的中国少年" style="width: 721px; height: 130px;" src="info_files/bb1323d1-1e0e-492f-8318-4c1a4f39.jpg">
										</A>
									</LI>
									<LI style="width: 721px; height: 129px;">
										<A href="http://www.cmbchina.com/Personal/Promotion/PrmotionInfo.aspx?guid=4af00a54-9106-411c-85bf-b1495dfa13cf" target="_blank" otype="图片链接" oname="借记卡办卡" cname="主广告位--personalbusiness">
											<IMG title="借记卡办卡" style="width: 721px; height: 130px;" src="info_files/60f08c1c-b019-4140-8230-49282d12.jpg">
										</A>
									</LI>
								</UL>
								<UL class="SlideTriggers" id="SlideTriggers" style="display: block;">
									<LI class="current">1</LI>
									<LI>2</LI>
									<LI>3</LI>
									<LI>4</LI>
								</UL>
							</DIV>
						</DIV>
						<SCRIPT src="info_files/YUI.js" type="text/javascript"></SCRIPT>
						<SCRIPT type="text/javascript">
    function Each(list, fun) {
        for (var i = 0, len = list.length; i < len; i++) { fun(list[i], i); }
    };

    var Nums = document.getElementById("SlideTriggers").getElementsByTagName("li");
 
    var xsfade = new XsFade(document.getElementById("SlidePlayer").getElementsByTagName("img"), Nums);
    xsfade.init();

    Each(Nums, function(o, i) {
        o.onmouseover = function() {
            xsfade.SetPlayIndex(i);
        }
        o.onmouseout = function() {
            xsfade.Resume();
        }
    })
</SCRIPT>
					</DIV>
				</DIV>
				<DIV class="leftbottom">
					<DIV class="leftbottomleft" id="leftbottomleft">
						<SCRIPT>
    function showsubmenu(index,total) {
    
     if (document.getElementById("item" + index).className.substr(0,4) != "page")
     {
        for (i = 1; i <=total ; i++) {
                if (document.getElementById("open_item" + i) && i != index)
                    document.getElementById("open_item" + i).style.display = "none";
                if (document.getElementById("item" + i) && i!= index && document.getElementById("item" + i).className=="directory_selected" )
                     document.getElementById("item" + i).className = "directory";
           }
           
               if(document.getElementById("open_item" + index).style.display == "block")
               {
                    document.getElementById("open_item" + index).style.display = "none";
                        document.getElementById("item" + index).className = "directory";
                }
               else
               {
                    document.getElementById("open_item" + index).style.display = "block";
                        document.getElementById("item" + index).className = "directory_selected";
               } 
           }   
     }
     
 function onInit()
 {
     var total = 6;
     for (i = 1; i <= total; i++)
     {
        if (document.getElementById("item" + i) && document.getElementById("item" + i).className=="directory_selected" )
        {
          document.getElementById("open_item" + i).style.display ="block";
        } 
     }
 }        

</SCRIPT>

						<DIV class="NavLinkHeader">
							<SPAN>个人信息管理</SPAN>
						</DIV>
						<DIV class="NavLinkContent">
							<DIV class="page" id="item1" onclick="showsubmenu( 1, 6)">
								<SPAN class="txtspan">
									<A title="个人信息" href="IndInfo/queryIndInfo.action?customerid=1234567" target="_self" otype="文字链接" oname="一网通账户" cname="一卡通 -- leftmenu">个人信息</A>
								</SPAN>
							</DIV>
							<DIV id="open_item1" style="display: none;"></DIV>
							<DIV class="page" id="item2" onclick="showsubmenu( 2, 6)">
								<SPAN class="txtspan">
									<A title=" 个人贷款查询" href="" target="_self" otype="文字链接" oname="一卡通" cname="一卡通 -- leftmenu"> 个人贷款查询</A>
								</SPAN>
							</DIV>
							<DIV id="open_item2" style="display: none;"></DIV>
							<DIV class="page" id="item3" onclick="showsubmenu( 3, 6)">
								<SPAN class="txtspan">
									<A title="一卡通联名卡" href="http://www.cmbchina.com/personal/allinonecard/CardInfo.aspx?guid=f6b86786-1726-4205-bd38-f454dad045f0" target="_self" otype="文字链接" oname="一卡通联名卡" cname="一卡通 -- leftmenu"> 一卡通联名卡</A>
								</SPAN>
							</DIV>
							<DIV id="open_item3" style="display: none;"></DIV>
							<DIV class="page" id="item4" onclick="showsubmenu( 4, 6)">
								<SPAN class="txtspan">
									<A title="“一卡通”IC卡" href="http://www.cmbchina.com/personal/allinonecard/CardInfo.aspx?guid=1a20a38d-0ffc-4455-81d5-62181c803f9b" target="_self" otype="文字链接" oname="“一卡通”IC卡" cname="一卡通 -- leftmenu">“一卡通”IC卡</A>
								</SPAN>
							</DIV>
							<DIV id="open_item4" style="display: none;"></DIV>
							<DIV class="page" id="item5" onclick="showsubmenu( 5, 6)">
								<SPAN class="txtspan">
									<A title="“一卡通”金卡" href="http://www.cmbchina.com/personal/allinonecard/CardInfo.aspx?guid=2865d3ab-6264-4a41-baf2-1ee84c847b26" target="_self" otype="文字链接" oname="“一卡通”金卡" cname="一卡通 -- leftmenu">“一卡通”金卡</A>
								</SPAN>
							</DIV>
							<DIV id="open_item5" style="display: none;"></DIV>
							<DIV class="page" id="item6" onclick="showsubmenu( 6, 6)">
								<SPAN class="txtspan">
									<A title="金葵花卡" href="http://www.cmbchina.com/personal/allinonecard/CardInfo.aspx?guid=be48a9ab-300f-4393-b80e-02308ddf1a7f" target="_self" otype="文字链接" oname="金葵花卡" cname="一卡通 -- leftmenu"> 金葵花卡</A>
								</SPAN>
							</DIV>
							<DIV id="open_item6" style="display: none;"></DIV>
						</DIV>
						<DIV class="navlinkline"></DIV>
						<DIV style="margin-top: 20px !important;">
							<A href="http://live.cmbchina.com/CmbNewerAssist/Default.aspx" target="_blank">
								<IMG width="184" src="info_files/icon14_s.jpg" border="0">
							</A>
						</DIV>
						<SCRIPT defer="defer">onInit();</SCRIPT>
					</DIV>
					<DIV class="leftbottomright" id="leftbottomright">
						<DIV class="comdiv">
							<H2 class="head">
								<SPAN>个人信息</SPAN>
							</H2>
							<DIV class="container">
								<DIV class="content">
									<form action="IndInfo/modifyIndInfo.action" method="post">
										<input type="hidden" name="customerid" value="${indInfo.customerid}"/>
										<TABLE width="100%" id="table66" bgcolor="#cccccc" border="0" cellspacing="0" cellpadding="0">
											<TBODY>
												<TR class="gray">
													<TD>姓名：</TD>
													<TD>
														<input name="fullname"  disabled="disabled" value="${indInfo.fullname}" />
													</TD>
													<td></td>
												</TR>
												<TR class="gray">
													<TD>年龄：</TD>
													<TD>
														<input name="birthday" value="${indInfo.birthday}" />
													</TD>
													<td></td>
												</TR>
												<TR class="gray">
													<TD>性别：</TD>
													<TD>
														<input name="sex" value="${indInfo.sex}" />
													</TD>
													<td></td>
												</TR>
												<TR class="gray">
													<TD>身份证号：</TD>
													<TD>
														<input name="certid18" disabled="disabled" value="${indInfo.certid18}" />
													</TD>
													<td></td>
												</TR>
												<TR class="gray">
													<TD>手机号码：</TD>
													<TD>
														<input name="mobiletelephone" disabled="disabled" value="${indInfo.mobiletelephone}" />
													</TD>
													<td></td>
												</TR>
												<TR class="gray">
													<TD>电子邮箱：</TD>
													<TD>
														<input name="emailadd" disabled="disabled" value="${indInfo.emailadd}" />
													</TD>
													<td></td>
												</TR>
												<TR class="gray">
													<TD>最高学历：</TD>
													<TD>
														<input name="eduexperience" value="${indInfo.eduexperience}" />
													</TD>
													<td></td>
												</TR>
												<TR class="gray">
													<TD>拥有固定资产：</TD>
													<TD>
														<input name="edurecord" value="${indInfo.edurecord}" />
													</TD>
													<td></td>
												</TR>
												<TR class="gray">
													<TD>职业/单位：</TD>
													<TD>
														<input name="occupation" value="${indInfo.occupation}" />
													</TD>
													<td></td>
												</TR>
												<TR class="gray">
													<TD>职称：</TD>
													<TD>
														<input name="position" value="${indInfo.position}" />
													</TD>
													<td></td>
												</TR>
												<TR class="gray">
													<TD>婚姻状况：</TD>
													<TD>
														<input name="marriage" value="${indInfo.marriage}" />
													</TD>
													<td></td>
												</TR>
												<TR class="gray">
													<TD>现单位工作时间：</TD>
													<TD>
														<input name="workzip" value="${indInfo.workzip}" />
													</TD>
													<td></td>
												</TR>
												<TR class="gray">
													<TD>配偶职业/单位：</TD>
													<TD>
														<input name="workcorp" value="${indInfo.workcorp}" />
													</TD>
													<td></td>
												</TR>
												<TR class="gray">
													<TD>配偶职位：</TD>
													<TD>
														<input name="worktel" value="${indInfo.worktel}" />
													</TD>
													<td></td>
												</TR>
												<TR class="gray">
													<TD>负债比率：</TD>
													<TD>
														<input name="staff" value="${indInfo.staff}" />
													</TD>
													<td></td>
												</TR>
												<TR class="gray">
													<TD>保险：</TD>
													<TD>
														<input name="intro" value="${indInfo.intro}" />
													</TD>
													<td></td>
												</TR>
												<!-- =========================================== -->
												<TR class="gray">
													<TD>总体印象：</TD>
													<TD>
														<input name="remark" value="${indInfo.remark}" />
													</TD>
													<td></td>
												</TR>
												<TR class="gray">
													<TD>个人贷款记录年限：</TD>
													<TD>
														<input name="country" value="${indInfo.country}" />
													</TD>
													<td></td>
												</TR>
												<TR class="gray">
													<TD>个人贷款累计有效违约率：</TD>
													<TD>
														<input name="creditfarmer" value="${indInfo.creditfarmer}" />
													</TD>
													<td></td>
												</TR>
												<TR class="gray">
													<TD>家庭年收入：</TD>
													<TD>
														<input name="familymonthincome" value="${indInfo.familymonthincome}" />
													</TD>
													<td></td>
												</TR>
												<TR class="gray">
													<TD>家庭人口数：</TD>
													<TD>
														<input name="population" value="${indInfo.population}" />
													</TD>
													<td></td>
												</TR>
												<TR class="gray">
													<TD>居住地址：</TD>
													<TD>
														<input name="familyadd" value="${indInfo.familyadd}" />
													</TD>
													<td></td>
												</TR>
												<TR class="gray">
													<TD>现住房产权性质：</TD>
													<TD>
														<input name="familystatus" value="${indInfo.familystatus}" />
													</TD>
													<td></td>
												</TR>
												<TR class="gray">
													<TD>收入来源：</TD>
													<TD>
														<input name="incomesource" value="${indInfo.incomesource}" />
													</TD>
													<td></td>
												</TR>
												<TR class="gray">
													<TD>个人年收入：</TD>
													<TD>
														<input name="yearincome" value="${indInfo.yearincome}" />
													</TD>
													<td></td>
												</TR>
												<TR class="gray">
													<TD>贷款卡号：</TD>
													<TD>
														<input name="loancardno" value="${indInfo.loancardno}" />
													</TD>
													<td></td>
												</TR>
												<TR class="gray">
													<TD>信用等级：</TD>
													<TD>
														<input name="creditlevel" disabled="disabled" value="${indInfo.creditlevel}" />
													</TD>
													<td></td>
												</TR>
												<TR class="gray">
													<TD>更新日期：</TD>
													<TD>
														<input name="updatedate" disabled="disabled" value="${indInfo.updatedate}" />
													</TD>
													<td></td>
												</TR>
												<TR class="gray">
													<TD>评估日期：</TD>
													<TD>
														<input name="evaluatedate" disabled="disabled" value="${indInfo.evaluatedate}" />
													</TD>
													<td></td>
												</TR>
												<!-- ================================= -->
												<TR class="gray">
													<TD style="text-align: center;">
														<input type="reset">
													</TD>
													<TD style="text-align: center;">
														<input type="submit" value="提交" />
													</TD>
													<td></td>
												</TR>
											</TBODY>
										</TABLE>
									</form>
								</DIV>
							</DIV>
						</DIV>
					</DIV>
					<SCRIPT defer="defer" type="text/javascript">AutoDivHeight(document.getElementById("leftbottomleft"),document.getElementById("leftbottomright"));</SCRIPT>
				</DIV>
			</DIV>
			<DIV class="right">
				<DIV class="netbankrightbg">
					<DIV class="netbankdiv" style="height: 658px;">
						<DIV class="rightheader">
							<A class="rightheadertitle" href="http://www.cmbchina.com/personal/netbank/" target="_blank">网上个人银行</A>
						</DIV>
						<DIV class="whitebgtop">&nbsp;</DIV>
						<DIV class="whitebgmid" style="height: 147px;">
							<UL>
								<LI>
									<A class="bg" href="javascript:hbwindows();">
										<SPAN>· 个人银行大众版</SPAN>
									</A>
								</LI>
								<LI>
									<A class="bg" href="http://www.cmbchina.com/pbankweb/download.htm" target="_blank">
										<SPAN>· 个人银行专业版</SPAN>
									</A>
								</LI>
								<LI>
									<A class="bg" href="javascript:ifinwindows();">
										<SPAN>· i理财大众版</SPAN>
									</A>
								</LI>
								<LI>
									<A class="bg" href="http://szdl.cmbchina.com/download/PBBS/PBBusinessSetup.exe" target="_blank">
										<SPAN>· 电子商务专业版</SPAN>
									</A>
								</LI>
								<LI>
									<A class="bg" href="http://live.cmbchina.com/webpages/safecard/index.html" target="_blank">
										<SPAN>· 安全提示</SPAN>
									</A>
								</LI>
							</UL>
						</DIV>
						<DIV class="whitebgbottom"></DIV>
						<DIV class="rightheader">
							<A class="rightheadertitle" href="http://www.cmbchina.com/MBankWeb/" target="_blank">手机银行</A>
						</DIV>
						<DIV class="whitebgtop">&nbsp;</DIV>
						<DIV class="whitebgmid" style="height: 120px;">
							<UL>
								<LI>
									<A class="bg" href="http://www.cmbchina.com/MBankWeb/Site/" target="_blank">
										<SPAN>· 手机一网通</SPAN>
									</A>
								</LI>
								<LI>
									<A class="bg" href="http://www.cmbchina.com/MBankWeb/" target="_blank">
										<SPAN>· 手机银行介绍</SPAN>
									</A>
								</LI>
								<LI>
									<A class="bg" href="http://www.cmbchina.com/MBankWeb/" target="_blank">
										<SPAN>· 手机银行软件下载</SPAN>
									</A>
								</LI>
								<LI>
									<A class="bg" href="http://www.cmbchina.com/MBankWeb/wallet/main.html" target="_blank">
										<SPAN>· 手机钱包</SPAN>
									</A>
								</LI>
							</UL>
						</DIV>
						<DIV class="whitebgbottom"></DIV>
						<DIV class="rightheader">
							<A class="rightheadertitle" href="http://www.cmbchina.com/mbankweb/pad/" target="_blank" otype="文字链接" oname="Pad银行" cname="Pad银行">Pad银行</A>
						</DIV>
						<DIV class="whitebgtop">&nbsp;</DIV>
						<DIV class="whitebgmid" style="height: 60px;">
							<UL>
								<LI>
									<A class="bg" href="http://www.cmbchina.com/mbankweb/pad/" target="_blank" otype="文字链接" oname="Pad银行" cname="Pad银行">
										<SPAN>· iPad银行</SPAN>
									</A>
								</LI>
								<LI>
									<A class="bg" href="http://www.cmbchina.com/mbankweb/win8padbank/" target="_blank" otype="文字链接" oname="Win8Pad银行" cname="Win8Pad银行">
										<SPAN>· Win8 Pad银行</SPAN>
									</A>
								</LI>
							</UL>
						</DIV>
						<DIV class="whitebgbottom"></DIV>
						<DIV class="rightheader">
							<SPAN>在线服务</SPAN>
						</DIV>
						<DIV class="whitebgtop">&nbsp;</DIV>
						<DIV class="whitebgmid" style="height: 163px;">
							<UL>
								<LI class="nobgbig">
									<SPAN>
										·
										<A href="http://market.cmbchina.com/personal/sdkh_pc/index.html" target="_blank">在线极速开户</A>
									</SPAN>
								</LI>
								<LI class="nobgbig">
									<SPAN>
										·
										<A href="http://www.cmbchina.com/personalbank/netpay/CmbPay.htm#null" target="_blank">网上支付申请</A>
									</SPAN>
								</LI>
								<LI class="nobgbig">
									<SPAN>
										·
										<A href="javascript:OpenFirm()">网上商户结账处理</A>
									</SPAN>
								</LI>
								<LI class="nobgbig">
									<SPAN>
										·
										<A href="http://ccclub.cmbchina.com/ccproduct/newcustomer.aspx" target="_blank">信用卡申请</A>
									</SPAN>
								</LI>
								<LI class="nobgbig">
									<SPAN>
										·
										<A href="http://95555.cmbchina.com/CLoan/CmbLoan/shengyiloan.aspx" target="_blank">在线申请生意贷</A>
									</SPAN>
									<IMG width="24" height="9" class="True" src="info_files/personal_new.gif">
								</LI>
								<LI class="nobgbig">
									<SPAN>
										·
										<A href="https://app.cmbchina.com/pevs/pccheck.aspx" target="_blank" otype="文字链接" oname="电子回单验证" cname="在线服务">个人电子回单验证</A>
									</SPAN>
								</LI>
							</UL>
						</DIV>
						<DIV class="whitebgbottom"></DIV>
					</DIV>
					<DIV class="netbankbottom"></DIV>
				</DIV>
				<DIV style="height: 0px !important; overflow: hidden;"></DIV>
				<DIV style="height: 8px !important; overflow: hidden;"></DIV>
				<DIV class="toolboxdivbg">
					<DIV class="toolboxdiv" style="height: 334px;">
						<DIV class="rightheader" style="width: 190px;">
							<SPAN>便捷服务</SPAN>
							<SPAN style="margin-left: 50px;">
								<A href="http://www.cmbchina.com/Common/QuickService.aspx" target="_blank">
									<SPAN>&gt;&gt;更多</SPAN>
								</A>
							</SPAN>
						</DIV>
						<DIV class="whitebgtop">&nbsp;</DIV>
						<DIV class="whitebgmid" style="height: 292px; text-align: center;">
							<TABLE width="180" align="center" border="0" cellspacing="0" cellpadding="0">
								<TBODY>
									<TR>
										<TD style="width: 92px;">
											<DIV style="width: 76px; height: 53px;">
												<A href="http://www.cmbchina.com/CustomerService/CustomerServiceInfo.aspx?pageid=xzfwbd" target="_blank" otype="文字链接" oname="小招服务宝典" cname="便捷服务">
													<IMG style="border: 0px currentColor; border-image: none; width: 43px; height: 41px; margin-top: 5px; margin-left: 8px;" src="info_files/fwbd.jpg">
												</A>
											</DIV>
											<DIV>
												<A href="http://www.cmbchina.com/CustomerService/CustomerServiceInfo.aspx?pageid=xzfwbd" target="_blank" otype="文字链接" oname="小招服务宝典" cname="便捷服务">小招服务宝典</A>
											</DIV>
										</TD>
										<TD style="width: 92px;">
											<A href="http://t.sina.com.cn/cmbchina" target="_blank" otype="文字链接" oname="微博" cname="便捷服务">
												<IMG style="border: 0px currentColor; border-image: none; width: 76px; height: 53px;" src="info_files/toolbox_wb.jpg">
											</A>
											<DIV>
												<A href="http://t.sina.com.cn/cmbchina" target="_blank" otype="文字链接" oname="微博" cname="便捷服务">微博</A>
											</DIV>
										</TD>
									</TR>
									<TR>
										<TD style="width: 92px;">
											<A href="http://map.cmbchina.com/" target="_blank" otype="文字链接" oname="网点地图" cname="便捷服务">
												<IMG style="border: 0px currentColor; border-image: none; width: 76px; height: 53px;" src="info_files/toolbox_map.jpg">
											</A>
											<DIV>
												<A href="http://map.cmbchina.com/" target="_blank" otype="文字链接" oname="网点地图" cname="便捷服务"> 网点地图</A>
											</DIV>
										</TD>
										<TD>
											<A href="http://www.cmbchina.com/Customerservice/customerserviceinfo.aspx?pageid=calculator" target="_blank" otype="文字链接" oname="理财计算器" cname="便捷服务">
												<IMG style="border: 0px currentColor; border-image: none; width: 76px; height: 53px;" src="info_files/toolbox_jsq.jpg">
											</A>
											<DIV>
												<A href="http://www.cmbchina.com/Customerservice/customerserviceinfo.aspx?pageid=calculator" target="_blank" otype="文字链接" oname="理财计算器" cname="便捷服务">理财计算器</A>
											</DIV>
										</TD>
									</TR>
									<TR>
										<TD>
											<A href="http://shop.cmbchina.com/celltelephone/default.aspx" target="_blank" otype="文字链接" oname="手机充值" cname="便捷服务">
												<IMG style="border: 0px currentColor; border-image: none; width: 76px; height: 53px;" src="info_files/toolbox_mobile.jpg">
											</A>
											<DIV>
												<A href="http://shop.cmbchina.com/celltelephone/default.aspx" target="_blank" otype="文字链接" oname="手机充值" cname="便捷服务">手机充值</A>
											</DIV>
										</TD>
										<TD>
											<A href="http://jf.cmbchina.com/" target="_blank" otype="文字链接" oname="积分奖励" cname="便捷服务">
												<IMG style="border: 0px currentColor; border-image: none; width: 76px; height: 53px;" src="info_files/toolbox_ccclub.jpg">
											</A>
											<DIV>
												<A href="http://jf.cmbchina.com/" target="_blank" otype="文字链接" oname="积分奖励" cname="便捷服务">积分奖励</A>
											</DIV>
										</TD>
									</TR>
									<TR>
										<TD>
											<A href="http://trip.cmbchina.com/" target="_blank" otype="文字链接" oname="酒店预订" cname="便捷服务">
												<IMG style="border: 0px currentColor; border-image: none; width: 76px; height: 53px;" src="info_files/toolbox_hotel.jpg">
											</A>
											<DIV>
												<A href="http://trip.cmbchina.com/" target="_blank" otype="文字链接" oname="酒店预订" cname="便捷服务"> 酒店预订</A>
											</DIV>
										</TD>
										<TD>
											<A href="http://trip.cmbchina.com/" target="_blank" otype="文字链接" oname="机票预订" cname="便捷服务">
												<IMG style="border: 0px currentColor; border-image: none; width: 76px; height: 53px;" src="info_files/toolbox_ticket.jpg">
											</A>
											<DIV>
												<A href="http://trip.cmbchina.com/" target="_blank" otype="文字链接" oname="机票预订" cname="便捷服务"> 机票预订</A>
											</DIV>
										</TD>
									</TR>
								</TBODY>
							</TABLE>
						</DIV>
						<DIV class="whitebgbottom"></DIV>
					</DIV>
					<DIV class="toolboxbottom"></DIV>
				</DIV>
			</DIV>
		</DIV>
		<DIV class="spacer"></DIV>
		<TABLE width="950" align="center" border="0" cellspacing="0" cellpadding="0">
			<TBODY>
				<TR height="8">
					<TD></TD>
				</TR>
				<TR>
					<TD align="center" style="background-color: rgb(102, 102, 102);">
						<DIV id="FooterNav">
							<DIV style="width: 150px; height: 30px; float: left;"></DIV>
							<UL>
								<LI>
									<A href="http://www.cmbchina.com/webpages/certificate.htm" target="_blank" otype="文字链接" oname="安全说明" cname="页脚导航">安全说明</A>
								</LI>
								<LI>|</LI>
								<LI>
									<A href="http://www.cmbchina.com/about/?pageid=webnotice" otype="文字链接" oname="网站声明" cname="页脚导航">网站声明</A>
								</LI>
								<LI>|</LI>
								<LI>
									<A href="http://www.cmbchina.com/about/?pageid=privacy" otype="文字链接" oname="隐私保密条款" cname="页脚导航">隐私保密条款</A>
								</LI>
								<LI>|</LI>
								<LI>
									<A href="http://www.cmbchina.com/about/sitemap.aspx" otype="文字链接" oname="网站地图" cname="页脚导航">网站地图</A>
								</LI>
								<LI>|</LI>
								<LI>
									<A href="http://www.cmbchina.com/about/?pageid=goodlink" otype="文字链接" oname="友情链接" cname="页脚导航">友情链接</A>
								</LI>
								<LI>|</LI>
								<LI>
									<A href="javascript:AddFavorite('http://www.cmbchina.com','招商银行--欢迎来到一网通主站');" otype="文字链接" oname="加入收藏夹" cname="页脚导航">加入收藏夹</A>
								</LI>
								<LI>|</LI>
								<LI>
									<A href="http://career.cmbchina.com/" target="_blank" otype="文字链接" oname="人才招聘" cname="页脚导航">人才招聘</A>
								</LI>
								<LI>|</LI>
								<LI>
									<A href="http://www.cmbchina.com/MBankWeb/Site/" target="_blank" otype="文字链接" oname="手机一网通" cname="页脚导航">手机一网通</A>
								</LI>
								<LI>|</LI>
								<LI>
									<A href="http://link.cmbchina.com/cmbfinprod/" target="_blank" otype="文字链接" oname="产品信息查询平台" cname="页脚导航">产品信息查询平台</A>
								</LI>
							</UL>
						</DIV>
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE width="950" align="center" border="0" cellspacing="0" cellpadding="0">
			<TBODY>
				<TR>
					<TD width="15%" valign="top" style="text-align: center;" rowspan="2">
						<BR>
						<IMG alt="手机一网通二维码" src="info_files/2-dbarcode.png" border="0">
						<BR>
						<DIV style="height: 25px; line-height: 15px; font-size: 12px; font-weight: bold; margin-top: 10px;">
							手机一网通
							<BR>
							m.cmbchina.com
						</DIV>
					</TD>
					<TD>
						<TABLE width="780" align="center" border="0" cellspacing="0" cellpadding="0">
							<TBODY>
								<TR>
									<TD colspan="3">&nbsp;
								</TR>
								<TR>
									<TD width="30%">服务热线：95555</TD>
									<TD width="30%">&nbsp;</TD>
									<TD width="40%">招商银行客户投诉受理渠道：</TD>
								</TR>
								<TR>
									<TD>境外服务热线：86-755-84391000</TD>
									<TD>私人银行服务专线：40066-95555</TD>
									<TD>电话渠道：95555转7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;网络渠道：95555@cmbchina.com</TD>
								</TR>
								<TR>
									<TD>信用卡服务热线：400-820-5555</TD>
									<TD>钻石贵宾服务专线：40068-95555</TD>
									<TD>信函渠道：深圳市福田区深南大道7088号招商银行大厦，</TD>
								</TR>
								<TR>
									<TD>企业年金专线：4006095555</TD>
									<TD>金葵花贵宾服务专线：40088-95555</TD>
									<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;招商银行消费者权益保护与服务监督管理中心，</TD>
								</TR>
								<TR>
									<TD></TD>
									<TD></TD>
									<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;邮政编码：518040</TD>
								</TR>
							</TBODY>
						</TABLE>
					</TD>
				<TR width="85%">
					<TD>
						<TABLE width="95%" align="center" border="0" cellspacing="0" cellpadding="0">
							<TBODY>
								<TR>
									<TD align="center">
										<A href="http://szcert.ebs.org.cn/418b33e0-18a9-4206-bb61-1c201322a400" target="_blank">
											<IMG alt="工商网监标志" src="info_files/gongshang.jpg" border="0">
										</A>
									</TD>
									<TD width="15"></TD>
									<TD align="center">
										<A href="http://www.cmbchina.com/webpages/cmbsafe/index.htm" target="_blank">
											<IMG alt="网络安全标志" src="info_files/wangan.gif" border="0">
										</A>
									</TD>
									<TD width="15"></TD>
									<TD align="center">
										<A href="http://www.sznet110.gov.cn/netalarm/index.jsp" target="_blank">
											<IMG alt="网络安全标志" src="info_files/sz_police.gif" border="0">
										</A>
									</TD>
									<TD align="center">
										<A id="___szfw_logo___" href="https://search.szfw.org/cert/l/CX20120110001800001833" target="_blank">
											<IMG alt="诚信网站" src="info_files/chengxinlogo.png" border="0">
										</A>
									</TD>
									<TD>
										<A tabindex="-1" id="urlknet" href="https://ss.knet.cn/verifyseal.dll?sn=e13073144030041836wa7c000000&amp;ct=df&amp;a=1&amp;pa=500267" target="_blank">
											<IMG name="CNNIC_seal" onclick="CNNIC_change('urlknet')" oncontextmenu="return false;" alt="可信网站" src="info_files/knetseallogo.png" border="true">
										</A>
									</TD>
									<TD align="center" class="FooterGray">
										招商银行一网通 创建于一九九七年
										<BR>
										© 2014 招商银行 版权所有
										<BR>
										<A href="http://www.miitbeian.gov.cn/" target="_blank">粤ICP备17088997号</A>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<SCRIPT language="javascript">
function AddFavorite(sURL, sTitle)
{
    try
    {
        window.external.addFavorite(sURL, sTitle);
    }
    catch (e)
    {
        try
        {
            window.sidebar.addPanel(sTitle, sURL, "");
        }
         catch(e)
        {
        }
    }
}
    if (window.screen.width > 1024) {
    	document.body.style.background = "#fff url(http://www.cmbchina.com/images/bg.gif) no-repeat center top";
    	document.getElementById("top_bar").style.width = "950px";
    }
    else {
        document.body.style.background = "#fff";
        document.getElementById("top_bar").style.width = "100%";
    }
</SCRIPT>

		<SCRIPT type="text/javascript">(function(){document.getElementById('___szfw_logo___').oncontextmenu = function(){return false;}})();</SCRIPT>

		<SCRIPT type="text/JavaScript"> 
function CNNIC_change(eleId) 
{ 
    var str= document.getElementById(eleId).href; 
    var str1 =str.substring(0,(str.length-6)); 
    str1+=CNNIC_RndNum(6);  
    document.getElementById(eleId).href=str1; 
} 

function CNNIC_RndNum(k) 
{ 
    var rnd="";  
    for (var i=0;i < k;i++)  
        rnd+=Math.floor(Math.random()*10);  
    return rnd; 
} 
</SCRIPT>

		<SCRIPT language="javascript" src="info_files/sdc_web.js" type="text/javascript"></SCRIPT>

		<DIV class="appd_wrap_open" id="appd_wrap_open">
			<DIV class="appd_wrap_open_cnt" id="appd_wrap_open_cnt"></DIV>
		</DIV>
		<SCRIPT type="text/javascript">
   var linkflag = "True";
   var linkurl = "https://market.cmbchina.com/personal/angrybirdpc0004/index.html";
   var imgUrl = "http://images.cmbchina.com/cmbadv/201712/c1806fbe-0903-4bdd-a32c-a477f848c38e.png";
   if(linkflag == "True")
   {
   jQuery(".appd_wrap_pop_pic").attr("href",linkurl);
   }
   jQuery(".appd_wrap_pop_pic").css('background-image', 'url(' + imgUrl + ')');
   
   jQuery("#appd_wrap_close").click(function() {
       jQuery("#appd_wrap_pop").animate({ left: "-100%" }, "slow", function() {
           jQuery("#appd_wrap_open").animate({ left: "0%" });
           jQuery("#appd_wrap_open").css("display", "block");
       });

       if (jQuery.cookie("www_bottom_pop_adv") == undefined || jQuery.cookie("www_bottom_pop_adv") == null) {
           //domain:'cmbchina.com'
           jQuery.cookie("www_bottom_pop_adv", '22', { expires: 3, path: '/', domain: 'cmbchina.com' });
       }

   });
    
    jQuery("#appd_wrap_open").hover(function(){ 
         jQuery("#appd_wrap_open").animate({left:"-100%"},"slow", function(){
         jQuery("#appd_wrap_pop").css("display","block");
         jQuery("#appd_wrap_pop").animate({left:"0%"},"slow");
    });
    });


    var isshowflag = "4";
     
    //初次来正常展示，点击过关闭按钮后3天内收拢
    if (isshowflag == "1") {
        if (jQuery.cookie("www_bottom_pop_adv") == "22") {
            jQuery("#appd_wrap_open").show();
            jQuery("#appd_wrap_pop").hide();
        }
        else {
            jQuery("#appd_wrap_open").hide();
            jQuery("#appd_wrap_pop").show();
        }
    }
    //收拢
    else if (isshowflag == "2") {
        jQuery("#appd_wrap_open").show();
        jQuery("#appd_wrap_pop").hide();
    }
    //个人首页一直展示，其他页面当天首次访问展示，后续访问收拢
    else if (isshowflag == "4") {
        var curpage = window.location.pathname.toLowerCase();
        //非首次访问
        if (jQuery.cookie("www_bottom_adv_visit") == "visited") {
            //个人首页
            if (curpage == "/personal/" || curpage == "/personal/default.aspx") {
                jQuery("#appd_wrap_open").hide();
                jQuery("#appd_wrap_pop").show();
            }
            //个人业务内页
            else {
                jQuery("#appd_wrap_open").show();
                jQuery("#appd_wrap_pop").hide();
            }
        }
        //首次访问
        else {
            jQuery("#appd_wrap_open").hide();
            jQuery("#appd_wrap_pop").show();
        }
    }
    //关闭弹窗广告功能
    else {
        jQuery("#appd_wrap_open").hide();
        jQuery("#appd_wrap_pop").hide();
    }

    //首次访问后记录cookie
    if (jQuery.cookie("www_bottom_adv_visit") == undefined || jQuery.cookie("www_bottom_adv_visit") == null) {
        //domain:'cmbchina.com'
        jQuery.cookie("www_bottom_adv_visit", 'visited', { expires: 1, path: '/', domain: 'cmbchina.com' });
    }
</SCRIPT>
	<SCRIPT language="javascript" type="text/javascript">
        personalreco.RecordBrowsehistory();
        personalreco.RecordSearchhistoryOutSide();
    </SCRIPT>
</BODY>
</html>
