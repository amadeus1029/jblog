<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<div id="paging">
    <ul>
        <li>
            <a class="${post.currPage eq 1 ? 'off':''}" href="${pageContext.request.contextPath }/${blogVo.id}?page=1&cateNo=${post.cateNo}">처음으로</a>
        </li>
        <li>
            <a class="${post.currPage le post.pageNum ? 'off':''}" href="${pageContext.request.contextPath }/${blogVo.id}?page=${post.beginPage-10}&cateNo=${post.cateNo}">◀</a>
        </li>
        <c:forEach begin="${post.beginPage}" end="${post.endPage}" var="pageNum">
            <li class="${post.currPage eq pageNum ? 'active':''}">
                <a href="${pageContext.request.contextPath }/${blogVo.id}?page=${pageNum}&cateNo=${post.cateNo}">${pageNum}</a>
            </li>
        </c:forEach>
        <li>
            <a class="${post.totalPage - post.beginPage lt post.pageNum ? 'off':'' }" href="${pageContext.request.contextPath }/${blogVo.id}?page=${post.endPage+1}&cateNo=${post.cateNo}">▶</a>
        </li>
        <li>
            <a class="${post.currPage eq post.totalPage ? 'off':'' }" href="${pageContext.request.contextPath }/${blogVo.id}?page=${post.totalPage}&cateNo=${post.cateNo}">마지막으로</a>
        </li>
    </ul>


    <div class="clear"></div>
</div>

