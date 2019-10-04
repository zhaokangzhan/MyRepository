<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	数据：${requestScope.list}



	<select placeholder="用户类型" name="custSource">
		<option value="">--请选择--</option>
		<c:forEach items="${requestScope.list}" var="item">
			<option value="${item.role}">${item.role }
			</option>
		</c:forEach>
	</select>
</body>
</html>