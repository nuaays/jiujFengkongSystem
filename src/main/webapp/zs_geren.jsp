<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>个人银行业务|卡片申请,投资理财,银行贷款优选_招商银行</title> <script
		language="javascript" type="text/javascript"
		src="./zs_geren_files/jquery-1.10.2.js"></script>
	<script language="javascript" type="text/javascript"
		src="./zs_geren_files/jquery.cookie.js"></script>
	<script type="text/javascript">
    jQuery.noConflict(); 
    </script>
	<script language="javascript" type="text/javascript"
		src="./zs_geren_files/NetBank.js"></script>
	<script language="javascript" type="text/javascript"
		src="./zs_geren_files/Common.js"></script>
	<link rel="Shortcut Icon" href="http://www.cmbchina.com/cmb.ico">
		<link rel="Bookmark" href="http://www.cmbchina.com/cmb.ico">
			<link rel="apple-touch-icon" sizes="72x72"
				href="http://www.cmbchina.com/touch-icon-ipad.png">
				<link href="./zs_geren_files/Common.css" rel="stylesheet"
					type="text/css">
					<link href="./zs_geren_files/header.css" rel="stylesheet"
						type="text/css">
						<link href="./zs_geren_files/footer.css" rel="stylesheet"
							type="text/css">
							<link href="./zs_geren_files/Personal.css" rel="stylesheet"
								type="text/css">

								<script language="javascript" type="text/javascript">
    var gDomain="sdc.cmbchina.com";	
var gDcsId="dcs5w0txb10000wocrvqy1nqm_6n1p";
var gFpc="WTFPC";
var gConvert=true;
    </script>
								<script language="javascript"
									src="./zs_geren_files/sdc_cmb.js" type="text/javascript"></script>
								<meta name="mobile-agent"
									content="format=html5;url=http://m.cmbchina.com/Personal/">
									<meta name="keywords"
										content="手机银行,网上银行,银行理财,无抵押贷款,一卡通,M+卡,金葵花,私人银行">
										<meta name="description"
											content="招商银行手机银行限时特惠,手机银行转账汇款费率优惠,持卡尊享专属银行理财产品,银行贷款融资快速通道,无抵押贷款融资渠道,以及私人银行专属权益等贵宾服务,招商银行为您提供安全、便捷的金融服务">
											<script></script>
											<script src="./zs_geren_files/sdc_cmb.js"></script>
</head>
<body
	style="background: url(&quot;http://www.cmbchina.com/images/bg.gif&quot;) center top no-repeat rgb(255, 255, 255);">
	<form method="post" action="http://www.cmbchina.com/personal/"
		id="form1">
		<div class="aspNetHidden">
			<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
				value="/wEPDwULLTExOTIyMjI2ODFkZIiQ9gEffwQS+i6GKOg6fwh2N9BGZSuDxUJpw2fgN7Wo">
		</div>

		<div class="aspNetHidden">

			<input type="hidden" name="__VIEWSTATEGENERATOR"
				id="__VIEWSTATEGENERATOR" value="BC20685F">
		</div>

		<div id="top_bar" style="width: 950px;">
			<table cellspacing="0" align="center" class="FrameTable"
				style="line-height: 32px;">
				<tbody>
					<tr>
						<td width="25"></td>
						<td width="60" align="center" id="tdf_1" style="display: none">
							<a href="javascript:toGB2312()" cname="顶部导航" oname="简体中文"
							otype="文字链接">简体中文</a>
						</td>
						<td class="version_left" id="tdf_2" style="display: none"></td>
						<td class="version_bg" width="49" id="tdf_3" style="display: none">
							<a href="javascript:toBig5()" cname="顶部导航" oname="繁体中文"
							otype="文字链接">繁体中文</a>
						</td>
						<td class="version_right" id="tdf_4" style="display: none"></td>

						<td class="version_left" id="tdj_1"></td>
						<td class="version_bg" width="49" id="tdj_2"><a
							href="javascript:toGB2312()" cname="顶部导航" oname="简体中文"
							otype="文字链接">简体中文</a></td>
						<td class="version_right" id="tdj_3"></td>
						<td width="60" align="center" id="tdj_4"><a
							href="javascript:toBig5()" cname="顶部导航" oname="繁体中文" otype="文字链接">繁体中文</a>
						</td>

						<td width="60" align="center"><fjtignoreurl>
							<a href="http://english.cmbchina.com/" target="_blank"
								cname="顶部导航" oname="English" otype="文字链接">English</a></fjtignoreurl></td>
						<td width="200"></td>
						<td align="right">
							<div id="common_navlink">
								<ul>
									<li><a href="https://user.cmbchina.com/iaion/iProduct/"
										target="_blank" cname="顶部导航" oname="一网通登录" otype="文字链接">一网通登录</a></li>
									<li>|</li>
									<li><a
										href="https://user.cmbchina.com/User/ChooseRegisterType?returnUrl=%2f"
										target="_blank" cname="顶部导航" oname="一网通注册" otype="文字链接">注册</a></li>
									<li>|</li>
									<li><a href="http://branch.cmbchina.com/" target="_blank"
										cname="顶部导航" oname="分行网站" otype="文字链接">分行网站</a></li>
									<li>|</li>
									<li><a href="http://career.cmbchina.com/" target="_blank"
										cname="顶部导航" oname="人才招聘" otype="文字链接">人才招聘</a></li>
									<li>|</li>
									<li><a href="http://map.cmbchina.com/" target="_blank"
										cname="顶部导航" oname="服务网点" otype="文字链接"> 服务网点</a></li>
									<li>|</li>
									<li><a href="javascript:fLoginICS();" cname="顶部导航"
										oname="在线客服" otype="文字链接">在线客服</a></li>
									<li>|</li>
								</ul>
							</div>
						</td>
						<td width="65">
							<div id="maplink" class="map_link"
								onmouseover="showNavList(this)" onmouseout="hideNavList()"
								cname="顶部导航" oname="网站导航" otype="文字链接">
								网站导航<span style="line-height: 20px; height: 20px;"><img
									src="./zs_geren_files/arrow_01.gif" width="8" height="4"
									border="0" align="middle"></span>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div id="divNavList"
			onmouseover="this.style.display=&#39;block&#39;; document.getElementById(&#39;maplink&#39;).className = &#39;map_link_focus&#39;;"
			onmouseout="this.style.display=&#39;none&#39;; document.getElementById(&#39;maplink&#39;).className = &#39;map_link&#39;;">
			<p>
				<font color="#ff0000"><strong><font color="#000000">投资理财：</font></strong><br></font><a
					href="http://fund.cmbchina.com/" target="_blank">基金</a> <a
					href="http://fx.cmbchina.com/" target="_blank">外汇</a> <a
					href="http://gold.cmbchina.com/" target="_blank">黄金</a> <a
					href="http://info.cmbchina.com/" target="_blank">证券</a><br><a
					href="http://www.cignacmb.com/" target="_blank">保险</a> <a
					href="http://www.cmbchina.com/cfweb" target="_blank">理财产品</a> <a
					href="http://info.cmbchina.com/bond" target="_blank">债券<strong><font
							color="#ff0000"></font></strong></a>
			</p>
			<p>
				<strong>分支机构：</strong><br><a
					href="http://www.winglungbank.com/wlbchannel.html" target="_blank">永隆银行</a>&nbsp;
					<a href="http://ny.cmbchina.com/" target="_blank">纽约分行</a>&nbsp; <a
					href="http://hk.cmbchina.com/" target="_blank">香港分行</a><br><a
						href="http://branch.cmbchina.com/0010.htm" target="_blank">北京分行</a>&nbsp;
						<a href="http://branch.cmbchina.com/0021.htm" target="_blank">上海分行</a>&nbsp;
						<a href="http://london.cmbchina.com/" target="_blank">伦敦分行</a><br><a
							href="http://sg.cmbchina.com/" target="_blank">新加坡分行</a>
			</p>
			<p>
				<strong><font color="#000000">快捷通道：<br></font></strong><a
					href="http://link.cmbchina.com/onlineservice/onlineservice.ashx">在线客服</a>
				<a href="http://forum.cmbchina.com/" target="_blank">社区</a> <a
					href="http://ccclub.cmbchina.com/" target="_blank">信用卡商城</a><br><a
					href="http://shop.cmbchina.com/CellTelephone/Default.aspx"
					target="_blank">手机充值</a> <a href="http://trip.cmbchina.com/"
					target="_blank">机票预订</a>&nbsp;&nbsp;&nbsp; <br><a
						href="http://shop.cmbchina.com/" target="_blank">商城</a>&nbsp;&nbsp;
						<a href="http://www.cmbchina.com/corporate/custody/"
						target="_blank">托管银行</a> <a href="http://pension.cmbchina.com/"
						target="_blank">企业年金</a><br><a
							href="http://supplier.cloud.cmbchina.com:8083/" target="_blank">建材品牌库</a>
			</p>
			<p>
				<strong><a
					href="http://www.cmbchina.com/About/sitemap.aspx" target="_blank"><font
						color="#000000">更多内容&gt;&gt;</font></a></strong>
			</p>
		</div>

		<script language="javascript">


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

</script>




		<!--[if lt IE 8 ]><script language="javascript" src="/Scripts/json2.min.js" type="text/javascript"></script><![endif]-->
		<script language="javascript"
			src="./zs_geren_files/personalreco.js" type="text/javascript"></script>
		<script src="./zs_geren_files/cmbsearch.js" type="text/javascript"
			charset="gb2312"></script>

		<table cellspacing="0" align="center" class="FrameTable">
			<tbody>
				<tr>
					<td><a href="http://www.cmbchina.com/" class="mainlogo"></a> <a
						href="http://www.cmbchina.com/" class="mainlogo1"></a></td>
					<td>
						<div class="mainsearch">
							<input id="SearchWord" value="理财产品"
								onfocus="this.style.color=&#39;black&#39;;
	                if (this.value == &#39;理财产品&#39; ) {
	                this.value=&#39;&#39;;
	                }"
								onblur="this.style.color = &#39;#666&#39;;
	                if ( this.value ==&#39;&#39; ){
	                this.value = &#39;理财产品&#39;;
	                }"
								name="SearchWord">
								<div style="float: left;">
									<input id="btn_search" name="btn_search" type="button"
										onclick="CmbSearch(document.getElementById(&#39;SearchWord&#39;).value, &#39;www&#39;)"
										cname="搜索" oname="搜索按钮" otype="按钮链接">
								</div>
						</div>
					</td>
				</tr>
			</tbody>
		</table>


		<script type="text/javascript">
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

</script>


		<div class="FrameTable">
			<div class="menubg">
				<div class="main_menu">
					<ul>
						<li class="MenuLeftspace">&nbsp;</li>

						<li class="MenuLi"
							onmouseout="HideMenu(event, &#39;subMenuItems&#39;)"
							onmouseover="SelectMenu(1)"><a
							href="user/zs_index.action" class="mainmenu" id="menu_1"
							cname="主菜单导航" oname="主 页" otype="文字链接">主 页</a></li>

						<li>
							<div class="mainMenu_Spacer"></div>
						</li>

						<li class="MenuLi"><a class="CurMenu"
							href="user/zs_geren.action"
							onmouseover="SelectMenu(2);" cname="主菜单导航" oname="个人业务"
							otype="文字链接"> 个人业务</a></li>

						<script>                        tabIndex = 2;</script>


						<li>
							<div class="mainMenu_Spacer"></div>
						</li>

						<li class="MenuLi"
							onmouseout="HideMenu(event, &#39;subMenuItems&#39;)"
							onmouseover="SelectMenu(3)"><a class="mainmenu"
							href="http://www.cmbchina.com/corporate" id="menu_3"
							cname="主菜单导航" oname="公司业务" otype="文字链接">公司业务</a></li>

						<li>
							<div class="mainMenu_Spacer"></div>
						</li>
						<li>
							<div class="mainMenu_Spacer"></div>
						</li>
						<li class="MenuLi"
							onmouseout="HideMenu(event, &#39;subMenuItems&#39;)"
							onmouseover="SelectMenu(4)"><a class="mainmenu"
							href="http://cc.cmbchina.com/" id="menu_4" target="_blank"
							cname="主菜单导航" oname="信用卡" otype="文字链接">信用卡</a></li>
						<li>
							<div class="mainMenu_Spacer"></div>
						</li>
						<li class="MenuLi"><a class="mainmenu"
							href="http://trip.cmbchina.com/" target="_blank" cname="主菜单导航"
							oname="商旅预订" otype="文字链接">商旅预订</a></li>
						<li>
							<div class="mainMenu_Spacer"></div>

						</li>
						<li class="MenuLi"
							onmouseout="HideMenu(event, &#39;subMenuItems&#39;)"
							onmouseover="SelectMenu(5)"><a class="mainmenu"
							href="http://www.cmbchina.com/cmbinfo" id="menu_5" cname="主菜单导航"
							oname="今日招行" otype="文字链接">今日招行</a></li>



						<li></li>
					</ul>
				</div>
				<div class="main_online">
					<a href="http://www.cmbchina.com/CustomerService/Default.aspx"
						target="_blank"> <img src="./zs_geren_files/main_95555.gif"
						border="0"></a>
				</div>
			</div>
			<div class="submenubg" id="subMenuItems"
				onmouseout="HideSubMenu(event, this)">
				<div class="sub_menu" id="sub_menu_1" style="display: none;">

					<ul>
						<li>
							<p class="submenu_title">热点频道：</p>
						</li>
						<li><a
							href="http://gongyi.cmbchina.com/Client/CommonWealActs.aspx?index=4"
							target="_blank" class="submenu" cname="热点频道" oname="公益平台"
							otype="文字链接">公益平台</a> |</li>
						<li><a href="https://fi.cmbchina.com/" target="_blank"
							class="submenu" cname="热点频道" oname="招赢通" otype="文字链接">招赢通</a> |</li>
						<li><a href="http://www.cmbchina.com/personal/sunflower"
							class="submenu" cname="热点频道" oname="金葵花理财" otype="文字链接">金葵花理财</a>
							|</li>
						<li><a href="http://www.cmbchina.com/privatebank"
							class="submenu" cname="热点频道" oname="私人银行" otype="文字链接">私人银行</a> |</li>
						<li><a href="http://fx.cmbchina.com/cgjr/" target="_blank"
							class="submenu" cname="热点频道" oname="跨境金融" otype="文字链接">跨境金融</a> |</li>
						<li><a
							href="http://www.cmbchina.com/corporate/cashmanagement"
							class="submenu" cname="热点频道" oname="现金管理" otype="文字链接">现金管理</a> |</li>

						<!--<li><a href="/cmbinfo/brand/" target="_blank" class="submenu">品牌活动</a> |</li>-->
						<li><a href="http://www.cmbchina.com/cmbir/" target="_blank"
							class="submenu" cname="热点频道" oname="投资者关系" otype="文字链接">投资者关系</a>
							|</li>
						<li><a
							href="http://www.cmbchina.com/Main/NoticeInfo.aspx?guid=5c378a13-44b5-4744-9c28-40eef2de92b6"
							target="_blank" class="submenu" cname="热点频道" oname="社区"
							otype="文字链接">社区</a> |</li>
						<li><a href="http://t.sina.com.cn/cmbchina" target="_blank"
							class="submenu" cname="热点频道" oname="微博" otype="文字链接">微博</a></li>
					</ul>

				</div>
				<div class="sub_menu" id="sub_menu_2" style="display: block;">

					<ul class="narrow">

						<li><a href="http://www.cmbchina.com/personal/sunflower"
							class="submenu" cname="个人业务二级导航" oname="金葵花理财" otype="文字链接">金葵花理财</a>
							|</li>
						<li><a href="http://www.cmbchina.com/privatebank"
							class="submenu" cname="个人业务二级导航" oname="私人银行" otype="文字链接">私人银行</a>
							|</li>
						<li><a href="http://fx.cmbchina.com/cgjr/" class="submenu"
							target="_blank" cname="个人业务二级导航" oname="跨境金融" otype="文字链接">跨境金融</a>
							|</li>
						<li><a href="../lc/loan.action"
							class="submenu" cname="个人业务二级导航" oname="个人贷款" otype="文字链接">个人贷款</a>
							|</li>
						<!--<li><a href="http://95555.cmbchina.com" target="_blank" class="submenu" cname="个人业务二级导航" oname="空中银行" otype="文字链接">空中银行</a> |</li>-->
						<li><a href="IndInfo/queryIndInfo.action"
							class="submenu" cname="个人业务二级导航" oname="一卡通" otype="文字链接">个人信息管理</a>
							|</li>
						<li><a href="http://www.cmbchina.com/personal/WealthAccount"
							class="submenu" cname="个人业务二级导航" oname="财富账户" otype="文字链接">财富账户</a>
							|</li>

						<li><a href="http://www.cmbchina.com/personal/ebank"
							class="submenu" cname="个人业务二级导航" oname="电子银行" otype="文字链接">电子银行</a>
							|</li>
						<li><a href="http://www.cmbchina.com/personal/living"
							class="submenu" cname="个人业务二级导航" oname="居家生活" otype="文字链接">居家生活</a>
							|</li>
						<li><a href="http://www.cmbchina.com/personal/saving"
							class="submenu" cname="个人业务二级导航" oname="储蓄业务" otype="文字链接">储蓄业务</a>
							|</li>
						<li><a href="http://www.cmbchina.com/personal/invest"
							class="submenu" cname="个人业务二级导航" oname="投资理财" otype="文字链接">投资理财</a>
							|</li>
						<li><a href="http://www.cmbchina.com/personal/netbank"
							class="submenu" cname="个人业务二级导航" oname="网上个人银行" otype="文字链接">网上个人银行</a>
							|</li>
						<li><a href="http://link.cmbchina.com/cmbfinprod/"
							target="_blank" class="submenu" cname="个人业务二级导航" oname="产品信息查询平台"
							otype="文字链接">产品信息查询平台</a></li>

					</ul>

				</div>
				<div class="sub_menu" id="sub_menu_3" style="display: none;">

					<ul>
						<li>
							<p class="submenu_title">&nbsp;</p>
						</li>
						<li><a
							href="http://www.cmbchina.com/corporate/cashmanagement"
							class="submenu" cname="公司业务二级导航" oname="现金管理" otype="文字链接">现金管理</a>
							|</li>
						<li><a href="http://www.cmbchina.com/corporate/domestic"
							class="submenu" cname="公司业务二级导航" oname="国内业务" otype="文字链接">国内业务</a>
							|</li>
						<li><a href="http://www.cmbchina.com/corporate/international"
							class="submenu" cname="公司业务二级导航" oname="跨境金融" otype="文字链接">跨境金融</a>
							|</li>

						<li><a href="http://www.cmbchina.com/corporate/investment"
							class="submenu" cname="公司业务二级导航" oname="投资银行" otype="文字链接">投资银行</a>
							|</li>
						<li><a href="http://www.cmbchina.com/corporate/offshore"
							class="submenu" cname="公司业务二级导航" oname="离岸业务" otype="文字链接">离岸业务</a>
							|</li>
						<li><a href="http://www.cmbchina.com/corporate/custody"
							class="submenu" cname="公司业务二级导航" oname="资产托管" otype="文字链接">资产托管</a>
							|</li>
						<li><a href="http://www.cmbchina.com/corporate/pension"
							class="submenu" cname="公司业务二级导航" oname="养老金金融" otype="文字链接">养老金金融</a>
							|</li>
						<li><a href="http://www.cmbchina.com/cfweb/corporate/"
							class="submenu" target="_blank" cname="公司业务二级导航" oname="公司理财"
							otype="文字链接">公司理财</a> |</li>
						<li><a href="http://www.cmb-leasing.com/" target="_blank"
							class="submenu" cname="公司业务二级导航" oname="融资租赁" otype="文字链接">融资租赁</a>
							|</li>
						<li><a href="http://www.cmbchina.com/corporate/financial"
							class="submenu" cname="公司业务二级导航" oname="同业金融" otype="文字链接">同业金融</a>
							|</li>
						<li><a href="http://www.cmbchina.com/corporate/firmbank"
							class="submenu" cname="公司业务二级导航" oname="网上企业银行" otype="文字链接">网上企业银行</a></li>
					</ul>

				</div>
				<div class="sub_menu" id="sub_menu_4" style="display: none">
					<ul>
						<li>
							<p class="submenu_title">&nbsp;</p>
						</li>
						<li><a href="http://cc.cmbchina.com/" target="_blank"
							class="submenu" cname="主菜单二级导航-信用卡" oname="信用卡首页" otype="文字链接">信用卡首页</a>
							|</li>
						<li><a href="http://cc.cmbchina.com/cusservice/"
							target="_blank" class="submenu" cname="主菜单二级导航-信用卡" oname="客户服务"
							otype="文字链接">客户服务</a> |</li>
						<li><a
							href="http://ccclub.cmbchina.com/ccproduct/newcustomer.aspx?WT.mc_id=N379101201012150"
							target="_blank" class="submenu" cname="主菜单二级导航-信用卡"
							oname="信用卡在线申请" otype="文字链接"> 信用卡在线申请</a> |</li>
						<li><a href="http://cc.cmbchina.com/Promotion/"
							target="_blank" class="submenu" cname="主菜单二级导航-信用卡" oname="特惠快讯"
							otype="文字链接"> 特惠快讯</a> |</li>
						<li><a href="http://jf.cmbchina.com/" target="_blank"
							class="submenu" cname="主菜单二级导航-信用卡" oname="积分计划" otype="文字链接">积分奖励</a>
							|</li>
						<li><a href="http://best.cmbchina.com/" target="_blank"
							class="submenu" cname="主菜单二级导航-信用卡" oname="优惠商户" otype="文字链接">优惠商户</a>
							|</li>
						<li><a href="http://cc.cmbchina.com/StepShop/"
							target="_blank" class="submenu" cname="主菜单二级导航-信用卡"
							oname="分期付款购物" otype="文字链接">分期付款购物</a> |</li>
						<li><a href="http://cc.cmbchina.com/financing/"
							target="_blank" class="submenu" cname="主菜单二级导航-信用卡" oname="信贷理财"
							otype="文字链接"> 信贷理财</a> |</li>
						<li><a href="http://trip.cmbchina.com/" target="_blank"
							class="submenu" cname="主菜单二级导航-信用卡" oname="商旅预订" otype="文字链接">商旅预订</a></li>
					</ul>
				</div>
				<div class="sub_menu" id="sub_menu_5" style="display: none;">

					<ul>
						<li>
							<p class="submenu_title">&nbsp;</p>
						</li>
						<li><a href="http://www.cmbchina.com/cmbinfo/aboutcmb/"
							class="submenu" cname="今日招行二级导航" oname="招行介绍" otype="文字链接">招行介绍</a>
							|</li>
						<li><a href="http://www.cmbchina.com/cmbinfo/news/"
							class="submenu" cname="今日招行二级导航--cmbinfo" oname="招行新闻"
							otype="文字链接">招行新闻</a> |</li>
						<li><a href="http://www.cmbchina.com/cmbir" target="_blank"
							class="submenu" cname="今日招行二级导航--cmbinfo" oname="投资者关系"
							otype="文字链接">投资者关系</a> |</li>

						<li><a href="http://www.cmbchina.com/cmbinfo/awards/"
							class="submenu" cname="今日招行二级导航--cmbinfo" oname="荣誉榜"
							otype="文字链接">荣誉榜</a> |</li>
						<li><a href="http://www.cmbchina.com/cmbinfo/brand/"
							class="submenu" cname="今日招行二级导航--cmbinfo" oname="首席观点"
							otype="文字链接">首席观点</a> |</li>
						<li><a href="http://career.cmbchina.com/" target="_blank"
							class="submenu" cname="今日招行二级导航--cmbinfo" oname="人才招聘"
							otype="文字链接">人才招聘</a> |</li>
						<li><a href="http://purchase.cmbchina.com/portal/"
							target="_blank" class="submenu" cname="今日招行二级导航--cmbinfo"
							oname="采购平台" otype="文字链接">采购平台</a> |</li>
						<li><a href="http://gongyi.cmbchina.com/qyzr/"
							class="submenu" target="_blank" cname="今日招行二级导航--cmbinfo"
							oname="企业社会责任" otype="文字链接">企业社会责任</a> |</li>
						<!--    <li>
        <a href="/cmbinfo/finremark/" class="submenu" cname="今日招行二级导航--cmbinfo" oname="金融市场评论" otype="文字链接">金融市场评论</a> |</li>-->
						<li><a href="http://www.cmbchina.com/assetdisposal"
							class="submenu" cname="今日招行二级导航--cmbinfo" oname="资产处置"
							otype="文字链接">资产处置</a> |</li>
						<li><a
							href="http://www.cmbchina.com/Cmb2014Web/CmbInfo/CustomerService/"
							target="_blank" class="submenu" cname="个人业务二级导航" oname="消费者权益保护"
							otype="文字链接">消费者权益保护</a></li>
					</ul>

				</div>
				<div class="sub_menu" id="sub_menu_6" style="display: none">

					<ul>
						<li>
							<p class="submenu_title">&nbsp;</p>
						</li>
						<li><a
							href="http://www.cmbchina.com/corporate/cashmanagement"
							class="submenu" cname="公司业务二级导航" oname="现金管理" otype="文字链接">现金管理</a>
							|</li>
						<li><a href="http://www.cmbchina.com/corporate/domestic"
							class="submenu" cname="公司业务二级导航" oname="国内业务" otype="文字链接">国内业务</a>
							|</li>
						<li><a href="http://www.cmbchina.com/corporate/international"
							class="submenu" cname="公司业务二级导航" oname="跨境金融" otype="文字链接">跨境金融</a>
							|</li>

						<li><a href="http://www.cmbchina.com/corporate/investment"
							class="submenu" cname="公司业务二级导航" oname="投资银行" otype="文字链接">投资银行</a>
							|</li>
						<li><a href="http://www.cmbchina.com/corporate/offshore"
							class="submenu" cname="公司业务二级导航" oname="离岸业务" otype="文字链接">离岸业务</a>
							|</li>
						<li><a href="http://www.cmbchina.com/corporate/custody"
							class="submenu" cname="公司业务二级导航" oname="资产托管" otype="文字链接">资产托管</a>
							|</li>
						<li><a href="http://www.cmbchina.com/corporate/pension"
							class="submenu" cname="公司业务二级导航" oname="养老金金融" otype="文字链接">养老金金融</a>
							|</li>
						<li><a href="http://www.cmbchina.com/cfweb/corporate/"
							class="submenu" target="_blank" cname="公司业务二级导航" oname="公司理财"
							otype="文字链接">公司理财</a> |</li>
						<li><a href="http://www.cmb-leasing.com/" target="_blank"
							class="submenu" cname="公司业务二级导航" oname="融资租赁" otype="文字链接">融资租赁</a>
							|</li>
						<li><a href="http://www.cmbchina.com/corporate/financial"
							class="submenu" cname="公司业务二级导航" oname="同业金融" otype="文字链接">同业金融</a>
							|</li>
						<li><a href="http://www.cmbchina.com/corporate/firmbank"
							class="submenu" cname="公司业务二级导航" oname="网上企业银行" otype="文字链接">网上企业银行</a></li>
					</ul>

				</div>
			</div>
			<div class="submenubottom"></div>
		</div>

		<script type="text/javascript">       
     SelectMenu(tabIndex);
  </script>



		<div class="DivContainer">
			<div class="DivLeft">

				<div id="NavigationLinkDiv"
					style="width:; height: 28px; border: 1px solid #cccccc; background-color: #F1F1F1; line-height: 28px; color: #696969">
					&nbsp; &nbsp;当前位置：&nbsp; <a id="content_NavigationLink1_main"
						href="http://www.cmbchina.com/">九江银行</a> &gt; <a
						id="content_NavigationLink1_Root"></a><a
						id="content_NavigationLink1_parentPageInfo"
						href="http://www.cmbchina.com/Personal">个人业务</a> &gt; <a
						id="content_NavigationLink1_subParentPageInfo"></a> 首页
				</div>
				<div style="margin-top: 5px">

					<div id="MainBanner">
						<div id="SlidePlayer" style="width: 721px; height: 130px;">
							<ul class="Slides" id="Slides" style="height: 130px;">

								<li style="width: 721px; height: 130px;"><a
									href="http://www.cmbchina.com/personal/#" target="_self"
									cname="主广告位--personalbusiness" oname="招商银行App7.0全新上线"
									otype="图片链接"> <img title="招商银行App7.0全新上线"
										style="width: 721px; height: 130px; display: none; opacity: -0.01;"
										src="./zs_geren_files/95c48f26-169e-41aa-836c-c7f81b09c41e.jpg"></a>
								</li>

								<li style="width: 721px; height: 130px;"><a
									href="http://survey.pcac.org.cn:8080/survey/showSurvey/survey7"
									target="_blank" cname="主广告位--personalbusiness" oname="移动支付调查问卷"
									otype="图片链接"> <img title="移动支付调查问卷"
										style="width: 721px; height: 130px; display: block; opacity: 0.19;"
										src="./zs_geren_files/8b597e9c-ca80-4d78-8222-7876455e8eba.jpg"></a>
								</li>

								<li style="width: 721px; height: 130px;"><a
									href="https://market.cmbchina.com/personal/sjpx/index.html"
									target="_blank" cname="主广告位--personalbusiness"
									oname="寻找改变世界的中国少年" otype="图片链接"> <img title="寻找改变世界的中国少年"
										style="width: 721px; height: 130px; display: block; opacity: 0.79;"
										src="./zs_geren_files/bb1323d1-1e0e-492f-8318-4c1a4f3973ee.jpg"></a>
								</li>

								<li style="width: 721px; height: 130px;"><a
									href="http://www.cmbchina.com/Personal/Promotion/PrmotionInfo.aspx?guid=4af00a54-9106-411c-85bf-b1495dfa13cf"
									target="_blank" cname="主广告位--personalbusiness" oname="借记卡办卡"
									otype="图片链接"> <img title="借记卡办卡"
										style="width: 721px; height: 130px; display: none; opacity: -0.01;"
										src="./zs_geren_files/60f08c1c-b019-4140-8230-49282d12b627.jpg"></a>
								</li>

							</ul>
							<ul class="SlideTriggers" id="SlideTriggers"
								style="display: block">
								<li class="">1</li>

								<li class="">2</li>

								<li class="current">3</li>

								<li class="">4</li>

							</ul>
						</div>
					</div>

					<script src="./zs_geren_files/YUI.js" type="text/javascript"></script>

					<script type="text/javascript">
    //    SlidePlayerShow = function(parm) {
    //        function Each(list, fun) {
    //            for (var i = 0, len = list.length; i < len; i++) { fun(list[i], i); }
    //        };

    //        var Nums = $("SlideTriggers").getElementsByTagName("li");
    //        parm = parm.replace("px", "");
    //        var tv2 = new TransformView("SlidePlayer", "Slides", parm, Nums.length, {
    //            onStart: function() { Each(Nums, function(o, i) { o.className = tv2.Index == i ? "current" : ""; }) }, //按钮样式
    //            Up: true
    //        });

    //        tv2.Start();
    //        $("Slides").onmouseover = function() {
    //            tv2.Stop();
    //        }
    //        $("Slides").onmouseout = function() {
    //        tv2.Start();
    //        }
    //        Each(Nums, function(o, i) {
    //            o.onmouseover = function() {
    //                o.className = "current";
    //                tv2.Auto = false;
    //                tv2.Index = i;
    //            }
    //            o.onmouseout = function() {
    //                o.className = "";
    //                tv2.Auto = true;
    //                tv2.Start();
    //            }
    //        })
    //    }
    //var height = "130px";
    //SlidePlayerShow(height);
    //window.Error = function() { return true };
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
</script>


				</div>
				<div style="clear: both"></div>


				<div class="newactivity">
					<h2 class="newactivity_head">
						<span id="spanleft">您可能感兴趣的产品</span><span id="spanright">优惠快讯</span>
					</h2>
					<div class="newactivity_container">
						<div class="left">
							<div class="personalreco_con" id="personalreco_con">
								<div class="leftpic">
									<a
										href="http://www.cmbchina.com/personal/allinonecard/CardInfo.aspx?guid=2865d3ab-6264-4a41-baf2-1ee84c847b26"
										target="_blank" cname="您可能感兴趣的产品" oname="金卡" otype="文字链接"><img
										src="./zs_geren_files/0f66293d-7b00-494d-8e1b-8447e2917653.jpg"></a>
								</div>
								<div class="righttxt">
									<div class="title">金卡</div>
									<div class="describe">
										<a
											href="http://www.cmbchina.com/personal/allinonecard/CardInfo.aspx?guid=2865d3ab-6264-4a41-baf2-1ee84c847b26"
											target="_blank" cname="您可能感兴趣的产品" oname="金卡" otype="文字链接">“一卡通”金卡是招商银行发行的具有综合理财功能的借记卡（储蓄卡），不仅可以尊享各营业网点的专属理财服务区，使用方便快捷的各类理财渠道，选择丰富多样的理财产品，更拥有专属的理财专员根据您的需求为您悉心规划理财方案，伴您开创精英生活！</a>
									</div>
								</div>
							</div>
						</div>
						<div class="u_mid_spacer"></div>
						<div class="right">

							<li class="repeaterli"><a
								href="http://www.cmbchina.com/personal/common.aspx?pageid=20180920xsth"
								target="_blank" class="red"> · 招商银行App限时特惠，9月权益特典</a></li>

							<li class="repeaterli"><a
								href="http://www.cmbchina.com/Personal/Promotion/PrmotionInfo.aspx?guid=631c7a55-f41e-42ff-8783-20e0ff7aaee7"
								target="_blank" class="red"> · 招商银行2018年“双向纸黄金”交易大...</a></li>

							<li class="repeaterli"><a
								href="http://www.cmbchina.com/personal/common.aspx?pageid=20180806xsth"
								target="_blank" class="red"> · 招商银行App限时特惠 8月权益特典</a></li>

							<li class="repeaterli"><a
								href="http://www.cmbchina.com/Personal/Promotion/PrmotionInfo.aspx?guid=18990bd0-22d4-4363-b12e-155a9b45d5f3"
								target="_blank" class="gray"> · [一网通支付专享]清凉夏日，友宝请你1...</a></li>

							<li class="repeaterli"><a
								href="http://www.cmbchina.com/Personal/Promotion/PrmotionInfo.aspx?guid=8d8b5615-0ee8-4b3d-bb05-759e28c8ed0b"
								target="_blank" class="gray"> · [一网通支付专享]想吃就吃，魔盒犒劳你...</a></li>

							<div
								style="width: 49px; height: 20px; float: right; margin-top: 22px; margin-right: 15px">
								<a
									href="http://www.cmbchina.com/Personal/Promotion/default.aspx"
									target="_blank"> <img class="morebtn"
									src="./zs_geren_files/more.jpg" alt="更多" width="49px"
									height="19px"></a>
							</div>
						</div>
					</div>
				</div>

				<div style="clear: both"></div>
				<div style="margin-bottom: 8px;"></div>


				<script language="javascript">


    var finaIndex = 1;
    var finaTime = setInterval("autoShow()", 2000);
    var pause = false;
    function autoShow() {

        if (finaIndex <= 8) {

            if (document.getElementById("fmenu_" + finaIndex))
                changeFinanceMenu(document.getElementById("fmenu_" + finaIndex), finaIndex);
            finaIndex++;
        }
        else {
            changeFinanceMenu(document.getElementById("fmenu_1"), 1);
            pause = true;
            clearInterval(finaTime);
        }
    }
    function changeFinanceMenu(obj, index) {
        finaIndex = index;
        for (i = 1; i <= 8; i++) {
            if (document.getElementById("Div" + i))
                document.getElementById("Div" + i).style.display = "none";
            if (document.getElementById("fmenu_" + i))
                document.getElementById("fmenu_" + i).parentNode.className = "f_menu";
        }
        obj.parentNode.className = "f_curmenu";
        if (document.getElementById("Div" + index))
            document.getElementById("Div" + index).style.display = "block";
    }

</script>

				<div class="m_finance_con">
					<div class="finance_menu_home"></div>
					<div class="finance_menu">
						<ul>
							<li class="finance_menu_left"></li>
							<li class="f_curmenu"><a
								href="http://www.cmbchina.com/cfweb" cname="财富管理--理财产品"
								oname="理财产品" otype="文字链接" target="_blank" id="fmenu_1"
								onmouseover="changeFinanceMenu(this,1);"> 理财产品</a></li>
							<li>
								<div class="f_menu_spit"></div>
							</li>
							<li class="f_menu"><a href="http://fund.cmbchina.com/"
								cname="财富管理--基金" oname="基金" otype="文字链接" target="_blank"
								id="fmenu_2" onmouseover="changeFinanceMenu(this,2);"> 基金</a></li>
							<li>
								<div class="f_menu_spit"></div>
							</li>
							<li class="f_menu"><a href="http://gold.cmbchina.com/"
								cname="财富管理--黄金" oname="黄金" otype="文字链接" target="_blank"
								id="fmenu_3" onmouseover="changeFinanceMenu(this,3);"> 黄金</a></li>
							<li>
								<div class="f_menu_spit"></div>
							</li>
							<li class="f_menu"><a href="http://fx.cmbchina.com/"
								cname="财富管理--外汇" oname="外汇" otype="文字链接" target="_blank"
								id="fmenu_4" onmouseover="changeFinanceMenu(this,4);"> 外汇</a></li>
							<li>
								<div class="f_menu_spit"></div>
							</li>
							<li class="f_menu"><a href="http://info.cmbchina.com/"
								cname="财富管理--证券" oname="证券" otype="文字链接" target="_blank"
								id="fmenu_5" onmouseover="changeFinanceMenu(this,5);"> 证券</a></li>
							<li>
								<div class="f_menu_spit"></div>
							</li>
							<li class="f_menu"><a href="http://futures.cmbchina.com/"
								cname="财富管理--期货" oname="期货" otype="文字链接" target="_blank"
								id="fmenu_6" onmouseover="changeFinanceMenu(this,6);"> 期货</a></li>
							<li>
								<div class="f_menu_spit"></div>
							</li>
							<li class="f_menu"><a href="http://cmbchina.cignacmb.com/"
								cname="财富管理--保险" oname="保险" otype="文字链接" target="_blank"
								id="fmenu_7" onmouseover="changeFinanceMenu(this,7);"> 保险</a></li>
							<li>
								<div class="f_menu_spit"></div>
							</li>
							<li class="f_menu"><a
								href="http://ccclub.cmbchina.com/ccclubnew/default.aspx"
								cname="财富管理--商城" oname="商城" otype="文字链接" target="_blank"
								id="fmenu_8" onmouseover="changeFinanceMenu(this,8);"> 商城</a></li>
							<li class="finance_menu_right"></li>
						</ul>
					</div>
					<div id="Div1" class="m_finance_container" style="display: block;">

						<div class="m_finance_left">
							<h2 class="m_finance_title">
								<span>热销理财产品</span>
							</h2>
							<div class="m_finance_more">
								<a href="http://www.cmbchina.com/cfweb/" cname="财富管理--理财产品"
									oname="更多" otype="文字链接" target="_blank"> <img
									class="common_img_more" src="./zs_geren_files/more.jpg"></a>
							</div>
							<div style="clear: both"></div>
							<div class="m_finance_info">

								<li class="repeaterli">·<a
									href="http://www.cmbchina.com/cfweb/personal/productdetail.aspx?code=6906"
									target="_blank" title="保本步步生金6号理财计划" cname="财富管理--理财产品"
									oname="6906" otype="文字链接"> 保本步步生金6号理财计划(6906) </a></li>

								<li class="repeaterli">·<a
									href="http://www.cmbchina.com/cfweb/personal/productdetail.aspx?code=8169"
									target="_blank" title="招商银行手机银行专享—招银进宝系列之人民币日日盈理财计划（产品代码：8169）"
									cname="财富管理--理财产品" oname="8169" otype="文字链接">
										招商银行手机银行专享—招银进宝系列之...(8169) </a></li>

								<li class="repeaterli">·<a
									href="http://www.cmbchina.com/cfweb/personal/productdetail.aspx?code=9439"
									target="_blank" title="招商银行私家典藏—招银进宝系列之人民币日日盈理财计划产品代码:9439"
									cname="财富管理--理财产品" oname="9439" otype="文字链接">
										招商银行私家典藏—招银进宝系列之人民...(9439) </a></li>

							</div>
							<div class="m_finance_more">
								<a href="http://www.cmbchina.com/cfweb/" target="_blank"
									cname="财富管理--理财产品" oname="more" otype="文字链接"> <img
									class="common_img_more" src="./zs_geren_files/more.jpg"></a>
							</div>
						</div>
						<div class="m_finance_midline"></div>
						<div class="m_finance_right">
							<h2 class="m_finance_title">
								<span>理财产品快捷通道</span>
							</h2>
							<div class="m_finance_info">
								<table cellspacing="0" cellpadding="0" width="100%"
									align="center" border="0">
									<tbody>
										<tr>
											<td width="12" rowspan="5"></td>
											<td width="55%">·<a
												href="http://www.cmbchina.com/cfweb/personal/"
												target="_blank" cname="财富管理--理财产品" oname="理财产品" otype="文字链接">个人理财产品</a></td>
											<td>·<a
												href="http://www.cmbchina.com/cfweb/personal/prodvalue.aspx"
												target="_blank" cname="财富管理--理财产品" oname="个人产品净值"
												otype="文字链接">产品净值</a></td>
										</tr>
										<tr>
											<td>·<a href="http://www.cmbchina.com/cfweb/Corporate/"
												target="_blank" cname="财富管理--理财产品" oname="公司理财产品"
												otype="文字链接">公司理财产品</a></td>
											<td>·<a
												href="http://www.cmbchina.com/cfweb/Corporate/prodvalue.aspx"
												target="_blank" cname="财富管理--理财产品" oname="公司产品净值"
												otype="文字链接">产品净值</a></td>
										</tr>
										<tr>
											<td>·<a href="http://www.cmbchina.com/cfweb/Financial/"
												target="_blank" cname="财富管理--理财产品" oname="银和理财产品"
												otype="文字链接">银和理财产品</a></td>
											<td>·<a
												href="http://www.cmbchina.com/cfweb/Financial/prodvalue.aspx"
												target="_blank" cname="财富管理--理财产品" oname="银和产品净值"
												otype="文字链接">产品净值</a></td>
										</tr>
										<tr>
											<td>·<a
												href="http://www.cmbchina.com/cfweb/personal/prodnotice.aspx"
												target="_blank">个人理财产品公告</a></td>
											<td>·<a
												href="http://www.cmbchina.com/cfweb/Corporate/prodnotice.aspx"
												target="_blank">公司理财产品公告</a></td>
										</tr>
										<tr>
											<td>·<a
												href="http://www.cmbchina.com/cfweb/Financial/prodnotice.aspx"
												target="_blank">银和理财产品公告</a></td>
											<td>·<a
												href="http://info.cmbchina.com/Financing/?channel=Financing&amp;topic=Bank"
												target="_blank" cname="财富管理--理财产品" oname="理财资讯" otype="文字链接">理财资讯</a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

					</div>
					<div class="spacer"></div>
					<div id="Div2" style="display: none;" class="m_finance_container">

						<div class="m_finance_left">
							<h2 class="m_finance_title">
								<span>热销基金</span>
							</h2>
							<div class="m_finance_more">
								<a href="http://fund.cmbchina.com/openfund" target="_blank"
									cname="财富管理--基金" oname="更多" otype="文字链接"> <img
									class="common_img_more" src="./zs_geren_files/more.jpg"></a>
							</div>
							<div style="clear: both"></div>
							<div class="m_finance_info">
								<table id="content_FinanceIndex1_Fund1_listfund" cellspacing="0"
									style="width: 100%; border-collapse: collapse;">
									<tbody>
										<tr>
											<td style="height: 22px; width: 50%;"><a
												href="http://fund.cmbchina.com/fundpages/common/funddetail.aspx?fundid=090007"
												target="_blank" cname="财富管理--基金" oname="090007" otype="文字链接">·
													大成策略回报 (090007)</a></td>
											<td style="height: 22px; width: 50%;"><a
												href="http://fund.cmbchina.com/fundpages/common/funddetail.aspx?fundid=460005"
												target="_blank" cname="财富管理--基金" oname="460005" otype="文字链接">·
													华泰柏瑞价值增长 (460005)</a></td>
										</tr>
										<tr>
											<td style="height: 22px; width: 50%;"><a
												href="http://fund.cmbchina.com/fundpages/common/funddetail.aspx?fundid=165511"
												target="_blank" cname="财富管理--基金" oname="165511" otype="文字链接">·
													信诚中证500 (165511)</a></td>
											<td style="height: 22px; width: 50%;"><a
												href="http://fund.cmbchina.com/fundpages/common/funddetail.aspx?fundid=050010"
												target="_blank" cname="财富管理--基金" oname="050010" otype="文字链接">·
													博时特许价值 (050010)</a></td>
										</tr>
										<tr>
											<td style="height: 22px; width: 50%;"><a
												href="http://fund.cmbchina.com/fundpages/common/funddetail.aspx?fundid=340001"
												target="_blank" cname="财富管理--基金" oname="340001" otype="文字链接">·
													兴全可转债 (340001)</a></td>
											<td style="height: 22px; width: 50%;"><a
												href="http://fund.cmbchina.com/fundpages/common/funddetail.aspx?fundid=160603"
												target="_blank" cname="财富管理--基金" oname="160603" otype="文字链接">·
													鹏华普天收益 (160603)</a></td>
										</tr>
										<tr>
											<td style="height: 22px; width: 50%;"><a
												href="http://fund.cmbchina.com/fundpages/common/funddetail.aspx?fundid=217003"
												target="_blank" cname="财富管理--基金" oname="217003" otype="文字链接">·
													招商安泰债券A (217003)</a></td>
											<td style="height: 22px; width: 50%;"><a
												href="http://fund.cmbchina.com/fundpages/common/funddetail.aspx?fundid=270026"
												target="_blank" cname="财富管理--基金" oname="270026" otype="文字链接">·
													广发中小板300... (270026)</a></td>
										</tr>
										<tr>
											<td style="height: 22px; width: 50%;"><a
												href="http://fund.cmbchina.com/fundpages/common/funddetail.aspx?fundid=070019"
												target="_blank" cname="财富管理--基金" oname="070019" otype="文字链接">·
													嘉实价值优势 (070019)</a></td>
											<td style="height: 22px; width: 50%;"><a
												href="http://fund.cmbchina.com/fundpages/common/funddetail.aspx?fundid=161005"
												target="_blank" cname="财富管理--基金" oname="161005" otype="文字链接">·
													富国天惠精选成长 (161005)</a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="m_finance_midline"></div>
						<div class="m_finance_right">
							<h2 class="m_finance_title">
								<span>基金快捷通道</span>
							</h2>
							<div class="m_finance_info">
								<table cellspacing="0" cellpadding="0" width="100%"
									align="center" border="0">
									<tbody>
										<tr>
											<td width="12" rowspan="5"></td>
											<td width="55%">·<a
												href="http://fund.cmbchina.com/FundPages/OpenFund/FundNetValue.aspx"
												target="_blank" cname="财富管理--基金" oname="基金净值" otype="文字链接">基金净值</a></td>
											<td>·<a href="http://fund.cmbchina.com/openfund"
												target="_blank" cname="财富管理--基金" oname="开放式基金" otype="文字链接">开放式基金</a></td>
										</tr>
										<tr>
											<td>·<a href="http://fund.cmbchina.com/company"
												target="_blank" cname="财富管理--基金" oname="基金公司" otype="文字链接">基金公司</a>&nbsp;
											</td>
											<td>·<a href="http://fund.cmbchina.com/closefund"
												target="_blank" cname="财富管理--基金" oname="封闭式基金" otype="文字链接">封闭式基金</a></td>
										</tr>
										<tr>
											<td>·<a href="http://fund.cmbchina.com/news"
												target="_blank" cname="财富管理--基金" oname="基金资讯" otype="文字链接">基金资讯</a></td>
											<td>·<a
												href="http://fund.cmbchina.com/FundPages/OpenFund/FundLeaderBoard.aspx"
												target="_blank" cname="财富管理--基金" oname="基金排行榜" otype="文字链接">基金排行榜</a></td>
										</tr>
										<tr>
											<td>·<a href="http://fund.cmbchina.com/school"
												target="_blank" cname="财富管理--基金" oname="基金学院" otype="文字链接">基金学苑</a>&nbsp;
											</td>
											<td>·<a
												href="http://fund.cmbchina.com/FundPages/OpenFund/MorningStarRank.aspx"
												target="_blank" cname="财富管理--基金" oname="基金评级" otype="文字链接">基金评级</a></td>
										</tr>
										<tr>
											<td>·<a
												href="http://fund.cmbchina.com/CMBCURVE/jzqx_new.aspx"
												target="_blank">基金曲线</a></td>
											<td>·<a
												href="http://fund.cmbchina.com/FundPages/OpenFund/FinancialProducts.aspx"
												target="_blank">券商理财</a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

					</div>
					<div class="spacer"></div>
					<div id="Div3" style="display: none;" class="m_finance_container">

						<div class="m_finance_left">
							<h2 class="m_finance_title">
								<span>推荐产品</span>
							</h2>
							<div class="m_finance_more">
								<a href="http://gold.cmbchina.com/Products/SearchList.aspx"
									target="_blank" cname="财富管理--黄金" oname="更多" otype="文字链接"> <img
									class="common_img_more" src="./zs_geren_files/more.jpg"></a>
							</div>
							<div style="clear: both"></div>
							<div class="m_finance_info">

								<div class="goldProduct">
									<a
										href="http://gold.cmbchina.com/Products/ProductDetail.aspx?PrdCode=FJ025GLD0003K0500"
										target="_blank" title="招行金投资金条" cname="财富管理--黄金"
										oname="招行金投资金条" otype="文字链接"> <img class="prdImg"
										src="./zs_geren_files/cb009c76-b8d1-45b6-90e4-9c05a34d3311.jpg"
										alt="招行金投资金条"></a>
									<div class="textLine">
										<a
											href="http://gold.cmbchina.com/Products/ProductDetail.aspx?PrdCode=FJ025GLD0003K0500"
											target="_blank" title="招行金投资金条" cname="财富管理--黄金"
											oname="招行金投资金条" otype="文字链接"> 招行金投资金条 </a>
									</div>
									<div class="textLine priceTag" style="font-size: 14px">￥142,775.00</div>
								</div>

								<div class="goldProduct">
									<a
										href="http://gold.cmbchina.com/Products/ProductDetail.aspx?PrdCode=FJ054AUG0002K0500"
										target="_blank" title="金鸡报福大银章" cname="财富管理--黄金"
										oname="金鸡报福大银章" otype="文字链接"> <img class="prdImg"
										src="./zs_geren_files/dfd59058-775e-44fb-a301-4517bf57e5e2.jpg"
										alt="金鸡报福大银章"></a>
									<div class="textLine">
										<a
											href="http://gold.cmbchina.com/Products/ProductDetail.aspx?PrdCode=FJ054AUG0002K0500"
											target="_blank" title="金鸡报福大银章" cname="财富管理--黄金"
											oname="金鸡报福大银章" otype="文字链接"> 金鸡报福大银章 </a>
									</div>
									<div class="textLine priceTag" style="font-size: 14px">￥6,730.00</div>
								</div>

								<div class="goldProduct">
									<a
										href="http://gold.cmbchina.com/Products/ProductDetail.aspx?PrdCode=FJ054GLD0022K0100"
										target="_blank" title="金鸡报福金章（刻字）" cname="财富管理--黄金"
										oname="金鸡报福金章（刻字）" otype="文字链接"> <img class="prdImg"
										src="./zs_geren_files/878c0b32-6912-4205-8ca8-4fdddcd2a261.jpg"
										alt="金鸡报福金章（刻字）"></a>
									<div class="textLine">
										<a
											href="http://gold.cmbchina.com/Products/ProductDetail.aspx?PrdCode=FJ054GLD0022K0100"
											target="_blank" title="金鸡报福金章（刻字）" cname="财富管理--黄金"
											oname="金鸡报福金章（刻字）" otype="文字链接"> 金鸡报福金章... </a>
									</div>
									<div class="textLine priceTag" style="font-size: 14px">￥31,504.00</div>
								</div>

							</div>
						</div>
						<div class="m_finance_midline"></div>
						<div class="m_finance_right">
							<h2 class="m_finance_title">
								<span>黄金快捷通道</span>
							</h2>
							<div class="m_finance_info">
								<table cellspacing="0" cellpadding="0" width="100%"
									align="center" border="0">
									<tbody>
										<tr>
											<td width="12" rowspan="5"></td>
											<td width="55%">·<a
												href="http://www.cmbchina.com/personal/invest/InvestInfo.aspx?guid=0718e370-59e4-401f-8c08-8df749fe715c"
												target="_blank" cname="财富管理--黄金" oname="招财金" otype="文字链接">招财金</a>&nbsp;
											</td>
											<td>·<a href="http://gold.cmbchina.com/" target="_blank"
												cname="财富管理--黄金" oname="黄金市场行情" otype="文字链接">黄金市场行情</a></td>
										</tr>
										<tr>
											<td>·<a
												href="http://www.cmbchina.com/personal/invest/InvestInfo.aspx?guid=1a1530d9-68e3-4ca5-a920-0d3dad4b2338"
												target="_blank" cname="财富管理--黄金" oname="个人金银投资品代购"
												otype="文字链接">个人金银投资品代购</a></td>
											<td>·<a href="http://www.cgsec.com/cmb_price.php"
												target="_blank" cname="财富管理--黄金" oname="高赛尔黄金报价"
												otype="文字链接">高赛尔黄金报价</a></td>
										</tr>
										<tr>
											<td>·<a
												href="http://www.cmbchina.com/personal/invest/InvestInfo.aspx?guid=aa27662d-b024-45fd-9855-1db0b019bbf5"
												target="_blank" cname="财富管理--黄金" oname="纸黄金买卖" otype="文字链接">纸黄金买卖</a></td>
											<td>·<a href="http://gold.cmbchina.com/ExchangeIntro"
												target="_blank" cname="财富管理--黄金" oname="交易所介绍" otype="文字链接">交易所介绍</a></td>
										</tr>
										<tr>
											<td>·<a href="http://gold.cmbchina.com/" target="_blank"
												cname="财富管理--黄金" oname="一金通" otype="文字链接">一金通</a></td>
											<td>·<a
												href="http://forum.cmbchina.com/cmu/viewforum.aspx?forumid=85"
												target="_blank" cname="财富管理--黄金" oname="黄金论坛" otype="文字链接">黄金论坛</a></td>
										</tr>
										<tr>
											<td>·<a href="http://gold.cmbchina.com/Metals/"
												target="_blank" cname="财富管理--黄金" oname="金属市场" otype="文字链接">金属市场</a></td>
											<td>·<a href="http://gold.cmbchina.com/invest"
												target="_blank" cname="财富管理--黄金" oname="黄金投资" otype="文字链接">黄金投资</a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

					</div>
					<div class="spacer"></div>
					<div id="Div4" style="display: none;" class="m_finance_container">

						<div class="m_finance_left">
							<h2 class="m_finance_title">
								<span>汇市快讯</span>
							</h2>
							<div class="m_finance_more">
								<!--                <a href="http://fx.cmbchina.com/" target="_blank"  cname="财富管理--外汇" oname="更多" otype="文字链接">
                    <img class="common_img_more" src="/images/more.jpg" /></a>-->
							</div>
							<div style="clear: both"></div>
							<div class="m_finance_info">

								<li class="repeaterli">· 台湾银行间隔夜拆款利率开盘报0.172%(上日开盘报...</li>

								<li class="repeaterli">· 《汇市简讯》美元兑韩元自九个月高位挫跌，疑似央行出手...</li>

								<li class="repeaterli">· 中国汇市：路透测算的人民币兑美元中间价今日料开在6....</li>

								<li class="repeaterli">· 重温稿-台湾央行：决议维持利率不变因通膨展望温和，政...</li>

								<li class="repeaterli">· 《全球汇市》美元在圣诞假期前持稳，来年料继续走升</li>

							</div>
						</div>
						<div class="m_finance_midline"></div>
						<div class="m_finance_right">
							<h2 class="m_finance_title">
								<span>外汇快捷通道</span>
							</h2>
							<div class="m_finance_info">
								<table border="0" cellspacing="0" cellpadding="0" width="100%"
									align="center">
									<tbody>
										<tr>
											<td rowspan="5" width="12"></td>
											<td width="55%">·<a
												href="http://www.cmbchina.com/personal/living/LivingInfo.aspx?pageid=ghdt"
												target="_blank" cname="财富管理--外汇" oname="购汇定投" otype="文字链接">购汇定投</a></td>
											<td>·<a
												href="http://www.cmbchina.com/personal/invest/InvestInfo.aspx?pageid=zhj"
												target="_blank" cname="财富管理--外汇" oname="纸黄金" otype="文字链接">纸黄金白银</a></td>
										</tr>
										<tr>
											<td width="55%">·<a href="http://fx.cmbchina.com/Hq/"
												target="_blank" cname="财富管理--外汇" oname="外汇实时汇率" otype="文字链接">外汇实时汇率</a></td>
											<td>·<a
												href="http://www.cmbchina.com/personal/living/LivingInfo.aspx?pageid=zzjhhk"
												target="_blank" cname="财富管理--外汇" oname="自助境外汇款业务"
												otype="文字链接">自助境外汇款业务</a></td>
										</tr>
										<tr>
											<td>·<a
												href="http://www.cmbchina.com/personal/invest/InvestInfo.aspx?guid=f3323b30-2374-45ac-b7e3-8606f12813ad"
												target="_blank" cname="财富管理--外汇" oname="外汇买卖" otype="文字链接">外汇买卖</a></td>
											<td>·<a
												href="http://www.cmbchina.com/personal/saving/SavingInfo.aspx?pageid=saving13"
												target="_blank" cname="财富管理--外汇" oname="境外汇款" otype="文字链接">境外汇款</a></td>
										</tr>
										<tr>
											<td>·<a
												href="http://www.cmbchina.com/Personal/Invest/WHQQ.aspx"
												target="_blank" cname="财富管理--外汇" oname="外汇期权" otype="文字链接">外汇期权</a></td>
											<td>·<a
												href="http://www.cmbchina.com/personal/living/LivingInfo.aspx?pageid=gjsyzzsb"
												target="_blank" cname="财富管理--外汇" oname="国际收入自助申报"
												otype="文字链接">国际收入自助申报</a></td>
										</tr>
										<tr>
											<td>·<a
												href="http://www.cmbchina.com/personal/living/LivingInfo.aspx?guid=af9fd53b-dc57-4690-834e-7b59f19e4e9e"
												target="_blank" cname="财富管理--外汇" oname="自助结售汇" otype="文字链接">自助结售汇</a></td>
											<td>·<a href="http://fx.cmbchina.com/AnalyseReview/"
												target="_blank" cname="财富管理--外汇" oname="分析评论" otype="文字链接">分析评论</a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="spacer"></div>
					<div id="Div5" style="display: none;" class="m_finance_container">

						<div class="m_finance_left">
							<h2 class="m_finance_title">
								<span>证券市场要闻</span>
							</h2>
							<div class="m_finance_more">
								<a
									href="http://info.cmbchina.com/Stock/List.aspx?channel=Important&amp;topic=ZQSCXGYW"
									target="_blank" cname="财富管理--证券" oname="更多" otype="文字链接"> <img
									class="common_img_more" src="./zs_geren_files/more.jpg"></a>
							</div>
							<div style="clear: both"></div>
							<div class="m_finance_info">

								<li class="repeaterli">·<a
									href="http://info.cmbchina.com/Stock/Detail.aspx?channel=Important&amp;topic=ZQSCXGYW&amp;id={DA00879D-54ED-44E3-AEC1-F08455426D7A}"
									target="_blank" title="李克强:欢迎日方更加积极参与中国新一轮改革开放进程"
									cname="财富管理--证券" oname="李克强:欢迎日方更加积极参与中国新一轮改革开放进程" otype="文字链接">
										李克强:欢迎日方更加积极参与中国新一轮改革开放进程 </a></li>

								<li class="repeaterli">·<a
									href="http://info.cmbchina.com/Stock/Detail.aspx?channel=Important&amp;topic=ZQSCXGYW&amp;id={AD852A05-690C-4FB7-BADA-E416E7156452}"
									target="_blank" title="美股高开 道指涨0.73%" cname="财富管理--证券"
									oname="美股高开 道指涨0.73%" otype="文字链接"> 美股高开 道指涨0.73% </a></li>

								<li class="repeaterli">·<a
									href="http://info.cmbchina.com/Stock/Detail.aspx?channel=Important&amp;topic=ZQSCXGYW&amp;id={DB340852-B7B6-4C3B-B600-EA8FB19A419B}"
									target="_blank" title="亚振家居(603389):终止重大资产重组" cname="财富管理--证券"
									oname="亚振家居(603389):终止重大资产重组" otype="文字链接">
										亚振家居(603389):终止重大资产重组 </a></li>

								<li class="repeaterli">·<a
									href="http://info.cmbchina.com/Stock/Detail.aspx?channel=Important&amp;topic=ZQSCXGYW&amp;id={B18F17AB-6C52-4207-BEE4-A88B697FDB1F}"
									target="_blank" title="浔兴股份(002098):涉嫌信披违法违规 遭证监会立案调查"
									cname="财富管理--证券" oname="浔兴股份(002098):涉嫌信披违法违规 遭证监会立案调查"
									otype="文字链接"> 浔兴股份(002098):涉嫌信披违法违规 遭证监会... </a></li>

								<li class="repeaterli">·<a
									href="http://info.cmbchina.com/Stock/Detail.aspx?channel=Important&amp;topic=ZQSCXGYW&amp;id={A725F7CB-4F87-493A-8326-9D657C1720FD}"
									target="_blank" title="紫光国微、紫光股份:实控人拟向深投控转让紫光集团36%股权"
									cname="财富管理--证券" oname="紫光国微、紫光股份:实控人拟向深投控转让紫光集团36%股权"
									otype="文字链接"> 紫光国微、紫光股份:实控人拟向深投控转让紫光集团36... </a></li>

							</div>
						</div>
						<div class="m_finance_midline"></div>
						<div class="m_finance_right">
							<h2 class="m_finance_title">
								<span>证券快捷通道</span>
							</h2>
							<div class="m_finance_info">
								<table cellspacing="0" cellpadding="0" width="100%"
									align="center" border="0">
									<tbody>
										<tr>
											<td width="12" rowspan="5"></td>
											<td width="55%">·<a
												href="https://office.cmbchina.com/CmbWebPubInfo/BondTradePrice.aspx?chnl=bondprice"
												target="_blank" cname="财富管理--证券" oname="国债柜台交易报价"
												otype="文字链接">国债柜台交易报价</a></td>
											<td>·<a href="http://info.cmbchina.com/Third/"
												target="_blank" cname="财富管理--证券" oname="第三方存管" otype="文字链接">第三方存管</a></td>
										</tr>
										<tr>
											<td>·<a
												href="http://info.cmbchina.com/Finance/?topic=CJSP"
												target="_blank" cname="财富管理--证券" oname="财经时评" otype="文字链接">财经时评</a></td>
											<td>·<a
												href="http://info.cmbchina.com/Finance/?topic=JRSC"
												target="_blank" cname="财富管理--证券" oname="金融市场" otype="文字链接">金融市场</a></td>
										</tr>
										<tr>
											<td>·<a
												href="http://info.cmbchina.com/Finance/?topic=GNCJ"
												target="_blank" cname="财富管理--证券" oname="国内财经要闻" otype="文字链接">国内财经要闻</a></td>
											<td>·<a
												href="http://info.cmbchina.com/Stock/List.aspx?channel=Analyse"
												target="_blank" cname="财富管理--证券" oname="股市分析" otype="文字链接">股市分析</a></td>
										</tr>
										<tr>
											<td>·<a
												href="http://info.cmbchina.com/Stock/List.aspx?channel=Report"
												target="_blank" cname="财富管理--证券" oname="研究报告" otype="文字链接">研究报告</a></td>
											<td>·<a
												href="http://info.cmbchina.com/Stock/List.aspx?channel=Report&amp;topic=HYYJ"
												target="_blank" cname="财富管理--证券" oname="行业研究" otype="文字链接">行业研究</a></td>
										</tr>
										<tr>
											<td>·<a
												href="http://info.cmbchina.com/Stock/List.aspx?channel=Analyse&amp;topic=DPFX"
												target="_blank">大势研判</a></td>
											<td>·<a
												href="http://info.cmbchina.com/Stock/List.aspx?channel=Analyse&amp;topic=BKFX"
												target="_blank">板块分析</a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="spacer"></div>
					<div id="Div6" style="display: none;" class="m_finance_container">

						<div class="m_finance_left">
							<h2 class="m_finance_title">
								<span>期市快讯</span>
							</h2>
							<div class="m_finance_more">
								<a href="http://futures.cmbchina.com/" target="_blank"
									cname="财富管理--期货" oname="更多" otype="文字链接"> <img
									class="common_img_more" src="./zs_geren_files/more.jpg"></a>
							</div>
							<div style="clear: both"></div>
							<div class="m_finance_info">

								<li class="repeaterli">·<a target="_blank"
									href="http://futures.cmbchina.com/News/Detail.aspx?Type=1&amp;GUID={220FAE31-8D7E-40A4-9B11-EE336B09522E}"
									title="期指横盘震荡 短期或将休整" cname="财富管理--期货" oname="期指横盘震荡 短期或将休整"
									otype="文字链接">期指横盘震荡 短期或将休整 </a></li>

								<li class="repeaterli">·<a target="_blank"
									href="http://futures.cmbchina.com/News/Detail.aspx?Type=1&amp;GUID={2EAC735A-A973-4C76-9D78-D78BD6BEE6EC}"
									title="2016年12月26日山东花生油花生粕价格行情" cname="财富管理--期货"
									oname="2016年12月26日山东花生油花生粕价格行情" otype="文字链接">2016年12月26日山东花生油花生粕价格行情
								</a></li>

								<li class="repeaterli">·<a target="_blank"
									href="http://futures.cmbchina.com/News/Detail.aspx?Type=1&amp;GUID={501E0AEC-DF93-4009-A153-91BE39ED27E9}"
									title="2016年12月26日辽宁广西花生粕花生油价格行情" cname="财富管理--期货"
									oname="2016年12月26日辽宁广西花生粕花生油价格行情" otype="文字链接">2016年12月26日辽宁广西花生粕花生油价格行情
								</a></li>

								<li class="repeaterli">·<a target="_blank"
									href="http://futures.cmbchina.com/News/Detail.aspx?Type=1&amp;GUID={69A4CD15-4C75-483C-B3BF-7080F1D00D56}"
									title="2016年12月26日河南花生油花生粕价格行情" cname="财富管理--期货"
									oname="2016年12月26日河南花生油花生粕价格行情" otype="文字链接">2016年12月26日河南花生油花生粕价格行情
								</a></li>

								<li class="repeaterli">·<a target="_blank"
									href="http://futures.cmbchina.com/News/Detail.aspx?Type=1&amp;GUID={D4D02466-7226-4CE8-BA0D-4E41F0D93A6C}"
									title="2016年12月26日广东花生粕花生油价格行情" cname="财富管理--期货"
									oname="2016年12月26日广东花生粕花生油价格行情" otype="文字链接">2016年12月26日广东花生粕花生油价格行情
								</a></li>

							</div>
						</div>
						<div class="m_finance_midline"></div>
						<div class="m_finance_right">
							<h2 class="m_finance_title">
								<span>期货快捷通道</span>
							</h2>
							<div class="m_finance_info">
								<table cellspacing="0" cellpadding="0" width="100%"
									align="center" border="0">
									<tbody>
										<tr>
											<td width="55%">·<a
												href="http://futures.cmbchina.com/News/Trends.aspx"
												target="_blank">业务动态</a></td>
											<td>·<a
												href="http://futures.cmbchina.com/News/Default.aspx?Type=2"
												target="_blank">财经新闻</a></td>
										</tr>
										<tr>
											<td>·<a href="http://futures.cmbchina.com/Hq/"
												target="_blank">国内期货行情</a></td>
											<td>·<a
												href="http://futures.cmbchina.com/Hq/IntlGoods.aspx"
												target="_blank">国际商品报价</a></td>
										</tr>
										<tr>
											<td>·<a
												href="http://futures.cmbchina.com/Main/CorpList.aspx"
												target="_blank">合作期货公司名单</a></td>
											<td>·<a
												href="http://futures.cmbchina.com/Common/DetailInfo.aspx?guid=801dde5e-d498-47b2-a15e-339d386806a4"
												target="_blank">银期转账</a></td>
										</tr>
										<tr>
											<td>·<a
												href="http://futures.cmbchina.com/Common/DetailInfo.aspx?guid=ee114f24-f296-474d-83bd-379f150750a1"
												target="_blank">期货保证金存管</a></td>
											<td>·<a
												href="http://futures.cmbchina.com/Common/DetailInfo.aspx?guid=5f8049b7-e9d0-47e0-96df-3ef4584f250a"
												target="_blank">标准仓单质押融资</a></td>
										</tr>
										<tr>
											<td>·<a
												href="http://futures.cmbchina.com/Common/DetailInfo.aspx?guid=6f2cbee7-a7fb-4c5b-bfa0-ef249ec3acb7"
												target="_blank">操作指引</a></td>
											<td>·<a
												href="http://futures.cmbchina.com/Common/DetailInfo.aspx?guid=bdb96392-33dd-406f-88ba-b877b1ba2d54"
												target="_blank">期货理财产品</a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="spacer"></div>
					<div id="Div7" style="display: none;" class="m_finance_container">

						<!--
<div class="m_finance_left">
    <h2 class="m_finance_title">
        <span>代理险种</span></h2>
    <div class="m_finance_more">
        <a href="http://cmbchina.cigna-cmc.com/" target="_blank" cname="财富管理--保险" oname="更多"
            otype="文字链接">
            <img class="common_img_more" src="/images/more.jpg" /></a></div>
    <div style="clear: both">
    </div>
    <div class="m_finance_info">
        
                <li class="repeaterli">·<a href="http://ins.cmbchina.com/product/insprddetail.aspx?prdcode=I00067"
                    target="_blank" title='泰康金满仓B款年金保险（分红型）' cname="财富管理--保险"
                    oname="泰康金满仓B款年金保险（分红型）" otype="文字链接">
                    泰康金满仓B款年金保险（分红型）
                </a></li>
            
                <li class="repeaterli">·<a href="http://ins.cmbchina.com/product/insprddetail.aspx?prdcode=I00063"
                    target="_blank" title='阳光人寿阳光财富两全保险（分红型）' cname="财富管理--保险"
                    oname="阳光人寿阳光财富两全保险（分红型）" otype="文字链接">
                    阳光人寿阳光财富两全保险（分红型）
                </a></li>
            
                <li class="repeaterli">·<a href="http://ins.cmbchina.com/product/insprddetail.aspx?prdcode=I00030"
                    target="_blank" title='吉祥无忧保障计划（B款）' cname="财富管理--保险"
                    oname="吉祥无忧保障计划（B款）" otype="文字链接">
                    吉祥无忧保障计划（B款）
                </a></li>
            
                <li class="repeaterli">·<a href="http://ins.cmbchina.com/product/insprddetail.aspx?prdcode=I00031"
                    target="_blank" title='少儿成长护航计划' cname="财富管理--保险"
                    oname="少儿成长护航计划" otype="文字链接">
                    少儿成长护航计划
                </a></li>
            
                <li class="repeaterli">·<a href="http://ins.cmbchina.com/product/insprddetail.aspx?prdcode=I00025"
                    target="_blank" title='招商信诺珍爱天使少儿教育金计划' cname="财富管理--保险"
                    oname="招商信诺珍爱天使少儿教育金计划" otype="文字链接">
                    招商信诺珍爱天使少儿教育金计划
                </a></li>
            
    </div>
    <div class="m_finance_more">
        <a href="http://cmbchina.cigna-cmc.com/" target="_blank" cname="财富管理--保险"
            oname="more" otype="文字链接">
            <img class="common_img_more" src="/images/more.jpg" /></a></div>
</div>
<div class="m_finance_midline">
</div>
-->
						<div>
							<div class="bx_box">
								<div class="bx_c_list">
									<div class="bx_c_r_title">
										<strong><a
											href="http://cmbchina.cignacmb.com/product/anxiangkangjian105.html"
											target="_blank">【咨询有礼】一份保障 十分关爱</a></strong> <a class="bx_more"
											href="http://cmbchina.cignacmb.com/" target="_blank">更多</a>
									</div>
									<div class="bx_c_r_m">
										<div class="bx_c_r_pic">
											<a
												href="http://cmbchina.cignacmb.com/product/anxiangkangjian105.html"
												target="_blank"><img alt="脱光吧单身汪"
												src="./zs_geren_files/826a5b7f-17d9-418f-be9b-5a8c0278ad98.jpg"></a>
										</div>
										<p>
											<a
												href="http://cmbchina.cignacmb.com/product/anxiangkangjian105.html"
												target="_blank">最高40万重疾险，为自己，为家人，咨询送5万意外险，为您保驾护航！</a>
										</p>
									</div>
									<div class="line_o"></div>
									<ul class="bx_c_r_b">
										<li><a
											href="http://cmbchina.cignacmb.com/product/lekangwuyou.html"
											target="_blank">返还型住院津贴保险</a></li>
										<li><a
											href="http://cmbchina.cignacmb.com/product/xinyunwuyou.html"
											target="_blank">返还型意外伤害保险</a></li>
										<li><a
											href="http://cmbchina.cignacmb.com/hd/2016/mianfeixian/"
											target="_blank">意外险免费领取</a></li>
										<li><a
											href="http://cmbchina.cignacmb.com/product/anxiangkangjian105.html"
											target="_blank">重疾险</a></li>
									</ul>
								</div>
								<div class="bx_c_select">
									<dl class="bx_c_l_r">
										<dt>
											<a href="http://cmbchina.cignacmb.com/product/"
												target="_blank">挑选保险</a>
										</dt>
										<dd>
											<a
												href="http://cmbchina.cignacmb.com/product/anxiangkangjian105.html"
												target="_blank">健康管理</a>
										</dd>
										<dd>
											<a
												href="http://cmbchina.cignacmb.com/product/baiwanshouhu.html"
												target="_blank">防范意外</a>
										</dd>
										<dd>
											<a
												href="http://cmbchina.cignacmb.com/product/xinyunwuyou.html"
												target="_blank">外出旅游</a>
										</dd>
										<dd>
											<a href="http://cmbchina.cignacmb.com/product/hehuzinv/"
												target="_blank">关爱子女</a>
										</dd>
										<dd>
											<a href="http://cmbchina.cignacmb.com/product/xiaojinfumu/"
												target="_blank">孝敬父母</a>
										</dd>
									</dl>
									<img class="bx_c_l_pic" height="116" alt="人物"
										src="./zs_geren_files/120fc283-02bb-4f8c-9c80-38694a15781d.jpg"
										width="59">
										<div class="bx_c_l_m">
											<strong><a
												href="http://cmbchina.cignacmb.com/hd/pingce/"
												target="_blank">您和家人缺什么保障？<br>根据需求定制关爱计划</a></strong> <a
												class="btn_startest" title="开始测试"
												href="http://cmbchina.cignacmb.com/hd/pingce/index.php?campaign=1AWGWR016JA07"
												target="_blank"></a>
										</div>
								</div>
							</div>
							<style type="text/css">
.red_h {
	color: #ff0000;
}

.line_o {
	padding-top: 11px;
	float: left;
	width: 340px;
	height: 2px;
	background:
		url(http://images.cmbchina.com/cmbcms/201409/7c25ab46-b157-446b-ac1a-cefc925b6c2f.gif)
		no-repeat 0 11px;
}

.bx_box {
	width: 691px;
	height: 165px;
	padding: 15px 15px 0 15px;
	margin: 0
}

.bx_box a {
	color: #333;
	text-decoration: none
}

.bx_box a:hover {
	color: #ff0000;
}

.bx_box a img {
	border: 0px;
}

.bx_c_list {
	float: left;
	width: 351px;
	padding: 0 19px 5px 0;
	border-right: solid 1px #ccc;
	font-size: 12px;
}

.bx_c_r_title {
	float: left;
	width: 351px;
	padding-bottom: 6px;
}

.bx_c_r_title strong a {
	float: left;
	font-size: 14px;
	display: block;
	background:
		url(http://images.cmbchina.com/cmbcms/201409/a5becb50-c3c8-4297-8440-cd17d2bb8eaf.gif)
		no-repeat left center;
	padding-left: 14px;
}

.bx_more {
	height: 17px;
	line-height: 17px;
	border: solid 1px #DCDCDC;
	background:
		url(http://images.cmbchina.com/cmbcms/201409/3024843f-c88e-4124-8c83-31e08f277af8.gif)
		no-repeat 32px center;
	padding: 0 18px 0 6px;
	display: block;
	float: right;
}

.bx_c_r_m {
	clear: both;
	width: 337px;
	padding-left: 14px;
}

.bx_c_r_pic {
	float: left;
	width: 92px;
	height: 62px;
	background: #fff;
	border: solid 1px #ccc;
	padding: 3px;
	margin-right: 10px;
}

.bx_c_r_m p {
	float: left;
	width: 210px;
	font-size: 12px;
	padding: 0;
	margin: 0;
}

.bx_c_r_m p a {
	color: #999;
	line-height: 18px;
}

.bx_c_r_m p a:hover {
	color: #ff0000;
}

.bx_c_r_b {
	list-style-type: none;
	font-size: 12px;
	clear: both;
	width: 351px;
	padding: 0;
	margin: 0;
	padding-top: 7px;
	color: #444;
}

.bx_c_r_b li {
	list-style-type: none;
	width: 160px;
	float: left;
	background:
		url(http://images.cmbchina.com/cmbcms/201409/bfed01b6-db4c-4416-8ef7-0691cd069dc4.gif)
		no-repeat left center;
	padding: 0;
	margin: 0;
	padding-left: 14px;
	line-height: 22px;
	font-weight: bold;
}

.bx_c_select {
	width: 300px;
	float: right;
}

.bx_c_l_pic {
	float: left;
	padding-top: 27px;
}

.bx_c_l_m {
	float: left;
	width: auto;
	padding: 40px 0 0 6px;
}

.bx_c_l_m strong a {
	color: #7F5441;
	font-size: 14px;
	font-family: "微软雅黑";
	line-height: 18px;
	font: bold;
}

.bx_c_l_m strong a:hover {
	color: #ff0000;
}

.bx_c_l_m span {
	font-size: 12px;
	color: #999;
	display: block;
	padding: 12px 0 0 0;
}

.btn_startest {
	display: block;
	width: 120px;
	height: 35px;
	background:
		url(http://images.cmbchina.com/cmbcms/201409/ea1b426f-23df-49f5-a4ae-02a2ff56ed0c.gif)
		no-repeat;
	margin-top: 10px;
}

.bx_c_l_r {
	float: left;
	font-size: 12px;
	margin: 0;
	padding: 0 padding-right:17px;
}

.bx_c_l_r dt {
	font-size: 14px;
	color: #333;
	background:
		url(http://images.cmbchina.com/cmbcms/201409/a5becb50-c3c8-4297-8440-cd17d2bb8eaf.gif)
		no-repeat left center;
	padding-left: 14px;
	font-weight: bold;
	margin-bottom: 12px;
}

.bx_c_l_r dd {
	background:
		url(http://images.cmbchina.com/cmbcms/201409/418ccf8f-45b8-4e99-a104-16df7e4dc0be.gif)
		no-repeat left center;
	padding-left: 8px;
	line-height: 24px;
	margin: 0
}
</style>
						</div>

					</div>
					<div class="spacer"></div>
					<div id="Div8" style="display: none;" class="m_finance_container">

						<div class="m_finance_left">
							<h2 class="m_finance_title">
								<span>积分兑换推荐</span>
							</h2>
							<div class="m_finance_more">
								<a href="http://jf.cmbchina.com/" target="_blank"
									cname="财富管理--商城" oname="更多" otype="文字链接"> <img
									class="common_img_more" src="./zs_geren_files/more.jpg"></a>
							</div>
							<div style="clear: both"></div>
							<div class="m_finance_info">
								<div class="SingleProduct">
									<div class="proImg" style="height: 85px;">
										<a href="http://market.cmbchina.com/ccard/xd/cj.html"
											title="小积分抽大奖：9积分" target="_blank" cname="财富管理--商城"
											oname="小积分抽大奖：9积分" otype="文字链接"> <img alt="小积分抽大奖：9积分"
											src="./zs_geren_files/jf_9.jpg" width="80px" height="80px"
											border="0"></a>
									</div>
									<ul class="proDetail">
										<li><a href="http://market.cmbchina.com/ccard/xd/cj.html"
											title="小积分抽大奖：9积分" target="_blank" cname="财富管理--商城"
											oname="小积分抽大奖：9积分" otype="文字链接">小积分抽大奖：9积分</a></li>
									</ul>
								</div>
								<div class="SingleProduct">
									<div class="proImg" style="height: 85px;">
										<a href="http://market.cmbchina.com/ccard/xd/index.html"
											title="DQ暴风雪" target="_blank" cname="财富管理--商城" oname="DQ暴风雪"
											otype="文字链接"> <img alt="DQ暴风雪"
											src="./zs_geren_files/jf_999.jpg" width="80px" height="80px"
											border="0"></a>
									</div>
									<ul class="proDetail">
										<li><a
											href="http://market.cmbchina.com/ccard/xd/index.html"
											title="DQ暴风雪" target="_blank" cname="财富管理--商城" oname="DQ暴风雪"
											otype="文字链接">DQ暴风雪:20积分1元</a></li>
									</ul>
								</div>
								<div class="SingleProduct">
									<div class="proImg" style="height: 85px;">
										<a href="http://jf.cmbchina.com/Product/A0E-00Z-005.htm"
											title="点亮蓝灯 自闭症课程" target="_blank" cname="财富管理--商城"
											oname="“点亮蓝灯”自闭症课程" otype="文字链接"> <img alt="点亮蓝灯 自闭症课程"
											src="./zs_geren_files/jf_500.jpg" width="80px" height="80px"
											border="0"></a>
									</div>
									<ul class="proDetail">
										<li><a
											href="http://jf.cmbchina.com/Product/A0E-00Z-005.htm"
											title="点亮蓝灯 自闭症课程" target="_blank" cname="财富管理--商城"
											oname="点亮蓝灯 自闭症课程" otype="文字链接">“点亮蓝灯”自闭症课程</a></li>
									</ul>
								</div>
								<div style="width: 15px; float: left">&nbsp;</div>
							</div>

						</div>
						<div class="m_finance_midline"></div>
						<div class="m_finance_right">
							<h2 class="m_finance_title">
								<span>商城快捷通道</span>
							</h2>
							<div class="m_finance_info">
								<table cellspacing="0" cellpadding="0" width="100%"
									align="center" border="0">
									<tbody>
										<tr>
											<td width="12" rowspan="5"></td>
											<td width="40%">·<a
												href="http://shop.cmbchina.com/CellTelephone/Default.aspx"
												target="_blank" cname="财富管理--商城" oname="手机充值" otype="文字链接">手机充值</a></td>
											<td>·<a
												href="http://shop.cmbchina.com/GameCard/Default.aspx"
												target="_blank" cname="财富管理--商城" oname="游戏点卡" otype="文字链接">游戏点卡</a></td>
										</tr>
										<tr>
											<td>·<a href="http://trip.cmbchina.com/" target="_blank"
												cname="财富管理--商城" oname="机票预订" otype="文字链接">机票预订</a></td>
											<td>·<a href="http://shop.cmbchina.com/join"
												target="_blank" cname="财富管理--商城" oname="商城" otype="文字链接">加盟流程</a></td>
										</tr>
										<tr>
											<td>·<a href="http://jf.cmbchina.com/" target="_blank"
												cname="财富管理--商城" oname="积分奖励" otype="文字链接">积分奖励</a></td>
											<td>·<a
												href="http://mall.cmbchina.com/GroupBuy/GroupBuy.htm?utm_source=ywttd&amp;utm_campaign=jpy"
												target="_blank">网上商城 聚便宜</a></td>
										</tr>
										<tr>
											<td>·<a
												href="http://market.cmbchina.com/ccard/xd/cj.html"
												target="_blank">积分抽奖</a></td>
											<td>·<a
												href="http://mall.cmbchina.com/Perfect.htm?utm_source=ywttd&amp;utm_campaign=sqsm"
												target="_blank">网上商城 十全实美</a></td>
										</tr>
										<tr>
											<td>·<a href="http://jf.cmbchina.com/" target="_blank">缤纷好礼</a></td>
											<td>·<a
												href="http://mall.cmbchina.com/Redirect/ApplePageRedirect.aspx?path=http://store.apple.com/cn_cmb&amp;utm_source=kzx&amp;utm_campaign=applestore"
												target="_blank">网上商城 Apple专区</a></td>
										</tr>
									</tbody>
								</table>
							</div>

						</div>

					</div>
				</div>
				<script type="text/javascript" language="javascript">
    for (var i = 0; i < 8; i++) {
        o = document.getElementById("Div" + i);
        if (o) {
            o.onmouseover = function() {
                clearInterval(finaTime);
            }
            o.onmouseout = function() {
            if(!pause)
                finaTime = setInterval("autoShow()", 2000);
            }
        }
    }
</script>
				<div style="margin-bottom: 5px;"></div>
				<div class="adv_small">
					<a href="http://vipservice.cmbchina.allyes.com/" target="_blank"
						otype="文字链接" oname="随心享贵宾礼遇" cname="底部广告--personal"><img
						border="0"
						src="./zs_geren_files/425e24ea-07cd-4ba4-9e21-1d75b960e7b3.jpg"
						width="721" height="130"></a>
				</div>
				<div style="margin-bottom: 5px;"></div>

				<div class="u_mid" style="height: 232px !important">
					<h2 class="u_mid_head">
						<span>贵宾服务</span>
					</h2>
					<div class="u_mid_container" style="height: 200px !important">
						<div class="u_mid_con_left">
							<div class="vip_mid_left_info">
								<div style="WIDTH: 110px; FLOAT: left; HEIGHT: 160px">
									<img border="0"
										src="http://file.cmbchina.com/cmbcms/201010/97712825-0415-415b-8aa5-af78ca2f1ecd.jpg"
										width="108" height="108">
								</div>
								<div
									style="WIDTH: 205px; FLOAT: left; HEIGHT: 160px; MARGIN-LEFT: 10px">
									<div style="HEIGHT: 25px; FONT-SIZE: 14px; FONT-WEIGHT: bold">
										<img style="VERTICAL-ALIGN: middle" border="0"
											src="http://file.cmbchina.com/cmbcms/201006/b94ec428-873a-4d8a-bf3a-c4e3cb885469.jpg"
											width="7" height="7">私人银行 
									</div>
									<div style="WIDTH: 230px; HEIGHT: 115px">
										<a href="http://www.cmbchina.com/privatebank/" target="_blank"
											otype="文字链接" oname="私人银行" cname="贵宾服务--personal">为客户提供专业的财富管理的基础上，招商银行进一步完善了礼遇遍布全球的多项增值服务项目，让高端客户充分体验到“因您而变”的私人银行服务。</a>
									</div>
									<div style="FLOAT: right">
										<a href="http://www.cmbchina.com/privatebank/" target="_blank"
											otype="文字链接" oname="私人银行" cname="贵宾服务--personal"><img
											border="0"
											src="http://file.cmbchina.com/cmbcms/201006/791e0e49-1d91-4acd-9881-bbaef5bb2e41.jpg"
											width="49" height="19"></a>
									</div>
								</div>
							</div>
						</div>
						<div class="u_mid_spacer"></div>
						<div class="u_mid_con_right">
							<div class="vip_mid_right_info">
								<div style="WIDTH: 110px; FLOAT: left; HEIGHT: 160px">
									<img border="0"
										src="http://file.cmbchina.com/cmbcms/201010/672d8bfc-6888-45a4-9e6c-f19adff3bda5.jpg"
										width="108" height="108">
								</div>
								<div
									style="WIDTH: 180px; FLOAT: left; HEIGHT: 160px; MARGIN-LEFT: 10px">
									<div style="HEIGHT: 25px; FONT-SIZE: 14px; FONT-WEIGHT: bold">
										<img style="VERTICAL-ALIGN: middle" border="0"
											src="http://file.cmbchina.com/cmbcms/201006/b94ec428-873a-4d8a-bf3a-c4e3cb885469.jpg"
											width="7" height="7">金葵花理财 
									</div>
									<div style="HEIGHT: 115px">
										<a href="http://www.cmbchina.com/personal/sunflower/"
											target="_blank" cname="贵宾服务--personal" oname="金葵花理财"
											otype="文字链接">悉心专业的理财顾问；品种丰富的投资产品； 丰富及时的理财资讯；快捷方便的理财渠道。</a>
									</div>
									<div style="FLOAT: right; MARGIN-RIGHT: 15px">
										<a href="http://www.cmbchina.com/personal/sunflower/"
											target="_blank" cname="贵宾服务--personal" oname="金葵花理财"
											otype="文字链接"><img border="0"
											src="http://file.cmbchina.com/cmbcms/201006/791e0e49-1d91-4acd-9881-bbaef5bb2e41.jpg"
											width="49" height="19"></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div style="clear: both"></div>

				<div class="u_mid" style="height: 280px !important">
					<h2 class="u_mid_head">
						<span>产品与服务</span>
					</h2>
					<div class="u_mid_container" style="height: 245px !important">
						<div class="u_mid_con_left">
							<div class="u_card_left_info">
								<img style="float: left; cursor: pointer"
									src="./zs_geren_files/leftArr.jpg"
									onmousedown="ScrollDiv_GoUp()" onmouseup="ScrollDiv_StopUp()"
									onmouseout="ScrollDiv_StopUp()">
									<div id="DisplayDiv" class="cardDiv">
										<div class="cardscrollDiv">
											<div id="List1">

												<div class="singlecard">
													<a
														href="http://www.cmbchina.com/personal/allinonecard/CardInfo.aspx?guid=f6b86786-1726-4205-bd38-f454dad045f0"
														target="_blank" class="picA"><img title="一卡通M+"
														style="border: 0; width: 160px; height: 97px"
														src="./zs_geren_files/ee43b5fc-7863-4ccb-ab1c-bc71001d1e4e.jpg"></a>
													<a
														href="http://www.cmbchina.com/personal/allinonecard/CardInfo.aspx?guid=f6b86786-1726-4205-bd38-f454dad045f0"
														target="_blank" class="txtA"><span>“一卡通”M+卡是招商银行发行的，年轻人专属的银行卡，多款酷炫卡面设计，高效...</span></a>
												</div>

												<div class="singlecard">
													<a
														href="http://www.cmbchina.com/Personal/Allinonecard/CardInfo.aspx?guid=be48a9ab-300f-4393-b80e-02308ddf1a7f"
														target="_blank" class="picA"><img title=""
														style="border: 0; width: 160px; height: 97px"
														src="./zs_geren_files/3c737fca-d88b-49fe-921a-0c592b9f126a.jpg"></a>
													<a
														href="http://www.cmbchina.com/Personal/Allinonecard/CardInfo.aspx?guid=be48a9ab-300f-4393-b80e-02308ddf1a7f"
														target="_blank" class="txtA"><span>是否想拥有一张既能体现尊贵身份，又可以享受银行综合理财服务，甚至还可以在国...</span></a>
												</div>

												<div class="singlecard">
													<a
														href="http://www.cmbchina.com/Personal/Allinonecard/CardInfo.aspx?guid=2865d3ab-6264-4a41-baf2-1ee84c847b26"
														target="_blank" class="picA"><img title="cmbcard003"
														style="border: 0; width: 160px; height: 97px"
														src="./zs_geren_files/3ac3bd25-9bda-493a-9fe1-576e90f0776f.jpg"></a>
													<a
														href="http://www.cmbchina.com/Personal/Allinonecard/CardInfo.aspx?guid=2865d3ab-6264-4a41-baf2-1ee84c847b26"
														target="_blank" class="txtA"><span>“一卡通”金卡是招商银行发行的，可在境内外通用，具有综合理财功能的银行卡</span></a>
												</div>

												<div class="singlecard">
													<a
														href="http://www.cmbchina.com/Personal/Allinonecard/CardInfo.aspx?guid=80e1a8e6-a246-4a79-93fe-919b5e2f80d6"
														target="_blank" class="picA"><img title="cmbcard02"
														style="border: 0; width: 160px; height: 97px"
														src="./zs_geren_files/509432be-579e-4a36-a29a-59c66a55b5da.jpg"></a>
													<a
														href="http://www.cmbchina.com/Personal/Allinonecard/CardInfo.aspx?guid=80e1a8e6-a246-4a79-93fe-919b5e2f80d6"
														target="_blank" class="txtA"><span>“一卡通”是招商银行发行的，以真实姓名开户的个人理财基本账户，它集定活期.....</span></a>
												</div>

											</div>
											<div id="List2">

												<div class="singlecard">
													<a
														href="http://www.cmbchina.com/personal/allinonecard/CardInfo.aspx?guid=f6b86786-1726-4205-bd38-f454dad045f0"
														target="_blank" class="picA"><img title="一卡通M+"
														style="border: 0; width: 160px; height: 97px"
														src="./zs_geren_files/ee43b5fc-7863-4ccb-ab1c-bc71001d1e4e.jpg"></a>
													<a
														href="http://www.cmbchina.com/personal/allinonecard/CardInfo.aspx?guid=f6b86786-1726-4205-bd38-f454dad045f0"
														target="_blank" class="txtA"><span>“一卡通”M+卡是招商银行发行的，年轻人专属的银行卡，多款酷炫卡面设计，高效...</span></a>
												</div>

												<div class="singlecard">
													<a
														href="http://www.cmbchina.com/Personal/Allinonecard/CardInfo.aspx?guid=be48a9ab-300f-4393-b80e-02308ddf1a7f"
														target="_blank" class="picA"><img title=""
														style="border: 0; width: 160px; height: 97px"
														src="./zs_geren_files/3c737fca-d88b-49fe-921a-0c592b9f126a.jpg"></a>
													<a
														href="http://www.cmbchina.com/Personal/Allinonecard/CardInfo.aspx?guid=be48a9ab-300f-4393-b80e-02308ddf1a7f"
														target="_blank" class="txtA"><span>是否想拥有一张既能体现尊贵身份，又可以享受银行综合理财服务，甚至还可以在国...</span></a>
												</div>

												<div class="singlecard">
													<a
														href="http://www.cmbchina.com/Personal/Allinonecard/CardInfo.aspx?guid=2865d3ab-6264-4a41-baf2-1ee84c847b26"
														target="_blank" class="picA"><img title="cmbcard003"
														style="border: 0; width: 160px; height: 97px"
														src="./zs_geren_files/3ac3bd25-9bda-493a-9fe1-576e90f0776f.jpg"></a>
													<a
														href="http://www.cmbchina.com/Personal/Allinonecard/CardInfo.aspx?guid=2865d3ab-6264-4a41-baf2-1ee84c847b26"
														target="_blank" class="txtA"><span>“一卡通”金卡是招商银行发行的，可在境内外通用，具有综合理财功能的银行卡</span></a>
												</div>

												<div class="singlecard">
													<a
														href="http://www.cmbchina.com/Personal/Allinonecard/CardInfo.aspx?guid=80e1a8e6-a246-4a79-93fe-919b5e2f80d6"
														target="_blank" class="picA"><img title="cmbcard02"
														style="border: 0; width: 160px; height: 97px"
														src="./zs_geren_files/509432be-579e-4a36-a29a-59c66a55b5da.jpg"></a>
													<a
														href="http://www.cmbchina.com/Personal/Allinonecard/CardInfo.aspx?guid=80e1a8e6-a246-4a79-93fe-919b5e2f80d6"
														target="_blank" class="txtA"><span>“一卡通”是招商银行发行的，以真实姓名开户的个人理财基本账户，它集定活期.....</span></a>
												</div>

											</div>
										</div>
									</div> <img style="float: left; cursor: pointer"
									src="./zs_geren_files/rightArr.jpg"
									onmousedown="ScrollDiv_GoDown()"
									onmouseup="ScrollDiv_StopDown()"
									onmouseout="ScrollDiv_StopDown()">
							</div>
							<div class="btnmore">
								<a href="http://www.cmbchina.com/personal/allinonecard/"
									target="_blank"><img style="border: 0;"
									src="./zs_geren_files/more.jpg"></a>
							</div>
						</div>
						<div class="u_mid_spacer"></div>
						<div class="u_mid_con_right">
							<div class="u_mid_right_info">

								<div class="rightdivItem">
									<div class="left">个人贷款：</div>
									<div class="right">

										<li><a
											href="http://www.cmbchina.com/personal/Credit/CreditInfo.aspx?guid=0e8f9198-9b73-4f2a-94e7-c334f5e5417c"
											target="_blank" title="生意一卡通" cname="产品与服务--personal&quot;"
											oname="生意一卡通" otype="文字链接"> 生意一卡通 </a></li>

										<li><a
											href="http://www.cmbchina.com/personal/Credit/CreditInfo.aspx?guid=3423371a-8553-424a-bcb6-01cba1527ae0"
											target="_blank" title="一手住房贷款" cname="产品与服务--personal&quot;"
											oname="一手住房贷款" otype="文字链接"> 一手住房贷款 </a></li>

										<li><a
											href="http://www.cmbchina.com/personal/Credit/CreditInfo.aspx?guid=65a309fa-6b36-4cbb-8a64-196ba77e403a"
											target="_blank" title="个人消费贷款" cname="产品与服务--personal&quot;"
											oname="个人消费贷款" otype="文字链接"> 个人消费贷款 </a></li>

										<li><a
											href="http://www.cmbchina.com/personal/Credit/CreditInfo.aspx?guid=4d5140fa-d4d0-4a19-89db-28b697aec4d6"
											target="_blank" title="消费信用贷款" cname="产品与服务--personal&quot;"
											oname="消费信用贷款" otype="文字链接"> 消费信用贷款 </a></li>

										<li><a
											href="http://www.cmbchina.com/personal/Credit/CreditInfo.aspx?guid=757a62f7-2aca-4a05-bcf6-04e9ff1535fe"
											target="_blank" title="个人汽车贷款" cname="产品与服务--personal&quot;"
											oname="个人汽车贷款" otype="文字链接"> 个人汽车贷款 </a></li>

									</div>
								</div>


								<div class="rightdivItem">
									<div class="left">储蓄业务：</div>
									<div class="right">

										<li><a
											href="http://www.cmbchina.com/personal/Saving/SavingInfo.aspx?guid=369c2e60-86dd-4665-baa7-09779c019faa"
											target="_blank" title="教育储蓄" cname="产品与服务--personal&quot;"
											oname="教育储蓄" otype="文字链接"> 教育储蓄 </a></li>

										<li><a
											href="http://www.cmbchina.com/personal/Saving/SavingInfo.aspx?guid=86652863-3ab6-4061-bf13-1ea4673d5dd0"
											target="_blank" title="境外汇款" cname="产品与服务--personal&quot;"
											oname="境外汇款" otype="文字链接"> 境外汇款 </a></li>

										<li><a
											href="http://www.cmbchina.com/personal/Saving/SavingInfo.aspx?guid=4a031daa-b718-4b33-830c-595e9caa0c12"
											target="_blank" title="个人通知存款" cname="产品与服务--personal&quot;"
											oname="个人通知存款" otype="文字链接"> 个人通知存款 </a></li>

										<li><a
											href="http://www.cmbchina.com/personal/Saving/SavingInfo.aspx?guid=f37581c7-3511-4186-86eb-6a3aadfd48ce"
											target="_blank" title="个人支票" cname="产品与服务--personal&quot;"
											oname="个人支票" otype="文字链接"> 个人支票 </a></li>

										<li><a
											href="http://www.cmbchina.com/personal/Saving/SavingInfo.aspx?guid=bf1421be-a501-47cc-8997-bf2a0399eefd"
											target="_blank" title="自助转帐" cname="产品与服务--personal&quot;"
											oname="自助转帐" otype="文字链接"> 自助转帐 </a></li>

										<li><a
											href="http://www.cmbchina.com/personal/Saving/SavingInfo.aspx?guid=57ff012b-6982-4a63-af27-e980d66d5b68"
											target="_blank" title="个人结汇／购汇业务"
											cname="产品与服务--personal&quot;" oname="个人结汇／购汇业务" otype="文字链接">
												个人结汇.. </a></li>

									</div>
								</div>


								<div class="rightdivItem">
									<div class="left">居家生活：</div>
									<div class="right">

										<li><a
											href="http://www.cmbchina.com/personal/Living/LivingInfo.aspx?guid=f09fe257-85a4-41f3-b364-6411df7096fa"
											target="_blank" title="自助境外汇款业务"
											cname="产品与服务--personal&quot;" oname="自助境外汇款业务" otype="文字链接">
												自助境外.. </a></li>

										<li><a
											href="http://www.cmbchina.com/personal/Living/LivingInfo.aspx?guid=af9fd53b-dc57-4690-834e-7b59f19e4e9e"
											target="_blank" title="个人自助结售汇业务"
											cname="产品与服务--personal&quot;" oname="个人自助结售汇业务" otype="文字链接">
												个人自助.. </a></li>

										<li><a
											href="http://www.cmbchina.com/personal/Living/LivingInfo.aspx?guid=14ede84e-37f4-4f48-a603-8496561da297"
											target="_blank" title="自助缴费" cname="产品与服务--personal&quot;"
											oname="自助缴费" otype="文字链接"> 自助缴费 </a></li>

										<li><a
											href="http://www.cmbchina.com/personal/Living/LivingInfo.aspx?guid=9395741d-92ac-48c2-9ffb-a598b5bb529d"
											target="_blank" title="网上支付" cname="产品与服务--personal&quot;"
											oname="网上支付" otype="文字链接"> 网上支付 </a></li>

										<li><a
											href="http://www.cmbchina.com/personal/Living/LivingInfo.aspx?guid=bde03936-36ae-435b-beac-c61d43959a05"
											target="_blank" title="国际收入自助申报"
											cname="产品与服务--personal&quot;" oname="国际收入自助申报" otype="文字链接">
												国际收入.. </a></li>

										<li><a
											href="http://www.cmbchina.com/personal/Living/LivingInfo.aspx?guid=ba374e7f-f70b-4867-b5e7-fe0b67b2df8e"
											target="_blank" title="保管箱业务" cname="产品与服务--personal&quot;"
											oname="保管箱业务" otype="文字链接"> 保管箱业务 </a></li>

									</div>
								</div>


								<div class="rightdivItem">
									<div class="left">投资理财：</div>
									<div class="right">

										<li><a
											href="http://www.cmbchina.com/personal/Invest/InvestInfo.aspx?guid=0718e370-59e4-401f-8c08-8df749fe715c"
											target="_blank" title="招财金" cname="产品与服务--personal&quot;"
											oname="招财金" otype="文字链接"> 招财金 </a></li>

										<li><a
											href="http://www.cmbchina.com/personal/Invest/InvestInfo.aspx?guid=aa27662d-b024-45fd-9855-1db0b019bbf5"
											target="_blank" title="纸黄金白银" cname="产品与服务--personal&quot;"
											oname="纸黄金白银" otype="文字链接"> 纸黄金白银 </a></li>

										<li><a
											href="http://www.cmbchina.com/personal/Invest/InvestInfo.aspx?guid=df067da9-b9ef-41d6-be80-8236b7c8ad5f"
											target="_blank" title="外汇期权" cname="产品与服务--personal&quot;"
											oname="外汇期权" otype="文字链接"> 外汇期权 </a></li>

										<li><a
											href="http://www.cmbchina.com/personal/Invest/InvestInfo.aspx?guid=be95b661-f054-49e4-af97-3fc39a66a3c3"
											target="_blank" title="第三方存管业务" cname="产品与服务--personal&quot;"
											oname="第三方存管业务" otype="文字链接"> 第三方存.. </a></li>

										<li><a
											href="http://www.cmbchina.com/personal/Invest/InvestInfo.aspx?guid=7a69703d-99b2-4544-a812-cd92af2842d4"
											target="_blank" title="金葵花理财产品" cname="产品与服务--personal&quot;"
											oname="金葵花理财产品" otype="文字链接"> 金葵花理.. </a></li>

									</div>
								</div>

							</div>
						</div>
					</div>
				</div>

				<script language="javascript" type="text/javascript">

var Speed = 1; 
var Space = 5; 
var PageWidth = 280; 
var fill = 0; 
var MoveLock = false;
var MoveTimeObj;
var Comp = 0;
var AutoPlayObj = null;

var List1Obj = document.getElementById("List1");
var List2Obj = document.getElementById("List2");
var DisplayDivObj = document.getElementById("DisplayDiv");

List2Obj.innerHTML = List1Obj.innerHTML;
DisplayDivObj.scrollLeft = fill;
DisplayDivObj.onmouseover = function(){clearInterval(AutoPlayObj);}
DisplayDivObj.onmouseout = function(){AutoPlay();}

AutoPlay();

function AutoPlay(){
 clearInterval(AutoPlayObj);
 AutoPlayObj = setInterval('ScrollDiv_GoDown();ScrollDiv_StopDown();',3000); 
}

function ScrollDiv_GoUp(){
     if(MoveLock) return;
     clearInterval(AutoPlayObj);
     MoveLock = true;
     MoveTimeObj = setInterval('ScrollDiv_ScrUp();',Speed);
}

function ScrollDiv_StopUp()
{ 
     clearInterval(MoveTimeObj);
     if(DisplayDivObj.scrollLeft % PageWidth - fill != 0)
     {
          Comp = fill - (DisplayDivObj.scrollLeft % PageWidth);
          CompScr();
     }else
     {
        MoveLock = false;
     }
     AutoPlay();
}

function ScrollDiv_ScrUp()
{ 
     if(DisplayDivObj.scrollLeft <= 0)
     {
        DisplayDivObj.scrollLeft = DisplayDivObj.scrollLeft +  List1Obj.offsetWidth
     }
     DisplayDivObj.scrollLeft -= Space ;
}

function ScrollDiv_GoDown(){ 
     clearInterval(MoveTimeObj);
     if(MoveLock) return;
     clearInterval(AutoPlayObj);
     MoveLock = true;
     ScrollDiv_ScrDown();
     MoveTimeObj = setInterval('ScrollDiv_ScrDown()',Speed);
}

function ScrollDiv_StopDown(){
     clearInterval(MoveTimeObj);
     if(DisplayDivObj.scrollLeft % PageWidth - fill != 0 )
     {
          Comp = PageWidth - DisplayDivObj.scrollLeft % PageWidth + fill;
          CompScr();
     }else{
          MoveLock = false;
     }
     AutoPlay();
}

function ScrollDiv_ScrDown(){ 
     if(DisplayDivObj.scrollLeft >= List1Obj.scrollWidth)
     {
        DisplayDivObj.scrollLeft = DisplayDivObj.scrollLeft - List1Obj.scrollWidth;
     }
     DisplayDivObj.scrollLeft += Space ;
}

function CompScr(){
     var num;
     if(Comp == 0)
     {
        MoveLock = false;return;
     }
     
     if(Comp < 0){
          if(Comp < -Space)
          {
               Comp += Space;
               num = Space;
          }
          else
          {
               num = -Comp;
               Comp = 0;
          }
          DisplayDivObj.scrollLeft -= num;
          setTimeout('CompScr()',Speed);
     }
     else
     { 
          if(Comp > Space){
           Comp -= Space;
           num = Space;
          }else{
           num = Comp;
           Comp = 0;
          }
          DisplayDivObj.scrollLeft += num;
          setTimeout('CompScr()',Speed);
     }
}

</script>


				<div style="clear: both"></div>
			</div>
			<div class="DivRight">

				<div class="netbankrightbg">
					<div class="netbankdiv" style="height: 658px">
						<div class="rightheader">
							<a href="http://www.cmbchina.com/personal/netbank/"
								target="_blank" class="rightheadertitle">网上个人银行</a>
						</div>
						<div class="whitebgtop">&nbsp;</div>
						<div class="whitebgmid" style="height: 147px;">
							<ul>
								<li><a class="bg" href="javascript:hbwindows();"><span>·
											个人银行大众版</span></a></li>
								<li><a class="bg"
									href="http://www.cmbchina.com/pbankweb/download.htm"
									target="_blank"><span>· 个人银行专业版</span></a></li>
								<li><a class="bg" href="javascript:ifinwindows();"><span>·
											i理财大众版</span></a></li>
								<li><a class="bg"
									href="http://szdl.cmbchina.com/download/PBBS/PBBusinessSetup.exe"
									target="_blank"><span>· 电子商务专业版</span></a></li>
								<li><a class="bg"
									href="http://live.cmbchina.com/webpages/safecard/index.html"
									target="_blank"> <span>· 安全提示</span></a></li>
							</ul>
						</div>
						<div class="whitebgbottom"></div>
						<div class="rightheader">
							<a href="http://www.cmbchina.com/MBankWeb/" target="_blank"
								class="rightheadertitle">手机银行</a>
						</div>
						<div class="whitebgtop">&nbsp;</div>
						<div class="whitebgmid" style="height: 120px;">
							<ul>
								<li><a class="bg"
									href="http://www.cmbchina.com/MBankWeb/Site/" target="_blank"><span>
											· 手机一网通</span></a></li>
								<li><a class="bg" href="http://www.cmbchina.com/MBankWeb/"
									target="_blank"><span>· 手机银行介绍</span></a></li>
								<li><a class="bg" href="http://www.cmbchina.com/MBankWeb/"
									target="_blank"><span>· 手机银行软件下载</span></a></li>
								<li><a class="bg"
									href="http://www.cmbchina.com/MBankWeb/wallet/main.html"
									target="_blank"><span>· 手机钱包</span></a></li>
							</ul>
						</div>
						<div class="whitebgbottom"></div>
						<div class="rightheader">
							<a href="http://www.cmbchina.com/mbankweb/pad/" target="_blank"
								class="rightheadertitle" cname="Pad银行" oname="Pad银行"
								otype="文字链接">Pad银行</a>
						</div>
						<div class="whitebgtop">&nbsp;</div>
						<div class="whitebgmid" style="height: 60px;">
							<ul>
								<li><a href="http://www.cmbchina.com/mbankweb/pad/"
									class="bg" cname="Pad银行" oname="Pad银行" otype="文字链接"
									target="_blank"><span>· iPad银行</span></a></li>
								<li><a href="http://www.cmbchina.com/mbankweb/win8padbank/"
									class="bg" cname="Win8Pad银行" oname="Win8Pad银行" otype="文字链接"
									target="_blank"><span>· Win8 Pad银行</span></a></li>
							</ul>
						</div>
						<div class="whitebgbottom"></div>
						<div class="rightheader">
							<span>在线服务</span>
						</div>
						<div class="whitebgtop">&nbsp;</div>
						<div class="whitebgmid" style="height: 163px;">
							<ul>
								<li class="nobgbig"><span>· <a
										href="http://market.cmbchina.com/personal/sdkh_pc/index.html"
										target="_blank">在线极速开户</a></span></li>
								<li class="nobgbig"><span>· <a
										href="http://www.cmbchina.com/personalbank/netpay/CmbPay.htm#null"
										target="_blank">网上支付申请</a></span></li>
								<li class="nobgbig"><span>· <a
										href="javascript:OpenFirm()">网上商户结账处理</a></span></li>
								<li class="nobgbig"><span>· <a
										href="http://ccclub.cmbchina.com/ccproduct/newcustomer.aspx"
										target="_blank"> 信用卡申请</a></span></li>
								<li class="nobgbig"><span>· <a
										href="http://95555.cmbchina.com/CLoan/CmbLoan/shengyiloan.aspx"
										target="_blank">在线申请生意贷</a></span> <img class="True" width="24"
									height="9" src="./zs_geren_files/personal_new.gif"></li>
								<li class="nobgbig"><span>· <a
										href="https://app.cmbchina.com/pevs/pccheck.aspx"
										target="_blank" cname="在线服务" oname="电子回单验证" otype="文字链接">
											个人电子回单验证</a></span></li>
							</ul>
						</div>
						<div class="whitebgbottom"></div>
					</div>
					<div class="netbankbottom"></div>
				</div>
				<div style="height: 0px !important; height: 4px; overflow: hidden">
				</div>

				<div style="height: 8px !important; height: 4px; overflow: hidden"></div>
				<a href="http://www.cmbchina.com/CustomerService" target="_blank"><img
					width="209" height="79" src="./zs_geren_files/main_cs.gif"
					border="0"></a>

				<div style="height: 8px !important; height: 4px; overflow: hidden">
				</div>
				<div class="toolboxdivbg">
					<div class="toolboxdiv" style="height: 334px;">
						<div class="rightheader" style="width: 190px">
							<span>便捷服务</span><span style="margin-left: 50px"><a
								href="http://www.cmbchina.com/Common/QuickService.aspx"
								target="_blank"><span>&gt;&gt;更多</span></a></span>
						</div>
						<div class="whitebgtop">&nbsp;</div>
						<div class="whitebgmid" style="height: 292px; text-align: center;">
							<table cellpadding="0" border="0" cellspacing="0" align="center"
								width="180">
								<tbody>
									<tr>
										<td style="width: 92px;">
											<div style="width: 76px; height: 53px;">
												<a
													href="http://www.cmbchina.com/CustomerService/CustomerServiceInfo.aspx?pageid=xzfwbd"
													target="_blank" cname="便捷服务" oname="小招服务宝典" otype="文字链接">
													<img
													style="border: 0px; width: 43px; height: 41px; margin-top: 5px; margin-left: 8px;"
													src="./zs_geren_files/fwbd.jpg">
												</a>
											</div>
											<div>
												<a
													href="http://www.cmbchina.com/CustomerService/CustomerServiceInfo.aspx?pageid=xzfwbd"
													target="_blank" cname="便捷服务" oname="小招服务宝典" otype="文字链接">小招服务宝典</a>
											</div>
										</td>
										<td style="width: 92px;"><a
											href="http://t.sina.com.cn/cmbchina" target="_blank"
											cname="便捷服务" oname="微博" otype="文字链接"> <img
												style="border: 0px; width: 76px; height: 53px;"
												src="./zs_geren_files/toolbox_wb.jpg"></a>
										<div>
												<a href="http://t.sina.com.cn/cmbchina" target="_blank"
													cname="便捷服务" oname="微博" otype="文字链接">微博</a>
											</div></td>
									</tr>
									<tr>
										<td style="width: 92px;"><a
											href="http://map.cmbchina.com/" target="_blank" cname="便捷服务"
											oname="网点地图" otype="文字链接"> <img
												style="border: 0px; width: 76px; height: 53px;"
												src="./zs_geren_files/toolbox_map.jpg"></a>
										<div>
												<a href="http://map.cmbchina.com/" target="_blank"
													cname="便捷服务" oname="网点地图" otype="文字链接"> 网点地图</a>
											</div></td>
										<td><a
											href="http://www.cmbchina.com/Customerservice/customerserviceinfo.aspx?pageid=calculator"
											target="_blank" cname="便捷服务" oname="理财计算器" otype="文字链接">
												<img style="border: 0px; width: 76px; height: 53px;"
												src="./zs_geren_files/toolbox_jsq.jpg">
										</a>
										<div>
												<a
													href="http://www.cmbchina.com/Customerservice/customerserviceinfo.aspx?pageid=calculator"
													target="_blank" cname="便捷服务" oname="理财计算器" otype="文字链接">理财计算器</a>
											</div></td>
									</tr>
									<tr>
										<td><a
											href="http://shop.cmbchina.com/celltelephone/default.aspx"
											target="_blank" cname="便捷服务" oname="手机充值" otype="文字链接"> <img
												style="border: 0px; width: 76px; height: 53px;"
												src="./zs_geren_files/toolbox_mobile.jpg"></a>
										<div>
												<a
													href="http://shop.cmbchina.com/celltelephone/default.aspx"
													target="_blank" cname="便捷服务" oname="手机充值" otype="文字链接">手机充值</a>
											</div></td>
										<td><a href="http://jf.cmbchina.com/" target="_blank"
											cname="便捷服务" oname="积分奖励" otype="文字链接"> <img
												style="border: 0px; width: 76px; height: 53px;"
												src="./zs_geren_files/toolbox_ccclub.jpg"></a>
										<div>
												<a href="http://jf.cmbchina.com/" target="_blank"
													cname="便捷服务" oname="积分奖励" otype="文字链接">积分奖励</a>
											</div></td>
									</tr>
									<tr>
										<td><a href="http://trip.cmbchina.com/" target="_blank"
											cname="便捷服务" oname="酒店预订" otype="文字链接"> <img
												style="border: 0px; width: 76px; height: 53px;"
												src="./zs_geren_files/toolbox_hotel.jpg"></a>
										<div>
												<a href="http://trip.cmbchina.com/" target="_blank"
													cname="便捷服务" oname="酒店预订" otype="文字链接"> 酒店预订</a>
											</div></td>
										<td><a href="http://trip.cmbchina.com/" target="_blank"
											cname="便捷服务" oname="机票预订" otype="文字链接"> <img
												style="border: 0px; width: 76px; height: 53px;"
												src="./zs_geren_files/toolbox_ticket.jpg"></a>
										<div>
												<a href="http://trip.cmbchina.com/" target="_blank"
													cname="便捷服务" oname="机票预订" otype="文字链接"> 机票预订</a>
											</div></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="whitebgbottom"></div>
					</div>
					<div class="toolboxbottom"></div>
				</div>


				<div style="height: 8px !important; height: 4px; overflow: hidden">
				</div>
				<div class="toolboxdiv" style="height: 205px;">
					<div class="rightheader">
						<a href="http://www.cmbchina.com/CmbWebPubInfo/" target="_blank"
							class="rightheadertitle"> 实时金融信息</a>
					</div>
					<div class="whitebgtop">&nbsp;</div>
					<div class="whitebgmid">
						<ul>
							<li class="nobgbig"><span>· <a class="red"
									href="http://www.cmbchina.com/CustomerService/CustomerServiceInfo.aspx?pageid=zhbz"
									target="_blank" cname="实时金融信息" oname="资费标准" otype="文字链接">服务价格目录</a></span></li>
							<li class="nobgbig"><span>· <a
									href="http://fx.cmbchina.com/hq/" target="_blank"
									cname="实时金融信息" oname="外汇实时汇率" otype="文字链接">外汇实时汇率</a></span></li>
							<li class="nobgbig"><span>· <a
									href="http://gold.cmbchina.com/rate/" target="_blank"
									cname="实时金融信息" oname="黄金市场行情" otype="文字链接"> 黄金市场行情</a></span></li>
							<li class="nobgbig"><span>· <a
									href="http://www.cmbchina.com/CmbWebPubInfo/BondTradePrice.aspx?chnl=bondprice"
									target="_blank" cname="实时金融信息" oname="国债柜台交易报价" otype="文字链接">柜台交易债券</a></span></li>
							<li class="nobgbig"><span>· <a
									href="http://www.cmbchina.com/cfweb/personal/prodvalue.aspx"
									target="_blank" cname="实时金融信息" oname="理财产品净值" otype="文字链接">理财产品净值</a>
									/ <a
									href="http://fund.cmbchina.com/FundPages/OpenFund/FundNetValue.aspx"
									target="_blank" cname="实时金融信息" oname="基金净值" otype="文字链接">基金净值</a></span></li>
							<li class="nobgbig"><span>· <a
									href="http://www.cmbchina.com/CmbWebPubInfo/InterestRate.aspx?chnl=ckrate"
									target="_blank" cname="实时金融信息" oname="存款利率" otype="文字链接">存款利率</a>
									/ <a
									href="http://www.cmbchina.com/CmbWebPubInfo/CDRate.aspx?chnl=cdrate"
									target="_blank" cname="实时金融信息" oname="贷款利率" otype="文字链接">
										贷款利率</a></span></li>
							<li class="nobgbig"><span>· <a
									href="http://www.cmbchina.com/cfweb/CDeposit/Default.aspx"
									target="_blank" cname="大额存单" oname="大额存单" otype="文字链接">大额存单</a></span></li>
						</ul>
					</div>
					<div class="whitebgbottom"></div>
				</div>
				<div class="netbankbottom"></div>

			</div>
		</div>

		<script type="text/javascript">
        jQuery(document).ready(function() {
            // 使用 jQuery $ 的代码
            jQuery.ajax({
                url: "" + "/SrvAjax/personalreco.ashx",
                type: "get",
                data: { op: "getpersonalrecoproducts" },
                cache: false,
                success: function(data) {
                    var result = eval(data);
                    if (result && result.code == 1) {
                        var prdhtml = null;
                        var prodinfoarr = result.prodinfo.split('|');
                        if (prodinfoarr.length == 4) {
                            var prdhtml = '<div class="leftpic"><a href="' + prodinfoarr[3] + '" target="_blank" cname="您可能感兴趣的产品" oname="' + prodinfoarr[1] + '" otype="文字链接"><img src="' + prodinfoarr[0] + '"/></a></div>';
                            prdhtml += '<div class="righttxt"><div class="title">' + prodinfoarr[1] + '</div><div class="describe"><a href="' + prodinfoarr[3] + '" target="_blank" cname="您可能感兴趣的产品" oname="' + prodinfoarr[1] + '" otype="文字链接">' + prodinfoarr[2] + '</a></div></div>';
                            
                            jQuery("#personalreco_con").html(prdhtml);
                            EventTrack('http://www.cmbchina.com/personal?reco=show', prodinfoarr[1]);
                        }
                        
                    }
                }
            });
        });
    </script>

		<div class="spacer"></div>

		<table cellspacing="0" cellpadding="0" width="950px" align="center"
			border="0">
			<tbody>
				<tr height="8">
					<td></td>
				</tr>
				<tr>
					<td align="center" style="background-color: #666;">
						<div id="FooterNav">
							<div style="float: left; width: 150px; height: 30px;"></div>
							<ul>
								<li><a
									href="http://www.cmbchina.com/webpages/certificate.htm"
									target="_blank" cname="页脚导航" oname="安全说明" otype="文字链接">安全说明</a></li>
								<li>|</li>
								<li><a
									href="http://www.cmbchina.com/about/?pageid=webnotice"
									cname="页脚导航" oname="网站声明" otype="文字链接">网站声明</a></li>
								<li>|</li>
								<li><a href="http://www.cmbchina.com/about/?pageid=privacy"
									cname="页脚导航" oname="隐私保密条款" otype="文字链接">隐私保密条款</a></li>
								<li>|</li>
								<li><a href="http://www.cmbchina.com/about/sitemap.aspx"
									cname="页脚导航" oname="网站地图" otype="文字链接">网站地图</a></li>
								<li>|</li>
								<li><a
									href="http://www.cmbchina.com/about/?pageid=goodlink"
									cname="页脚导航" oname="友情链接" otype="文字链接">友情链接</a></li>
								<li>|</li>
								<li><a
									href="javascript:AddFavorite(&#39;http://www.cmbchina.com&#39;,&#39;招商银行--欢迎来到一网通主站&#39;);"
									cname="页脚导航" oname="加入收藏夹" otype="文字链接">加入收藏夹</a></li>
								<li>|</li>
								<li><a target="_blank" href="http://career.cmbchina.com/"
									cname="页脚导航" oname="人才招聘" otype="文字链接">人才招聘</a></li>
								<li>|</li>
								<li><a target="_blank"
									href="http://www.cmbchina.com/MBankWeb/Site/" cname="页脚导航"
									oname="手机一网通" otype="文字链接">手机一网通</a></li>
								<li>|</li>
								<li><a target="_blank"
									href="http://link.cmbchina.com/cmbfinprod/" cname="页脚导航"
									oname="产品信息查询平台" otype="文字链接">产品信息查询平台</a></li>
							</ul>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<table cellspacing="0" cellpadding="0" width="950px" align="center"
			border="0">
			<tbody>
				<tr>
					<td width="15%" style="text-align: center" rowspan="2" valign="top">
						<br> <img src="./zs_geren_files/2-dbarcode.png" border="0"
							alt="手机一网通二维码"><br>
									<div
										style="font-size: 12px; font-weight: bold; height: 25px; line-height: 15px; margin-top: 10px;">
										手机一网通<br> m.cmbchina.com
									</div>
					</td>
					<td>
						<table cellspacing="0" cellpadding="0" width="780px"
							align="center" border="0">
							<tbody>
								<tr>
									<td colspan="3">&nbsp;</td>
								</tr>
								<tr>
									<td width="30%">服务热线：95555</td>
									<td width="30%">&nbsp;</td>
									<td width="40%">招商银行客户投诉受理渠道：</td>
								</tr>
								<tr>
									<td>境外服务热线：86-755-84391000</td>
									<td>私人银行服务专线：40066-95555</td>
									<td>
										电话渠道：95555转7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;网络渠道：95555@cmbchina.com
									</td>
								</tr>
								<tr>
									<td>信用卡服务热线：400-820-5555</td>
									<td>钻石贵宾服务专线：40068-95555</td>
									<td>信函渠道：深圳市福田区深南大道7088号招商银行大厦，</td>
								</tr>
								<tr>
									<td>企业年金专线：4006095555</td>
									<td>金葵花贵宾服务专线：40088-95555</td>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;招商银行消费者权益保护与服务监督管理中心，
									</td>
								</tr>
								<tr>
									<td></td>
									<td></td>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;邮政编码：518040
									</td>
								</tr>

							</tbody>
						</table>
					</td>
				</tr>
				<tr width="85%">
					<td>
						<table cellpadding="0" cellspacing="0" border="0" width="95%"
							align="center">
							<tbody>
								<tr>
									<td align="center"><a target="_blank"
										href="http://szcert.ebs.org.cn/418b33e0-18a9-4206-bb61-1c201322a400">
											<img src="./zs_geren_files/gongshang.jpg" border="0"
											alt="工商网监标志">
									</a></td>
									<td width="15"></td>
									<td align="center"><a target="_blank"
										href="http://www.cmbchina.com/webpages/cmbsafe/index.htm">
											<img src="./zs_geren_files/wangan.gif" border="0"
											alt="网络安全标志">
									</a></td>
									<td width="15"></td>
									<td align="center"><a
										href="http://www.sznet110.gov.cn/netalarm/index.jsp"
										target="_blank"> <img src="./zs_geren_files/sz_police.gif"
											border="0" alt="网络安全标志"></a></td>
									<td align="center"><a id="___szfw_logo___"
										href="https://search.szfw.org/cert/l/CX20120110001800001833"
										target="_blank"><img
											src="./zs_geren_files/chengxinlogo.png" border="0" alt="诚信网站"></a>
									</td>
									<td><a
										href="https://ss.knet.cn/verifyseal.dll?sn=e13073144030041836wa7c000000&amp;ct=df&amp;a=1&amp;pa=500267"
										tabindex="-1" id="urlknet" target="_blank"> <img
											alt="可信网站" name="CNNIC_seal" border="true"
											src="./zs_geren_files/knetseallogo.png"
											oncontextmenu="return false;"
											onclick="CNNIC_change(&#39;urlknet&#39;)"></a></td>
									<td align="center" class="FooterGray">招商银行一网通 创建于一九九七年 <br>
											© 2014 招商银行 版权所有<br> <a
												href="http://www.miitbeian.gov.cn/" target="_blank">粤ICP备17088997号</a></td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>

		<script language="javascript">
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
</script>
		<script type="text/javascript">(function(){document.getElementById('___szfw_logo___').oncontextmenu = function(){return false;}})();</script>
		<script type="text/JavaScript"> 
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
</script>

		<script language="javascript" src="./zs_geren_files/sdc_web.js"
			type="text/javascript"></script>



		<div class="appd_wrap_open" id="appd_wrap_open"
			style="display: block; left: 0%;">
			<div class="appd_wrap_open_cnt" id="appd_wrap_open_cnt"></div>
		</div>
		<div class="appd_wrap_pop" id="appd_wrap_pop" style="left: -100%;">
			<div class="appd_wrap_pop_cnt" id="appd_wrap_pop_cnt">
				<div class="appd_wrap_pop_box">
					<a href="javascript:;" class="appd_wrap_close" title="关闭"
						id="appd_wrap_close">×<span>关闭</span></a> <a
						class="appd_wrap_pop_pic" target="_blank" cname="底部浮动广告"
						oname="个人业务底部浮层广告" otype="图片链接"
						href="https://market.cmbchina.com/personal/angrybirdpc0004/index.html"
						style="background-image: url(&quot;http://images.cmbchina.com/cmbadv/201712/c1806fbe-0903-4bdd-a32c-a477f848c38e.png&quot;);">
					</a>
				</div>
			</div>
		</div>

		<script type="text/javascript">
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
</script>


	</form>
	<script language="javascript" type="text/javascript">
        personalreco.RecordBrowsehistory();
        personalreco.RecordSearchhistoryOutSide();
    </script>


</body>
</html>