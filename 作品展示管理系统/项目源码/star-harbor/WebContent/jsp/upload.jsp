<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>星星之港*文件上传</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="Mosaddek" name="author" />
<link
	href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/assets/font-awesome/css/font-awesome.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath }/css/style.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/css/style-responsive.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath }/css/style-default.css"
	rel="stylesheet" id="style_color" />
<script type="text/javascript" src="../js/jquery-tips.js"></script>
<script type="text/javascript" src="../js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<style>
.photo img {
	transform: scale(1, 1);
	transition: all 0.6s;
}

.social-link:hover img {
	-webkit-transform: scale(3, 3);
	z-index: 5;
}

.ordertdclass {
	hover: red;
}

.tdclass {
	text-align: center;
}
</style>
<script type="text/javascript">
	function fileType(obj) {
		var fileType = obj.value.substr(obj.value.lastIndexOf("."))
				.toLowerCase();//获得文件后缀名
		var filename = $("#YYZZFBSMJ").val();

		var strfileName = filename.substring(filename.lastIndexOf("\\") + 1);

		//var strFileName=filename.replace(/^.+?\([^\]+?)(.[^.\]*?)?$/gi,"$1");  //正则表达式获取文件名，不带后缀
		// var strFileName = filename.substring(filename.lastIndexOf("\\")+1); 
		var strFileName = strfileName.substring(0, strfileName.indexOf('.'));
		//alert("strFileName="+strFileName);

		//alert(strFileName);
		var filesize = obj.files[0].size / (1024 * 1024);

		if (filesize > 36.0) {
			alert('您所选文件超过限制大小（36.0M），本系统暂不支持大文件：');
			return false;
		}
		// alert('你选择的文件大小为：' + filesize + "M");
		if (fileType != '.gif' && fileType != '.png' && fileType != '.jpg'
				&& fileType != '.jpeg' && fileType != '.sb2'
				&& fileType != '.sprite2' && fileType != '.rar'
				&& fileType != '.zip' && fileType != '.ppt'
				&& fileType != '.doc' && fileType != '.pdf'
				&& fileType != '.excel' && fileType != '.pptx'
				&& fileType != '.xlsx' && fileType != '.docx'&& fileType != '.wmv'&& fileType != '.mp4') {
			alert('本系统暂不支持此类文件，请上传系统支持格式的文件');
			$(obj).tips({
				side : 3,
				msg : '请上传系统支持格式的文件',
				bg : '#AE81FF',
				time : 3
			});

			$(obj).val('');
			$("#filename").val('请上传系统支持格式的文件');
			return false;
		} else {
			var reader = new FileReader();
			reader.readAsDataURL(obj.files[0]);
			reader.onload = function(e) {
				$("#img").attr("src", this.result);
				$("#filename").val(strFileName);
			}
			$("#tu").show();
		}
	}
</script>

</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="lock">
	<div class="lock-header">
		<!-- BEGIN LOGO -->
		<a class="center" id="logo"
			href="${pageContext.request.contextPath }/index.action"> <img
			class="center" alt="星星之港"
			src="${pageContext.request.contextPath }/img/logo7.png">
		</a>
		<!-- END LOGO -->

	</div>

<div align="center">

	<h4>注意：文件不得超过36.0M，本系统不支持大文件！</h4>
	<h5>
		采用流的方式上传文件
		<c:if test="${sessionScope.username!=null&&sessionScope.username!=''}">    
				——当前操作人员：${sessionScope.username }（${sessionScope.pnumber }）			
			</c:if>
	</h5>
	<div>(支持上传文件类型.gif/.png/.jpg/.jpeg/.sb2/.sprite2/.rar/
	.zip/.ppt/.doc/.pdf/.excel/.pptx/.xlsx/.docx/.wmv/.mp4)</div>
	
	<div>
		<a href="${pageContext.request.contextPath }/index.action">《—《—回到首页
		</a>



	<c:if test="${sessionScope.username==null||sessionScope.username==''}">    
              
			您未登录，无法操作文件！&nbsp; <a
				href="${pageContext.request.contextPath }/jsp/login.jsp">前往登录—》—》
			</a>
		
	</c:if>
</div>
	   <div><span>${requestScope.messagestatus }</span></div>        

	

	<form name="serForm" action="/star-harbor/upload.action" method="post"
		enctype="multipart/form-data">
		<table>
			<tr>
				<td><input type="button" class="update" id="yyzz"
					value="浏览上传文件" onclick="$('#YYZZFBSMJ').click();"> <input
					type="file" name="pagefile" id="YYZZFBSMJ" style="display: none;"
					onchange="fileType(this)"></td>
			</tr>

			<tr>
				<td><span id="tu"
					<c:if test="${pd == null || pd.CACHET == '' || pd.CACHET == null}">style="display: none;"</c:if>>
						<img id="img" width="210" alt="此类型文件暂不支持预览！" />
				</span></td>
			</tr>

			<tr>
				<td><input type="text" id="filename" name="storagename"
					placeholder="请输入文件名"></td>
			</tr>
			<tr>
				<td><input type="text" name="author" placeholder="请输入作者"></td>
			</tr>
			<tr>
				<td><input type="text" name="pnumber" placeholder="请输入手机号（账号）"></td>
			</tr>
			<tr>
				<td><input type="text" name="money" placeholder="请输入价格，单位/元"></td>
			</tr>
			<tr>
				<td><input type="submit" value="上传文件" /></td>
			</tr>
		</table>
	</form>


</div>


</body>
<!-- END BODY -->
</html>