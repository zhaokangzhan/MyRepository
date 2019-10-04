<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>星星之港*登录中心</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="Mosaddek" name="author" />
   <link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
   <link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
   <link href="${pageContext.request.contextPath }/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
   <link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet" />
   <link href="${pageContext.request.contextPath }/css/style-responsive.css" rel="stylesheet" />
   <link href="${pageContext.request.contextPath }/css/style-default.css" rel="stylesheet" id="style_color" />
<style>
	
	.photo img{transform: scale(1,1); transition: all 0.6s; }
 .social-link:hover img{
      -webkit-transform:scale(3,3);
      z-index: 5;
}
</style>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="lock">
    <div class="lock-header">
        <!-- BEGIN LOGO -->
        <a class="center" id="logo" href="${pageContext.request.contextPath }/index.action">
            <img class="center" alt="星星之港" src="${pageContext.request.contextPath }/img/logo7.png">
        </a>
        <!-- END LOGO -->
        
    </div>
    
    <div class="login-wrap">
    <div style="color: red;">${requestScope.message }</div>
        <div class="metro single-size red">
            <div class="locked">
               
               
                
                <a href="${pageContext.request.contextPath}/jsp/upload.jsp
                " class="social-link">
                 <i class="icon-lock"></i>
                 <span>后台管理</span>
            </a>
            </div>
        </div>
        
        <form action="${pageContext.request.contextPath }/login.action" method="post"> 
        
            
        <div class="metro double-size green">     
                <div class="input-append lock-input">
                    <input type="text" class="" name="pnumber" placeholder="账号（手机号）">
                </div>
            
        </div>
        <div class="metro double-size yellow">
            
                <div class="input-append lock-input">
                    <input type="password" class="" name="password" placeholder="密码（注册密码）">
                </div>
            
        </div>
        <div class="metro single-size terques login">
            
                <button type="submit" class="btn login-btn">
                    登录
                    <i class=" icon-long-arrow-right"></i>
                </button>
           
        </div>
         </form>
        <div class="metro double-size red">
            <a href="#" class="social-link">
                <span class="photo"><img src="${pageContext.request.contextPath }/img/weixin.jpg" alt="客服微信" style="width:80px;height=80px;" /></span>
                <span>客服微信</span>
            </a>
        </div>
        <div class="metro single-size navy-blue">
            <a href="#" class="social-link">
                <i class="icon-google-plus-sign"></i>
                <span>Google 登录</span>
            </a>
        </div>
        
        <div class="metro single-size purple">
            <a href="#" class="social-link">
                <i class="icon-skype"></i>
                <span>Skype 登录</span>
            </a>
        </div>
        <div class="metro double-size blue">
            <a href="#" class="social-link" >
                <span class="photo"><img src="${pageContext.request.contextPath }/img/qq2.jpg" alt="客服微信" style="width:80px;" /></span>
                <span>客服QQ</span>
            </a>
        </div>
        <div class="login-footer">
            <div class="remember-hint pull-left">
                <input type="checkbox" id=""> 记住密码
            </div>
            <div class="forgot-hint pull-right">
                <a id="forget-password" class="" href="javascript:;">忘记密码?</a>
            </div>
        </div>
    </div>
</body>
<!-- END BODY -->
</html>