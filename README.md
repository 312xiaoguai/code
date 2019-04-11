
<!DOCTYPE html>
<html>
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>HRMS人员基本信息表 - HIS社区 - 3ms知识管理社区</title>
<meta name="description" content="华为|3MS|研发知识共享平台" />
<meta name="keywords" content="华为|3MS|研发知识共享平台" />
<!-- 设置浏览器模式到IE最新模式 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">


<!-- [JsZip_holder] -->

<link rel="shortcut icon" href="/hi/public/images/favicon.ico" />



<!--去除旧的用户行为分析js by wangli wwx344612 2017-05-03-->



<!-- 前端js缓存插件 by linjuming lwx229550 2017-3-20 -->
<!-- ajax缓存插件 -->

<!-- ajax缓存插件 -->

<!--差异化加载jQuery版本-->
<!--团队小后台资源分类添加时点击父分类ie下js报错，jquery-1.4下有错，现改为1.5.2。由于1.6及以上版本有大的改动，用attr('checked') 获取checkbox 框的值为checked和undefined ;现网站很多是用以前的方法判断 checkbox的选中状态，所以本网站jquery框架不能升级为1.6及以上版本，如一定要用到1.6及以上版本请做好兼容 guopan 2013-8-5 12:02:10-->
	




<!-- hi社区与微博的小卡片 by lixiaoyue 2013-6-6 -->
	

















<!-- cssZip -->
<!-- cssZip: top -->
<link href="/hi/themes/3mspink/public/layout.css?v=20190411141853" rel="stylesheet" type="text/css" />
<link href="/hi/themes/3mspink/public/blue/theme.css?v=20190411141853" id="themepoint" rel="stylesheet" type="text/css" />
<!-- /cssZip: top -->
<link href="http://3ms.huawei.com/hi/jscss_cached/group_wiki_detail/page_pack_c7178115ecc3aef604c89bed9a0d3c06.css?v=20190301183909_14_20190301183943" type="text/css" rel="stylesheet" />




<style type="text/css"> a,a:visited</style>



<style>
/*  @media only screen and (min-width : 1280px) {
   .overwidth,.G_width{width:1070px !important;margin:0 auto !important;}
}*/
  @media only screen and (min-width : 1440px ) {
   .overwidth,.G_width{width:1150px !important;margin:0 auto !important;}
}

.group_tit2 li .exit_group{
    background: none repeat scroll 0 0 #4A4A4A;
    box-shadow: 0 3px 5px #ccc;
    color: #CBC8CC;
    display: none;
    font-size: 14px;
    height: 40px;
    left: 12px;
    position: absolute;
    top: 48px;
    white-space: nowrap;
    width: 100px;
    z-index: 1;
    text-align:center;
}

.group_tit2 li .exit_group1{
    background: url("/hi/themes/3mspink/group/Public/images/ikx_triangle_w.png") no-repeat  scroll 0px 0px;
    height: 10px;
    left: 44px;
    position: absolute;
    top: -5px;
    width: 15px;
}

.exit_group:hover{background-color:#171717 !important;color:#1c1c1c;}
</style>
<style>
.G_heard {background-color: #2e3243;font-size: 14px;height: 60px;line-height: 60px;}
.G_heard a{font-family:Microsoft YaHei,Arial,Helvetica,sans-serif !important;}
.G_heard a:hover{color:#FFFFFF !important;font-size:14px;}
.group_tit{ clear:both;  display:inline-block; position:relative;}
.group_tit li{ float:left; height:60px; line-height:60px;margin-right:24px;}
.group_tit li a{ display:block;}
.group_head_user_out{width:32px;height:60px;line-height:60px;}
.group_head_user_out_box p{line-height: 7px; height: 7px; z-index: 99;}
.group_head_user_out_box dl{box-shadow: 0 0 1px 1px #2E3243; background-color:#2E3243;text-align: center;margin-top: 4px;}
.group_head_user_out_box dd a{height:40px;line-height:40px;}
.group_head_user_out_box dd:hover{background-color:#171717;color:#ABADB3;}
.group_tit2{ float:right;}
.group_tit2 li{float:left;height:60px;line-height: 60px;}
.group_tit2 .notice-count {position: absolute;top: 10px;border-radius: 30px;border: none;background-color: red;width:26px;height:14px;line-height: 14px;text-align:center;font-size:12px;color:#FFFFFF;display:none;}
.group_l .G_heard a, .group_l .G_heard a:link, .group_l .G_heard a:visited {color: #ABADB3;z-index:1;}
.G_heard_menu_selected{color:#FFFFFF !important;}
</style>



<style type='text/css'>
    #selectView5 .sh li,#selectEdit5 li{list-style:none;margin:0px;list-style-type:none;}
    .sm{
        background: url("/hi/public/images/secret.gif") no-repeat scroll 0 center transparent;
        display: inline-block;
        margin-right: 5px;
        width: 13px;
    }

</style>




<style>
#selected_user_list { font-size: 12px; text-align: left;}
#selected_user_list dl{ margin: 0px; padding:0 }
#selected_user_list dt{ background-color: #F0F0F0; line-height: 24px; margin: 0px;padding:0 5px;clear: both; }
#selected_user_list dd{ color: #666; border-bottom: 1px solid #ddd; margin: 0px; line-height: 24px; clear: both; height: 24px; margin-bottom:5px;}
#selected_user_list dd .del{ background: url(../images/ico_del.gif) no-repeat 0px 0px; text-indent: 999px; white-space: nowrap; display: inline-block; width: 12px; overflow: hidden; height: 12px; margin-top: 5px; margin-right: 5px; }
#ui-fs{border:none;}
#ts_search_handle{border:1px solid #DDDDDD;}
.fl_span{float:right;height:20px;line-height:20px;margin:0;margin-left:10px;}
<!--.inputwidth{width:245px;}-->
.imShareBox{display:none;}
</style>
<style>
           /*分享到微社区样式调整 liuzhiwei 2016/4/20*/
           .user_digg .MweiboShare .Mweibo{background:url("/hi/themes/3mspink/public/images/transMwei3.png") no-repeat 0px 5px;margin-left: 20px;}
           .user_digg .MweiboShare:hover .Mweibo{background:url("/hi/themes/3mspink/public/images/transMweivo2_hover.png") no-repeat 0px 5px;}
       </style>
<style>
.tbx-list li em {
    color: #069;
    font-size: 12px;
    font-style: normal;
}
</style>
<style>
  #share_to_weibo .weibo_share_icon{ display:none; }
</style>


<style>
.usp_hi_zone{
    float: right;
    padding-right: 1px;
    width: 43px;
    height: 50px;
    cursor: pointer;
}
#usp_yan{
    right: 1% !important;
    left: auto !important;
    font-family: Arial, Helvetica, sans-serif;
}
#usp_yan.hi_ihelp_common {
    width: 43px;
    top: 30% !important;
    right: 1% !important;
    position: fixed;
    font-size: 12px;
    z-index: 19601;
}


#ihelp_back_to_top{
    position: relative;
    clear: both;
}
#ihelp_back_to_top a{
    display: block;
    background: url("/hi/public/images/icon_li_new.png") no-repeat scroll 8px -530px;
    height:60px;
    position: absolute;
    top: 0px;
    width: 43px;
    cursor: pointer;
}
#usp_yan .bgcolor_1 ul li a {
    text-align: center;
}
#usp_yan .bgcolor_1 ul li a span i.hi_right_icon{
    background: url(/hi/themes/3mspink/public/images/right_ihelp_icon.png) no-repeat right top;
}
#usp_yan .bgcolor_1 ul li a:hover span i.hi_right_icon{
    background-position: left top;
}
#usp_yan .bgcolor_1 ul li a span i.write_icon{
    background-position: right -228px;
}
#usp_yan .bgcolor_1 ul li a:hover span i.write_icon{
    background-position: left -228px;
}
#usp_yan .bgcolor_1 ul li a span i.write_icon.ask{
    background-position: right -342px;
}
#usp_yan .bgcolor_1 ul li a:hover span i.write_icon.ask{
    background-position: left -342px;
}


#usp_yan .bgcolor_1 ul li a span i.docCart_list_btn_icon{
    background-position: right -530px;
}
#usp_yan .bgcolor_1 ul li a:hover span i.docCart_list_btn_icon{
    background-position: left -530px;
}

#usp_yan .bgcolor_1 ul li a span i.auditor_icon{
    background-position: right -150px;
}
#usp_yan .bgcolor_1 ul li a:hover span i.auditor_icon{
    background-position: left -150px;
}
#usp_yan .bgcolor_1 ul li a span i.menu_icon{
    background-position: right -303px;
}
#usp_yan .bgcolor_1 ul li a:hover span i.menu_icon{
    background-position: left -303px;
}
#usp_yan .bgcolor_1 ul li a span i.assessor_icon{
    background-position: right -189px;
}
#usp_yan .bgcolor_1 ul li a:hover span i.assessor_icon{
    background-position: left -189px;
}
#usp_yan .bgcolor_1 ul li a span i.upload_icon{
    background-position: right -492px;
}
#usp_yan .bgcolor_1 ul li a:hover span i.upload_icon{
    background-position: left -492px;
}
#usp_yan .bgcolor_1 ul li a span i.wiki_write_icon{
    background-position: right -37px;
}
#usp_yan .bgcolor_1 ul li a:hover span i.wiki_write_icon{
    background-position: left -37px;
}

#usp_yan .bgcolor_1 ul li a span i.comment_icon{
    background-position: right -265px;
}
#usp_yan .bgcolor_1 ul li a:hover span i.comment_icon{
    background-position: left -265px;
}


</style>

<style type="text/css">
.abs_tooltip {display:none;position:absolute;border:1px solid #333;background-color:#161616;border-radius:5px;padding:10px;color:#fff;font-size:12px Arial;}
</style>
<!-- /cssZip -->
</head>


<body class="G_bg">

<!--选择性加载多图播放器代码-->
			



						






<!-- 添加试点团队头部文件 add by-xucheng_2015.03.09 -->
<!--
使用CSS3 Media Queries实现网页团队头部宽窄屏自适应
当屏幕分辨率大于1680px,设置团队头部宽度：width:1150px;
当屏幕分辨率大于1920px,设置团队头部宽度：width:1390px;
-->


<div class="group_l">
<!-- 团队顶部 begin-->
    
<!-- 团队顶部 begin-->
<div class="G_hd">
    <div class="G_heard">
        <div class="G_width">
                <span class="R alR">
                    <ul class="group_tit2">
                        
                        <li class="ikx_admin" style="display:none;"><a target="_blank" href="/admin" isadmin="">管理</a></li>
                        <li  style="margin-left:24px;">
                            <a target="_blank" href="/Ufield/dWX658132#messages?list=todo&l=zh-cn" style="height:39px;">
                                <img data-original="/hi/themes/3mspink/group/Public/images/ikx_trumpet_b.png" src="http://3ms.huawei.com/hi/public/images/grey.gif" style="margin-top:22px;height: 17px;width:16px;" />
                            </a>
                            <span class="notice-count">&nbsp;</span>
                        </li>
                        <li class="group_head_user_out" style="margin-left:16px;">
                            <a target="_blank" href="/Ufield/dWX658132?l=zh-cn" title="dWX658132"><img  data-original="http://w3.huawei.com/w3lab/rest/yellowpage/face/WX658132/45" src="http://3ms.huawei.com/hi/public/images/grey.gif" width="32px" height="32px" style="border-radius:50%;margin-top:14px;"></a>
                            <div class="group_head_user_out_box">
                                <p>
                                    <img data-original="/hi/themes/3mspink/group/Public/images/ikx_triangle_w.png" src="http://3ms.huawei.com/hi/public/images/grey.gif"></p>
                                <dl>
                                    <dd style="height:42px;line-height:42px;"><a href="http://3ms.huawei.com/hi/index.php?app=home&mod=Public&act=logout">退出</a></dd>
                                </dl>
                            </div>
                        </li>
                        <li style="margin-left:5px;">
                            <a target="_blank" href="/Ufield/dWX658132?l=zh-cn" title="dWX658132">dWX658132</a>
                        </li>
                        <li style="margin-left:16px;">
                                                        <a href="javascript:void(0)" onclick="setLanguage('en')" class="on">EN</a>&nbsp;
                                                    </li>
                        <!-- li><a>&nbsp;</a></li -->
                    </ul>
                </span>
                <span class="L alL">
                    
                    <ul class="group_tit">
                        <li style="margin-right:20px;"><a href="http://3ms.huawei.com/hi/../?l=zh-cn" target="_blank"><img style="margin:-10px 0px;" data-original="/hi/themes/3mspink/group/Public/images/ikx_3ms_c.png" src="http://3ms.huawei.com/hi/public/images/grey.gif"  /></a></li>
                        <li><a href="http://3ms.huawei.com/documents/index?l=zh-cn" target="_blank">文档</a></li>
                        <li><a href="/hi/react/group/map?l=zh-cn" target="_blank" class="G_heard_menu_selected">社区</a></li>
                        <li><a href="http://3ms.huawei.com/experts?l=zh-cn" target="_blank">专家</a></li>
                        <li><a href="/hi/blog?3ms_type=menu&l=zh-cn" target="_blank">博客</a></li>
                        <li><a href="http://3ms.huawei.com/externals?l=zh-cn" target="_blank">外部资源</a></li>
                        <li><a href="http://3ms.huawei.com/topics/?l=zh-cn" target="_blank">主题</a></li>
                    </ul>
                </span>

            <div style="..."></div>
        </div>
    </div>
    <!--- 团队归档的提示 begin --->
            <!--- 团队归档的提示 end --->
</div>

<!-- 团队顶部end -->

<div style="clear: both;"></div>
    <!--团队顶部 end -->
<div class="G_banner">
   <!-- -->
  <!--团队头部信息 begin -->
    <div class="overwidth" style="padding-top:0;">
        <div class="face L">
        <a href="http://3ms.huawei.com/hi/index.php?app=group&mod=Core&act=groupInfo&gid=2692001" title="查看团队">
        <em></em>
        <img data-original="http://image.hw3static.com/tiny-lts/v1/images/4317a25ef63714c0e76e_100x100.png" src="http://3ms.huawei.com/hi/public/images/grey.gif" alt="团队图标" /></a>

        <!-- 添加团队名片hover add by-xucheng_2015.03.09  modify dwx279021 页面加载时不马上加载团队背景图，触发动作时添加class="team_card_title"加载图片-->
        <div class="team_card" style="display:none;">
            <div>
            <!-- 团队LOGO -->
            <a title="查看团队" href="http://3ms.huawei.com/hi/index.php?app=group&mod=Core&act=groupInfo&gid=2692001">
            <em></em>
            <img alt="团队图标" data-original="http://image.hw3static.com/tiny-lts/v1/images/4317a25ef63714c0e76e_100x100.png" src="http://3ms.huawei.com/hi/public/images/grey.gif"></a>
            <!-- 团队名称 -->
            <h3 title="HIS社区">HIS社区</h3>
            <!-- 团长 -->
            <span>团 长：赵小桃 z00388314</span>
          </div>
          <div class="team_card_content">
            <p title="HIS社区是华为IT服务为用户搭建的开放互动平台，在这里您可以获取资讯、查阅案例、发布需求建议，参与更多HIS用户互动！">
            <!-- 团队简介 -->
            <b>团队简介：</b>
            HIS社区是华为IT服务为用户搭建的开放互动平台，在这里您可以获取资讯、查阅案例、发布需求建议，参....            </p>
            <p>
              <!-- 团队人数 -->
              <b>团队人数：</b>15672             </p>
          </div>

        </div>

      </div>

      <div class="L info alL">
        <h1>
                    <b class="official_ico" style="float:left;margin-top:10px;"></b>
          
          
          <span title="HIS社区">HIS社区</span>
          <!-- add tangping 2013-5-20 -->
       </h1>

        <div class="alist" style="padding-bottom:0;">

            <!--新权限控制 by 195429 begin-->
      <!-- diy_column 定制栏目 begin-->
            <!-- diy_column 定制栏目 end-->

      <!-- base_manage 管理 begin -->
              <!-- base_manage 管理 end -->

      <!-- base_invite 邀请 begin -->
            <!-- base_invite 邀请 end -->

      <!-- group_book 订阅 RSS begin -->
              <span><a id="addBook" class="ico_book" onclick="addBook()" href="#"><span>订阅<br / ><font class="f12 cl06">订阅团队信息,关注最新动态</font><em></em></span></a></span><span id="delBook" style="display:none;"><a class="ico_qbook" href="javascript:void(0)" onClick="tips()"><span>取消订阅<br / ><font class="f12 cl06">取消订阅团队信息</font><em></em></span></a></span>
             <!-- group_book 订阅 RSS end -->
      <!--member_out_group 脱离团队 member_join_group 加入团队 member_wait_pass 等待审核 Begin-->
      <span>
                              <a class="ico_join" href="javascript:void(0)" onclick="joinGroup(2692001)"><span>加入团队<br / ><font class="f12 cl06">我要加入团队</font><em></em></span></a>
                        </span>
      <!--member_out_group 脱离团队 member_join_group 加入团队 member_wait_pass 等待审核 end-->
      <!-- 定制栏目,定制主页,管理,邀请,订阅,RSS,加入团队,等待审核,脱离团队-->
    <!--新权限控制 end -->
        </div>
   </div>



    <!--搜索条-->
      <div class="R G_search">
        <form action="http://3ms.huawei.com/hi/index.php?app=group&mod=search&act=iSearchES&gid=2692001" id="groupSearchForm" method="get" onkeypress="javascript:return goSearch()">
            <input type="hidden" name="app" value="group" />
            <input type="hidden" name="mod" value="Search" />
            <input type="hidden" name="act" value="isearch" />
            <input type="hidden" name="gid" value="2692001" />
            <input type="hidden" name="search" value="0" />
            <div id="searchPosition1">
                <span id="positionVal1">社区内</span>
                <ul>
                    <li data="all">全站</li>
                    <!--加入相关社区搜索功能 -add by liuyi lwx369888 2019/03/05-->
                                        <li data="1">社区内</li>
                </ul>
            </div>
            <input type="text" name="keywords" id="bigKeywords1"
                value="关键词" style="color:#999"
                 />
            <input type="button" class="t_sea_r_g L" id="search_bar_button1_in" style="text-indent:-10em;width:39px;" />
        <input type="hidden" class="formTokenHidden" name="__hi3ms__[155498500189]" value="99da06e27e46f8d117d41840f333b7b9" /></form>
   </div>

    <div class="G_guide_list">


  <ul>
    <li><a id="menu_home_1319163" class="focuson " href="http://3ms.huawei.com/hi/group/2692001" title="首页" onclick="setGroupLangCookie()">首页</a></li><li><a id="menu_forum_1319175" class="focuson " href="http://3ms.huawei.com/hi/group/2692001/threads.html" title="圈子" onclick="setGroupLangCookie()">圈子</a></li><li><a id="menu_ask_1378721" class="focuson " href="http://3ms.huawei.com/hi/group/2692001/threads.html?t_type=ask" title="问答" onclick="setGroupLangCookie()">问答</a></li><li><a id="menu_blog_1319177" class="focuson " href="http://3ms.huawei.com/hi/group/2692001/blogs.html" title="博客" onclick="setGroupLangCookie()">博客</a></li><li><a id="menu_wiki_1319179" class="focuson menu_on" href="http://3ms.huawei.com/hi/group/2692001/wikis.html" title="wiki" onclick="setGroupLangCookie()">wiki</a></li>              <li id="nav_more" class="nav_more">
            <a href="javascript:;" class="nav_more_a">更多</a>
            <dl id="nav_list_more" class="nav_list_more" style="display: none">
                                        <dd><a id="menu_expert_1319179" class="focuson "  href="http://3ms.huawei.com/hi/index.php?app=group&mod=Expert&act=index&gid=2692001" title="专家黄页" onclick="setGroupLangCookie()">专家黄页</a></dd>
                                            <dd><a id="menu_file_1319179" class="focuson "  href="http://3ms.huawei.com/hi/group/2692001/files.html" title="资源文档" onclick="setGroupLangCookie()">资源文档</a></dd>
                                </dl>
        </li>
        </ul>
  <!-- <div class="C"></div> -->
</div>
        <div style="clear:both;"> </div>
    <!-- <div class="G_guide_bg"> </div> -->
</div>
<!--团队栏目导航 end-->
</div>
</div>
<div class="contents mt10">








<!-- 新编辑器ppt控件   -->


<!-- 新编辑器ppt控件 end -->

<!-- 右下角目录弹出框  start add by liujun 2015-01-07 -->

<!-- 右下角目录弹出框  end -->



<div class="ng_box">

    <!-- 面包屑 -->
    <div class="b_line">
	    <div class="gird_content bread_bar">
	        当前位置：<a href="http://3ms.huawei.com/hi/group/2692001" title="首页">首页</a> > <a href="http://3ms.huawei.com/hi/group/2692001/wikis.html" title="wiki">wiki</a> > <a href="http://3ms.huawei.com/hi/group/2692001/wikis.html?category=1562659" title="服务">服务</a> > <a href="http://3ms.huawei.com/hi/group/2692001/wikis.html?category=1562773" title="应用公共服务">应用公共服务</a> > <a href="http://3ms.huawei.com/hi/group/2692001/wikis.html?category=1551703" title="iData-公共基础数据服务">iData-公共基础数据...</a> > <a href="http://3ms.huawei.com/hi/group/2692001/wikis.html?category=1551713" title="数据">数据</a> &gt;&nbsp;<span title="HRMS人员基本信息表">HRMS人员基本信息表</span>
	    </div>
	</div>
	<!-- 面包屑 -->

    <div class="gird_content">

	  <!-- 左侧信息 -->
	  <div class="gird9 left">
	     <div class="artcal">

	        <!-- 标题 -->
	        <h3 class="title2" style='clear:both;height:auto;margin:5px 0;'>
		        <div class="L" style="word-break:break-all;width:650px;" title="HRMS人员基本信息表">HRMS人员基本信息表&nbsp;
		            <span class="f12">
		            		            		            		            		            </span>
	            </div>

		        <!-- 编辑 -->
		        <div class="R f12 fn mt5">
			        			            <span class="R f12 fn">[ 您没有编辑权限 ]</span>
			        		            <span class="manage_blog">
		                
		                <!-- 编辑列表 -->
		                		                <div id="wiki_admin">
			                <ul style="z-index:99;top:25px;display:none;">
						        						        						        
						        <!-- 显示权限设置 -->
						        				                        				                    			                    <!-- 显示权限设置 -->

		                    </ul>
		                </div>
		                		                <!-- 编辑列表 -->

		            </span>
		        </div>
	            <!-- 编辑 -->

	            <div class='C'></div>
            </h3>
            <!-- 标题 -->

            <!-- 摘要 -->
                            <p class="wiki_abstract">摘要：1 人员基本 1.1 表基本信息 表基本信息 表名 BASISHRINFO.HW_HR_ALL_PEOPLE_INF_V 基本用途 人员基本信息表，包含人员工号、姓名、邮箱、电话、部门、部门主管等信息 业务要求 --- 字段说明 业务规则： Ø 建议必须集成的字段：EMPLOYEE_NUMBER，SYSTEM_PERSON_TYPE，LAST_UPDATE_DATE，LANGUAGE，PUBLIC_FLAG，SYSTEM_PERSON_TYPE2 Ø 集成到本地后，PUBLIC_FLAG=‘Y’才是有效的数据 Ø 工号切换员工，新工号入职后该表才有数据 Ø 人员状态</p>
                        <!-- 摘要 -->

         
