<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JBlog</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jblog.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
</head>

<body>
    <div id="wrap">

        <!-- 개인블로그 해더 -->
        <c:import url="/WEB-INF/views/includes/blog-header.jsp"></c:import>

        <div id="content" class="clearfix">
            <div id="profilecate_area">
                <div id="profile">
                    <c:if test="${blogVo.logoFile == 'default'}">
                        <img id="proImg" src="${pageContext.request.contextPath}/assets/images/spring-logo.jpg">
                    </c:if>
                    <c:if test="${blogVo.logoFile != 'default'}">
                        <img id="proImg" src="${pageContext.request.contextPath}/upload/${blogVo.logoFile}">
                    </c:if>
                    <div id="nick">${blogVo.userName}(${blogVo.id})님</div>
                </div>
                <div id="cate">
                    <div class="text-left">
                        <strong>카테고리</strong>
                    </div>
                    <ul id="cateList" class="text-left">
                        <c:forEach items="${cateList}" var="cateVo">
                            <li class="${cateVo.cateNo eq postVo.cateNo ? 'on' : ''}"><a
                                    href="${pageContext.request.contextPath}/${blogVo.id}?cateNo=${cateVo.cateNo}">${cateVo.cateName}</a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <!-- profilecate_area -->

            <div id="post_area">
                <c:if test="${not empty postVo}">
                    <div id="postBox" class="clearfix">
                        <div id="postTitle" class="text-left"><strong>${postVo.postTitle}</strong></div>
                        <div id="postDate" class="text-left"><strong>${postVo.regDate}</strong></div>
                        <div id="postNick">${blogVo.userName}(${blogVo.id})님</div>
                    </div>
                    <!-- //postBox -->

                    <div id="post">
                            ${fn:replace(postVo.postContent, newLine, "<br>") }
                    </div>
                    <c:if test="${authUser ne null}">
                        <table id="addComment">
                            <colgroup>
                                <col style="width: 110px;">
                                <col style="width: 600px;">
                                <col style="width: 80px;">
                            </colgroup>
                            <tr>
                                <td><span class="name">${authUser.userName}</span></td>
                                <td><input type="text" name="cmtContent" value=""></td>
                                <td>
                                    <button type="button" id="addCommentBtn" onclick="addComment()">저장</button>
                                </td>
                            </tr>
                        </table>
                    </c:if>
                    <table id="commentList">
                        <colgroup>
                            <col style="width: 110px;">
                            <col style="width: 480px;">
                            <col style="width: 150px;">
                            <col style="width: 50px;">
                        </colgroup>
                        <c:forEach items="${commentList}" var="commentVo">
                            <tr data-no="${commentVo.cmtNo}">
                                <td><span class="name">${commentVo.userName}</span></td>
                                <td>${commentVo.cmtContent}</td>
                                <td>${commentVo.regDate}</td>
                                <td>
                                    <c:if test="${commentVo.userNo eq authUser.userNo}">
                                        <button type="button" class="delete" onclick="deleteComment(${commentVo.cmtNo})">X</button>
                                    </c:if>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                    <!-- //post -->
                </c:if>

                <c:if test="${empty postVo}">
                    <div id="postBox" class="clearfix">
                        <div id="postTitle" class="text-left"><strong>등록된 글이 없습니다.</strong></div>
                        <div id="postDate" class="text-left"><strong></strong></div>
                        <div id="postNick"></div>
                    </div>
                    <!-- //postBox -->

                    <div id="post">
                    </div>
                    <!-- //post -->
                </c:if>

                <div id="list">
                    <div id="listTitle" class="text-left"><strong>${postVo.cateName} 카테고리의 글</strong></div>
                    <table>
                        <colgroup>
                            <col style="">
                            <col style="width: 20%;">
                        </colgroup>
                        <c:forEach items="${post.postList}" var="vo">
                            <tr>
                                <td class="text-left"><a class="${vo.postNo eq postVo.postNo ? 'on' : ''}"
                                                         href="${pageContext.request.contextPath}/${blogVo.id}?cateNo=${vo.cateNo}&page=${param.page}&postNo=${vo.postNo}">${vo.postTitle}</a>
                                </td>
                                <td class="text-right">${vo.regDate}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
                <!-- //list -->
                <c:import url="/WEB-INF/views/includes/postPaging.jsp"></c:import>
            </div>
            <!-- //post_area -->


        </div>
        <!-- //content -->
        <div class=></div>
        <c:import url="/WEB-INF/views/includes/blog-footer.jsp"></c:import>


    </div>
    <!-- //wrap -->
    <script type="text/javascript">
        <c:if test="${authUser ne null}">

        function addComment() {
            var table = $("#addComment");
            var cmtContent = table.find("input[name='cmtContent']");
            var cmtContentVal = cmtContent.val();
            var commentVo = {
                postNo: ${postVo.postNo},
                userNo: ${authUser.userNo},
                cmtContent: cmtContentVal
            };
            $.ajax({
                url: "${pageContext.request.contextPath}/${blogVo.id}/addComment",
                type: "post",
                contentType: "application/json",
                data: JSON.stringify(commentVo),
                dataType: "json",
                success: function (comment) {
                    //코멘트리스트에 추가
                    $("table#commentList").prepend(
                        "<tr data-no='"+comment.cmtNo+"'>"+
                            "<td><span class='name'>"+comment.userName+"</span></td>"+
                            "<td>"+comment.cmtContent+"</td>"+
                            "<td>"+comment.regDate+"</td>"+
                            "<td><button type='button' class='delete' onclick='deleteComment("+comment.cmtNo+")'>X</button></td>"+
                        "</tr>"
                    );

                    //텍스트 입력창 비우기
                    cmtContent.val("");
                },
                error: function (XHR, status, error) {
                    console.error(status + ":" + error);
                }
            });
        }

        function deleteComment(no) {
            var commentVo = {
                cmtNo: no,
                userNo: ${authUser.userNo}
            }
            $.ajax({
                url: "${pageContext.request.contextPath}/${blogVo.id}/deleteComment",
                type: "post",
                contentType: "application/json",
                data: JSON.stringify(commentVo),
                dataType: "json",
                success: function (result) {
                    if(result) {
                        //코멘트리스트에서 삭제
                        $("#commentList").find("tr[data-no='"+no+"']").remove();

                        //삭제 완료 알림
                        alert("코멘트가 삭제되었습니다!");
                    } else {
                        alert("삭제에 실패했습니다!");
                    }

                },
                error: function (XHR, status, error) {
                    console.error(status + ":" + error);
                }
            });
        }

        </c:if>
    </script>
</body>
</html>