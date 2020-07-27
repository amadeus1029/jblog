<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JBlog</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jblog.css">

</head>
<body>
	<div id="center-content">
		
		<!-- 메인해더 -->
		<c:import url="/WEB-INF/views/includes/main-header.jsp"></c:import>
		
		<h1>잘못된 접근입니다.</h1>

		<c:import url="/WEB-INF/views/includes/main-footer.jsp"></c:import>
		<!-- 메인 푸터  자리-->
	</div>

</body>
</html>