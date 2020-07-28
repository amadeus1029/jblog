<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JBlog</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jblog.css">

</head>
<body>
	<div id="center-content">

		<c:import url="/WEB-INF/views/includes/main-header.jsp"></c:import>
		<!--메인 해더 자리 -->
		
		
		<form id="search-form" action="${pageContext.request.contextPath}/" method="post">
			<fieldset>
				<input type="text" name="keyword" value="${blog.searchVo.keyword}">
				<button id="btnSearch" type="submit" >검색</button>
			</fieldset>
			
			<fieldset>
				<label for="rdo-title">블로그 제목</label>
				<input id="rdo-title" type="radio" name="option" value="blogTitle" ${param.option eq "blogTitle" || param.option eq null ? "checked" : ""}>
				
				<label for="rdo-userName">블로거 이름</label> 
				<input id="rdo-userName" type="radio" name="option" value="userName" ${param.option eq "userName" ? "checked" : ""}>
			</fieldset>
		</form>
		<c:if test="${blog ne null}">
			<c:if test="${fn:length(blog.blogList) eq 0}">
				<p class="notice">검색 결과가 없습니다</p>
			</c:if>
			<table id="blogList">
				<colgroup>
					<col style="width:80px;">
					<col style="width:350px;">
					<col style="width:100px;">
					<col style="width:100px;">
				</colgroup>

				<c:forEach items="${blog.blogList}" var="blogVo">
					<tr>
						<td class="logo-section">
							<c:if test="${blogVo.logoFile == 'default'}">
								<img class="logo-image" src="${pageContext.request.contextPath}/assets/images/spring-logo.jpg">
							</c:if>
							<c:if test="${blogVo.logoFile != 'default'}">
								<img class="logo-image" src="${pageContext.request.contextPath}/upload/${blogVo.logoFile}">
							</c:if>
						</td>
						<td class="title">
							<a target="_blank" href="${pageContext.request.contextPath}/${blogVo.id}">${blogVo.blogTitle}</a>
						</td>
						<td class="name">${blogVo.userName}(${blogVo.id})</td>
						<td class="date">${blogVo.joinDate}</td>
					</tr>
				</c:forEach>
			</table>
			<c:import url="/WEB-INF/views/includes/blogPaging.jsp"></c:import>
		</c:if>
		<c:import url="/WEB-INF/views/includes/main-footer.jsp"></c:import>
		<!-- 메인 푸터  자리-->
	
	
	</div>
	<!-- //center-content -->
</body>
</html>