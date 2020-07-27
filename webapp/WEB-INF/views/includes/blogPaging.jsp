<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<div id="paging">
    <ul>
        <li>
            <a class="${blog.currPage eq 1 ? 'off':''}" href="${pageContext.request.contextPath }/search?page=1&option=${blog.searchVo.option}&keyword=${blog.searchVo.keyword}">처음으로</a>
        </li>
        <li>
            <a class="${blog.currPage le blog.pageNum ? 'off':''}" href="${pageContext.request.contextPath }/search?page=${post.beginPage-10}&option=${blog.searchVo.option}&keyword=${blog.searchVo.keyword}">◀</a>
        </li>
        <c:forEach begin="${blog.beginPage}" end="${blog.endPage}" var="pageNum">
            <li class="${blog.currPage eq pageNum ? 'active':''}">
                <a href="${pageContext.request.contextPath }/search?page=${pageNum}&option=${blog.searchVo.option}&keyword=${blog.searchVo.keyword}">${pageNum}</a>
            </li>
        </c:forEach>
        <li>
            <a class="${blog.totalPage - blog.beginPage lt blog.pageNum ? 'off':'' }" href="${pageContext.request.contextPath }/search?page=${blog.endPage+1}&option=${blog.searchVo.option}&keyword=${blog.searchVo.keyword}">▶</a>
        </li>
        <li>
            <a class="${blog.currPage eq blog.totalPage ? 'off':'' }" href="${pageContext.request.contextPath }/search?page=${blog.totalPage}&option=${blog.searchVo.option}&keyword=${blog.searchVo.keyword}">마지막으로</a>
        </li>
    </ul>


    <div class="clear"></div>
</div>

