<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>星星之港*上传状态</title>
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
  
        
        <div>${requestScope.message }</div>
        
          <div class="metro single-size terques">                       
           <a href="${pageContext.request.contextPath}/jsp/upload.jsp" class="social-link" >
                <i class=" icon-long-arrow-left"></i>
                <span>继续上传</span>
            </a>
        </div>  
       
       
        <div class="metro double-size blue">
            <a href="#" class="social-link" >
                <span class="photo"><img src="${requestScope.linkPath }" alt="文件" style="width:70px;height=70px;" />
               
                ${requestScope. storagename }
                </span>
               <%--  <span>${requestScope.storagename }</span>  --%>
                <span>${requestScope.messagestatus }</span>              
            </a>
        </div>
        
         <div class="metro single-size terques login">                             
               <a href="${pageContext.request.contextPath }/index.action" class="social-link" >
               <i class=" icon-long-arrow-right"></i>
                <span> 前往首页</span>
            </a>
        </div>
        
    </div>
</body>
<!-- END BODY -->
</html>