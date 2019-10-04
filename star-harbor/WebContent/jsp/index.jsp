<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>星星之港*作品中心</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="Mosaddek" name="author" />
<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap-fileupload.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath }/assets/font-awesome/css/font-awesome.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/css/style-responsive.css" rel="stylesheet" />
<link href="../css/style-default.css" rel="stylesheet" id="style_color" />
<link
	href="${pageContext.request.contextPath }/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath }/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css"
	rel="stylesheet" type="text/css" media="screen">
	<style>
	
	.photo img{transform: scale(1,1); transition: all 0.6s; }
 .imgbox:hover img{
      -webkit-transform:scale(4);
      z-index: 5;
}


</style>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="fixed-top">
   <!-- BEGIN HEADER -->
   <div id="header" class="navbar navbar-inverse navbar-fixed-top">
       <!-- BEGIN TOP NAVIGATION BAR -->
       <div class="navbar-inner">
           <div class="container-fluid">
               <!--BEGIN SIDEBAR TOGGLE-->
               <div class="sidebar-toggle-box hidden-phone" >
                   <div class="icon-reorder tooltips" data-placement="right" data-original-title="功能指引"></div>
               </div>
               <!--END SIDEBAR TOGGLE-->
               <!-- BEGIN LOGO -->
               <a class="brand" href="index.action">
               	
                   <img src="img/logo7.png" alt="星星之港" />
               </a>
               <!-- END LOGO -->
               <!-- BEGIN RESPONSIVE MENU TOGGLER -->
               <a class="btn btn-navbar collapsed" id="main_menu_trigger" data-toggle="collapse" data-target=".nav-collapse">
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
                   <span class="arrow"></span>
               </a>
               <!-- END RESPONSIVE MENU TOGGLER -->
               <div id="top_menu" class="nav notify-row">
                   <!-- BEGIN NOTIFICATION -->
                   <ul class="nav top-menu">
                       <!-- BEGIN SETTINGS -->
                       <li class="dropdown">
                           <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                               <i class="icon-tasks"></i>
                               <span class="badge badge-important">6</span>
                           </a>
                           <ul class="dropdown-menu extended tasks-bar">
                               <li>
                                   <p>你有6条任务</p>
                               </li>
                               <li>
                                   <a href="#">
                                       <div class="task-info">
                                         <div class="desc">作品上传</div>
                                         <div class="percent">24%</div>
                                       </div>
                                       <div class="progress progress-striped active no-margin-bot">
                                           <div class="bar" style="width: 24%;"></div>
                                       </div>
                                   </a>
                               </li>
                               <li>
                                   <a href="#">
                                       <div class="task-info">
                                           <div class="desc">数据库更新</div>
                                           <div class="percent">25%</div>
                                       </div>
                                       <div class="progress progress-striped progress-success active no-margin-bot">
                                           <div class="bar" style="width: 25%;"></div>
                                       </div>
                                   </a>
                               </li>
                               <li>
                                   <a href="#">
                                       <div class="task-info">
                                           <div class="desc">手机开发进度</div>
                                           <div class="percent">27%</div>
                                       </div>
                                       <div class="progress progress-striped progress-info active no-margin-bot">
                                           <div class="bar" style="width: 27%;"></div>
                                       </div>
                                   </a>
                               </li>
                               <li>
                                   <a href="#">
                                       <div class="task-info">
                                           <div class="desc">手机App进度</div>
                                           <div class="percent">23%</div>
                                       </div>
                                       <div class="progress progress-striped progress-warning active no-margin-bot">
                                           <div class="bar" style="width: 23%;"></div>
                                       </div>
                                   </a>
                               </li>
                               <li>
                                   <a href="#">
                                       <div class="task-info">
                                           <div class="desc">作品展示</div>
                                           <div class="percent">30%</div>
                                       </div>
                                       <div class="progress progress-striped progress-danger active no-margin-bot">
                                           <div class="bar" style="width: 30%;"></div>
                                       </div>
                                   </a>
                               </li>
                               <li class="external">
                                   <a href="#">查看所有任务</a>
                               </li>
                           </ul>
                       </li>
                       <!-- END SETTINGS -->
                       <!-- BEGIN INBOX DROPDOWN -->
                       <li class="dropdown" id="header_inbox_bar">
                           <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                               <i class="icon-envelope-alt"></i>
                               <span class="badge badge-important">5</span>
                           </a>
                           <ul class="dropdown-menu extended inbox">
                               <li>
                                   <p>你有5条消息</p>
                               </li>
                            
                               <li>
                                   <a href="#">
                                       <span class="photo"><img src="./img/zhan.jpg" alt="头像" /></span>
									<span class="subject">
									<span class="from">zhaokangzhang</span>
									<span class="time">10 分钟</span>
									</span>
									<span class="message">
									 Hi, 最近怎么样?
									</span>
                                   </a>
                               </li>
                               
                               <li>
                                   <a href="#">
                                       <span class="photo"><img src="./img/man.png" alt="头像" /></span>
									<span class="subject">
									<span class="from">铭哥</span>
									<span class="time">刚刚</span>
									</span>
									<span class="message">
									    Hello, I am find.
									</span>
                                   </a>
                               </li>
                               <li>
                                   <a href="#">
                                       <span class="photo"><img src="./img/man.png" alt="头像" /></span>
									<span class="subject">
									<span class="from">雄哥</span>
									<span class="time">刚刚</span>
									</span>
									<span class="message">
									    Hi, I am great.
									</span>
                                   </a>
                               </li>
                               
                               <li>
                                   <a href="#">
                                       <span class="photo"><img src="./img/woman.png" alt="头像" /></span>
									<span class="subject">
									<span class="from">英姐</span>
									<span class="time">30分钟</span>
									</span>
									<span class="message">
									    Hello!
									</span>
                                   </a>
                               </li>
                                <li>
                                   <a href="#">
                                       <span class="photo"><img src="./img/man.png" alt="头像" /></span>
									<span class="subject">
									<span class="from">邦哥</span>
									<span class="time">3小时</span>
									</span>
									<span class="message">
									    I'm great.
									</span>
                                   </a>
                               </li>
                               <li>
                                   <a href="#">
                                       <span class="photo"><img src="./img/woman.png" alt="头像" /></span>
									<span class="subject">
									<span class="from">均哥</span>
									<span class="time">2019-08-26</span>
									</span>
									<span class="message">
									    Hello!
									</span>
                                   </a>
                               </li>
                               <li>
                                   <a href="#">
                                       <span class="photo"><img src="./img/man.png" alt="头像" /></span>
									<span class="subject">
									<span class="from">羽哥</span>
									<span class="time">2019-08-23</span>
									</span>
									<span class="message">
									    I'm great.
									</span>
                                   </a>
                               </li>
                               <li>
                                   <a href="#">
                                       <span class="photo"><img src="./img/zhao.jpg" alt="头像" /></span>
									<span class="subject">
									<span class="from">Little Sun</span>
									<span class="time">2019-07-21</span>
									</span>
									<span class="message">
									    How are you.
									</span>
                                   </a>
                               </li>
                               
                               <li>
                                   <a href="#">查看所有信息</a>
                               </li>
                           </ul>
                       </li>
                       <!-- END INBOX DROPDOWN -->
                       <!-- BEGIN NOTIFICATION DROPDOWN -->
                       <li class="dropdown" id="header_notification_bar">
                           <a href="#" class="dropdown-toggle" data-toggle="dropdown">

                               <i class="icon-bell-alt"></i>
                               <span class="badge badge-warning">5</span>
                           </a>
                           <ul class="dropdown-menu extended notification">
                               <li>
                                   <p>你有5条提示信息</p>
                               </li>
                               <li>
                                   <a href="#">
                                       <span class="label label-important"><i class="icon-bolt"></i></span>
                                       Server #3 overloaded.
                                       <span class="small italic">1 分钟</span>
                                   </a>
                               </li>
                               <li>
                                   <a href="#">
                                       <span class="label label-warning"><i class="icon-bell"></i></span>
                                       Server #10 not respoding.
                                       <span class="small italic">1 小时</span>
                                   </a>
                               </li>
                               <li>
                                   <a href="#">
                                       <span class="label label-important"><i class="icon-bolt"></i></span>
                                       Database overloaded 24%.
                                       <span class="small italic">6 天</span>
                                   </a>
                               </li>
                               <li>
                                   <a href="#">
                                       <span class="label label-success"><i class="icon-plus"></i></span>
                                       New user registered.
                                       <span class="small italic">2019-07-09</span>
                                   </a>
                               </li>
                            
                               <li>
                                   <a href="#">查看所有提示</a>
                               </li>
                           </ul>
                       </li>
                       
                       
                       <!-- END NOTIFICATION DROPDOWN -->

                   </ul>
               </div>
               <!-- END  NOTIFICATION -->
               <div class="top-nav ">
                   <ul class="nav pull-right top-menu" >
                       <!-- BEGIN SUPPORT -->
                      <li class="dropdown" id="header_inbox_bar"> 
                       	<a href="${pageContext.request.contextPath }/index.action" class="dropdown-toggle" data-toggle="dropdown">

                               <i class="icon-bar-chart"></i>
                               <span class="badge badge-warning">更新数据</span>
                           </a>
                           <ul class="dropdown-menu extended inbox">
                               <li>
                                   <p>选择一种方式更新</p>
                               </li>
                               
                               <li>
                                   <a href="http://localhost:8080/star-harbor/index.action">
                                   
                                   <span class="label label-important"><i class="icon-bolt"></i></span>
                                     方式一：（ http://localhost:8080/star-harbor/index.action）
                                       <span class="small italic">强制更新！</span>
                                    
                                   </a>                             
                               </li>
                               
                             <li>&nbsp;</li>
                             
                             <li>
                                   <a href="${pageContext.request.contextPath }/index.action">
                                   
                                   <span class="label label-important"><i class="icon-bolt"></i></span>
                                      方式二：（ ${pageContext.request.contextPath }/index.action）
                                       <span class="small italic">强制更新！</span>
                                    
                                   </a>
                                
                               </li>
                           </ul>
                          
                       </li>
                       
                        <li class="dropdown" id="header_inbox_bar">
                           <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="icon-tasks"></i>
                               <span class="badge badge-important">客服中心</span>
                           </a>
                           <ul class="dropdown-menu extended inbox">
                               <li>
                                   <p>你可选择一种方式联系客服</p>
                               </li>
                               <li class="imgbox">
                                   <a href="#">
                                       <span class="photo"><img src="./img/weixin.jpg" alt="客服微信" /></span>
									<span class="subject">
									<span class="from">赵康展(asdfzhan)</span>
									
									<span class="message">
									    您好！这是客服微信二维码，扫码或搜索微信号验证通过后即可撩客服
									</span>
                                   </a>
                               </li>
                             <li>&nbsp;</li>
                              <li class="imgbox">
                                   <a href="#">
                                       <span class="photo"><img src="./img/qq.jpg" alt="客服QQ" /></span>
									<span class="subject">
									<span class="from">赵康展(3543338298)</span>
									
									<span class="message">
									       您好！这是客服QQ二维码，扫码或搜索QQ号验证通过后即可撩客服
									</span>
                                   </a>
                               </li>
                                <li>&nbsp;</li>
                              <li class="imgbox">
                                   <a href="#">
                                       <span class="photo"><img src="./img/weibo.png" alt="客服微信" /></span>
									<span class="subject">
									<span class="from">赵康展(诚信的翅膀)</span>
									
									<span class="message">
									        您好！这是客服微博二维码，扫码或搜索微博号验证通过后即可撩客服
									</span>
                                   </a>
                               </li>
                              
                               <li>
                                   <a href="#">查看其它方式</a>
                               </li>
                           </ul>
                       </li>
           
                       <li class="dropdown mtop5">

                           <a class="dropdown-toggle element" data-placement="bottom" data-toggle="tooltip" href="#" data-original-title="聊天">
                               <i class="icon-comments-alt"></i>
                           </a>
                       </li>
                       <li class="dropdown mtop5">
                           <a class="dropdown-toggle element" data-placement="bottom" data-toggle="tooltip" href="#" data-original-title="帮助">
                               <i class="icon-headphones"></i>
                           </a>
                       </li>
                       <!-- END SUPPORT -->
                       <!-- BEGIN USER LOGIN DROPDOWN -->
                       <li class="dropdown">
                           <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                               <img src="img/owner.png" alt="管理员" style="width:80;height:80" >
                               <span class="username">
                                <c:if test="${sessionScope.username==null||sessionScope.username==''}">     
              赵康展（Owner）
</c:if>                    
<c:if test="${sessionScope.username!=null&&sessionScope.username!=''}">     
              ${sessionScope.username }（${sessionScope.pnumber }）
</c:if>                                                            
                               </span>
                               
                               <b class="caret"></b>
                           </a>
                           <ul class="dropdown-menu extended logout">
                               <li><a href="#"><i class="icon-user"></i>我的资料</a></li>
                               <li><a href="#"><i class="icon-cog"></i>我的设置</a></li>
                               <li><a href="login.html"><i class="icon-key"></i>退出</a></li>
                           </ul>
                       </li>
                       <!-- END USER LOGIN DROPDOWN -->
                   </ul>
                   <!-- END TOP NAVIGATION MENU -->
               </div>
           </div>
       </div>
       <!-- END TOP NAVIGATION BAR -->
   </div>
   <!-- END HEADER -->
   <!-- BEGIN CONTAINER -->
   <div id="container" class="row-fluid" >
      <!-- BEGIN SIDEBAR -->
      <div class="sidebar-scroll">
        <div id="sidebar" class="nav-collapse collapse">

         <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
         <div class="navbar-inverse">
            <form class="navbar-search visible-phone">
               <input type="text" class="search-query" placeholder="搜索" />
            </form>
         </div>
         <!-- END RESPONSIVE QUICK SEARCH FORM -->
         <!-- BEGIN SIDEBAR MENU -->
          <ul class="sidebar-menu">
              <li class="sub-menu active">
                  <a class="" href="index.action">
                      <i class="icon-dashboard"></i>
                      <span>作品展示</span>
                  </a>
              </li>   
              
              <li class="sub-menu">
                  <a href="javascript:;" class="">
                      <i class="icon-tasks"></i>
                      <span>表单</span>
                      <span class="arrow"></span>
                  </a>
                  <ul class="sub">                    
                      <li><a class="" href="#">表单验证</a></li>
                      <li><a class="" href="${pageContext.request.contextPath}/jsp/upload.jsp">文件上传</a></li>
                  </ul>
              </li>              
              <li class="sub-menu">
                  <a class="" href="javascript:;">
                      <i class="icon-map-marker"></i>
                      <span>地图</span>
                      <span class="arrow"></span>
                  </a>
                  <ul class="sub">
                      <li><a href="#" class="">Vector</a></li>
                      <li><a href="#" class="">Google</a></li>
                  </ul>
              </li>
              <li class="sub-menu">
                  <a href="javascript:;" class="">
                      <i class="icon-file-alt"></i>
                      <span>基本页面</span>
                      <span class="arrow"></span>
                  </a>
                  <ul class="sub">
                      <li><a class="" href="#">个人作品</a></li>
                      <li><a class="" href="#">博客</a></li>                     
                      <li><a class="" href="#">个人资料</a></li>
                      <li><a class="" href="#">关于我们</a></li>
                      <li><a class="" href="#">联系我们</a></li>
                  </ul>
              </li>
              <li class="sub-menu">
                  <a href="javascript:;" class="">
                      <i class="icon-glass"></i>
                      <span>其他</span>
                      <span class="arrow"></span>
                  </a>
                  <ul class="sub">
                      <li><a class="" href="#">购物单</a></li>
                      <li><a class="" href="#">价目单</a></li>
                      <li><a class="" href="#">搜索展示</a></li>
                      <li><a class="" href="#">帮助页面</a></li>                  
                  </ul>
              </li>

              <li class="sub-menu">
                  <a href="javascript:;" class="" >
                    <i class="icon-user"></i>
                    <span>注册/登录</span>
                     <span class="arrow"></span>
                  </a>
                   <ul class="sub">                  
                      <li><a class="${pageContext.request.contextPath }/jsp/login.jsp" href="">登录</a></li>                      
                  </ul>
              </li>
          </ul>
         <!-- END SIDEBAR MENU -->
      </div>
      </div>
      <!-- END SIDEBAR -->
      <!-- BEGIN PAGE -->  
      <div id="main-content">
         <!-- BEGIN PAGE CONTAINER-->
         <div class="container-fluid">
            <!-- BEGIN PAGE HEADER-->   
            <div class="row-fluid">
               <div class="span12">
                   <!-- BEGIN THEME CUSTOMIZER-->
                   <div id="theme-change" class="hidden-phone">
                       <i class="icon-cogs"></i>
                        <span class="settings">
                            <span class="text">主题颜色:</span>
                            <span class="colors">
                                <span class="color-default" data-style="default"></span>
                                <span class="color-green" data-style="green"></span>
                                <span class="color-gray" data-style="gray"></span>
                                <span class="color-purple" data-style="purple"></span>
                                <span class="color-red" data-style="red"></span>
                            </span>
                        </span>
                   </div>
                   <!-- END THEME CUSTOMIZER-->
                  <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                   <div>
                   <marquee direction="right" 
                    	 scrollamount="3" width="48%">	                  	
                   <h3 class="page-title">
                   	！&nbsp;您&nbsp;迎&nbsp;欢&nbsp;港&nbsp;之&nbsp;星&nbsp;星
              
                   </h3>
                   </marquee>
                    <marquee direction="left" 
                    	 scrollamount="3" width="49%">	                  	
                   <h3 class="page-title">
                   	星&nbsp;星&nbsp;之&nbsp;港&nbsp;欢&nbsp;迎&nbsp;您&nbsp;！
              
                   </h3>
                   </marquee>
                   </div>
                   <ul class="breadcrumb">
                       <li>
                           <a href="#">首页</a>
                           <span class="divider">/</span>
                       </li>                      
                       <li class="active">
                           作品中心
                       </li>
                       <li class="pull-right search-wrap">
                           <form action="search_result.html" class="hidden-phone">
                               <div class="input-append search-input-area">
                                   <input class="" id="appendedInputButton" type="text">
                                   <button class="btn" type="button"><i class="icon-search"></i> </button>
                               </div>
                           </form>
                       </li>
                   </ul>
                   <!-- END PAGE TITLE & BREADCRUMB-->
               </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            <div class="row-fluid">
                <!--BEGIN METRO STATES-->
                <div class="metro-nav">
                	
                	<div class="metro-nav-block nav-block-orange ">
                        <a data-original-title="" href="#">
                       <!--   <i class="icon-bar-chart"></i>-->
                            <img src="img/logo7.png" />
                            <div class="info"></div>									
							
                            <div style="margin-top:20px">简介：星星之火，可以燎原。</div>              
                        </a>
                    </div>
                  
                   <c:forEach items="${requestScope.list}" var="item"
							varStatus="status">
							<div class="metro-nav-block nav-block-orange">
								<a data-original-title=""
									href="download.action?linkfilename=D:${item.linkPath }&dawnloadCount=${item.dawnloadCount }&id=${item.id }"> <img
									alt='不显示此类型文件' src='${item.linkPath }' style="max-height: 80% !important;
　　　　width: auto !important; max-width: 80% border-radius: 2px;" />
									<div class="info">+ ${item.dawnloadCount }</div>									
									<div class="status">${item.name }.${item.type }（点击下载）</div>
									
								</a>
							</div>
						</c:forEach>
                  
                   <div class="metro-nav-block nav-block-orange double ">
                        <a data-original-title="" href="#">
                       <!--   <i class="icon-bar-chart"></i>-->
                            <img src="img/zhankangzhan.png" />
                            <div class="info" style="color: orange;">网站所有者</div>									
							            
                        </a>
                    </div>
                </div>
               
                <div class="space10"></div>
                <!--END METRO STATES-->
            </div>
           
            <div class="row-fluid">
                <div class="span7">
                    <!--BEGIN GENERAL STATISTICS-->
                    <div class="widget orange">
                        <div class="widget-title">
                            <h4><i class="icon-tasks"></i> 通用数据 </h4>
                         <span class="tools">
                            <a href="javascript:;" class="icon-chevron-down"></a>
                            <a href="javascript:;" class="icon-remove"></a>
                         </span>
                            <div class="update-btn">
                                <a href="javascript:;" class="btn update-easy-pie-chart"><i class="icon-repeat"></i>更新</a>
                            </div>
                        </div>
                        <div class="widget-body">
                            <div class="text-center">
                                <div class="easy-pie-chart">
                                    <div class="percentage success" data-percent="55"><span>55</span>%</div>
                                    <div class="title">New visits</div>
                                </div>
                                <div class="easy-pie-chart">
                                    <div class="percentage" data-percent="46"><span>46</span>%</div>
                                    <div class="title">Bounce rate</div>
                                </div>
                                <div class="easy-pie-chart">
                                    <div class="percentage" data-percent="92"><span>92</span>%</div>
                                    <div class="title">Server load</div>
                                </div>
                                <div class="easy-pie-chart">
                                    <div class="percentage" data-percent="84"><span>752</span>MB</div>
                                    <div class="title">Used RAM</div>
                                </div>
                                 <div class="easy-pie-chart">
                                    <div class="percentage" data-percent="84"><span style="color: red">${fn:length(list)}</span>File</div>
                                    <div class="title">FileCounts:</div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    <!--END GENERAL STATISTICS-->
                </div>
                <div class="span5">
                    <!--BEGIN GENERAL STATISTICS-->
                    <div class="widget purple">
                        <div class="widget-title">
                            <h4><i class="icon-tasks"></i> 统计数据 </h4>
                         <span class="tools">
                            <a href="javascript:;" class="icon-chevron-down"></a>
                            <a href="javascript:;" class="icon-remove"></a>
                         </span>
                        </div>
                        <div class="widget-body">
                            <div class="row-fluid">
                                <div class="text-center">
                         
						<div class="sparkline">
                                        <div id="metro-sparkline-type1"></div>
                                        <div class="sparkline-tittle">dloadcounts</div>
                                    </div>
						
                                    <div class="sparkline">
                                        <div id="metro-sparkline-type2"></div>
                                        <div class="sparkline-tittle">Server Load</div>
                                    </div>
                                    <div class="sparkline">
                                        <div id="metro-sparkline-type3"></div>
                                        <div class="sparkline-tittle">Network Load</div>
                                    </div>
                                    <div class="sparkline">
                                        <div id="metro-sparkline-type4"></div>
                                        <div class="sparkline-tittle">Visit Load</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--END GENERAL STATISTICS-->
                </div>
            </div>
            <div class="row-fluid">
                 <div class="span6">
                     
                 </div>
             </div>
            
      </div>
      <!-- END PAGE -->  
   </div>
   <!-- END CONTAINER -->

   <!-- BEGIN FOOTER -->
   <div id="footer">
       <marquee direction="left" >	
                   <h6 class="page-title">
                     网站声明：本网站由本人结合EasyUI和SSM框架设计和开发而来， 主要功能是上传文件到服务器，
                     访客可以浏览和下载文件，但不得用于其它目的，其它功能待续！
                   </h6>
                   </marquee>
   </div>
   <!-- END FOOTER -->

   <!-- BEGIN JAVASCRIPTS -->
   <!-- Load javascripts at bottom, this will reduce page load time -->
   <script src="js/jquery-1.8.3.min.js"></script>
   <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
   <script type="text/javascript" src="assets/jquery-slimscroll/jquery-ui-1.9.2.custom.min.js"></script>
   <script type="text/javascript" src="assets/jquery-slimscroll/jquery.slimscroll.min.js"></script>
   <script src="assets/fullcalendar/fullcalendar/fullcalendar.min.js"></script>
   <script src="assets/bootstrap/js/bootstrap.min.js"></script>

   <!-- ie8 fixes -->
   <!--[if lt IE 9]>
   <script src="js/excanvas.js"></script>
   <script src="js/respond.js"></script>
   <![endif]-->

   <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js" type="text/javascript"></script>
   <script src="js/jquery.sparkline.js" type="text/javascript"></script>
   <script src="assets/chart-master/Chart.js"></script>
   <script src="js/jquery.scrollTo.min.js"></script>


   <!--common script for all pages-->
   <script src="js/common-scripts.js"></script>

   <!--script for this page only-->

   <script src="js/easy-pie-chart.js"></script>
   <script src="js/sparkline-chart.js"></script>
   <script src="js/home-page-calender.js"></script>
   <script src="js/home-chartjs.js"></script>

   <!-- END JAVASCRIPTS -->   
</body>
<!-- END BODY -->
</html>
