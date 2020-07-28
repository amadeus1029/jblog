<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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

        <div id="content">
            <ul id="admin-menu" class="clearfix">
                <li class="tabbtn"><a href="${pageContext.request.contextPath}/${blogVo.id}/admin/basic">기본설정</a></li>
                <li class="tabbtn selected"><a
                        href="${pageContext.request.contextPath}/${blogVo.id}/admin/cate">카테고리</a></li>
                <li class="tabbtn"><a href="${pageContext.request.contextPath}/${blogVo.id}/admin/writeForm">글작성</a></li>
            </ul>
            <!-- //admin-menu -->

            <div id="admin-content">

                <table id="admin-cate-list">
                    <colgroup>
                        <col style="width: 50px;">
                        <col style="width: 200px;">
                        <col style="width: 100px;">
                        <col>
                        <col style="width: 50px;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>카테고리명</th>
                            <th>포스트 수</th>
                            <th>설명</th>
                            <th>삭제</th>
                        </tr>
                    </thead>
                    <tbody id="cateList">
                        <!-- 리스트 영역 -->
                    </tbody>
                </table>

                <table id="admin-cate-add">
                    <colgroup>
                        <col style="width: 100px;">
                        <col style="">
                    </colgroup>
                    <tr>
                        <td class="t">카테고리명</td>
                        <td><input type="text" name="name" value=""></td>
                    </tr>
                    <tr>
                        <td class="t">설명</td>
                        <td><input type="text" name="desc"></td>
                    </tr>
                </table>

                <div id="btnArea">
                    <button id="btnAddCate" class="btn_l" type="submit" onclick="addCategory()">카테고리추가</button>
                </div>

            </div>
            <!-- //admin-content -->
        </div>
        <!-- //content -->

        <c:import url="/WEB-INF/views/includes/blog-footer.jsp"></c:import>
        <!-- 개인블로그 푸터 -->


    </div>
    <!-- //wrap -->
    <script type="text/javascript">
        $(document).ready(function () {
            fetchCategoryList();
        }); //레디함수 종료

        function fetchCategoryList() {
            $.ajax({
                url: "${pageContext.request.contextPath}/${blogVo.id}/admin/cateList",
                type: "post",
                dataType: "json",
                success: function (cateList) {
                    for (i = 0; i < cateList.length; i++) {
                        render(cateList[i]);
                    }
                },
                error: function (XHR, status, error) {
                    console.error(status + ":" + error);
                }
            });
        }

        function render(cateVo) {
            var list = $("#cateList");
            list.append(
                "<tr>"+
                "<td>"+cateVo.cateNo+"</td>"+
                "<td>"+cateVo.cateName+"</td>"+
                "<td>"+cateVo.postCount+"</td>"+
                "<td>"+cateVo.description+"</td>"+
                "<td>"+"<img src='${pageContext.request.contextPath}/assets/images/delete.jpg' onclick='deleteCategory($(this))' data-no='"+cateVo.cateNo+"'>"+"</td>"+
                "</tr>"
            );
        }


        function addCategory() {
            var table = $("table#admin-cate-add");
            var name = table.find("input[name='name']");
            var nameVal = name.val();
            var desc = table.find("input[name='desc']");
            var descVal = desc.val();
            var categoryVo = {
                cateName : nameVal,
                description: descVal
            }

            if(nameVal === "" || nameVal == null) {
                alert("카테고리명을 입력해주세요");
                return false;
            }

            $.ajax({
                url: "${pageContext.request.contextPath}/${blogVo.id}/admin/addCategory",
                type: "post",
                contentType: "application/json",
                data: JSON.stringify(categoryVo),
                dataType: "json",
                success: function (category) {
                    //화면에 카테고리 추가
                    $("#cateList").prepend(
                      "<tr>" +
                            "<td>"+category.cateNo+"</td>"+
                            "<td>"+category.cateName+"</td>"+
                            "<td>"+"0"+"</td>"+
                            "<td>"+category.description+"</td>"+
                            "<td>"+"<img src='${pageContext.request.contextPath}/assets/images/delete.jpg' onclick='deleteCategory($(this))' data-no='"+category.cateNo+"'>"+"</td>"+
                      "<tr>"
                    );
                    //인풋 비워주기
                    name.val("");
                    desc.val("");
                },
                error: function (XHR, status, error) {
                    console.error(status + ":" + error);
                }
            });
        }

        function deleteCategory(target) {
            var cateNo = target.attr("data-no");
            var categoryVo = {
                id : "${authUser.id}",
                cateNo : cateNo
            };
            $.ajax({
                url: "${pageContext.request.contextPath}/${blogVo.id}/admin/deleteCategory",
                type: "post",
                contentType: "application/json",
                data: JSON.stringify(categoryVo),
                dataType: "json",
                success: function (result) {
                    if(result) {
                        target.parents('tr').remove();
                        alert("삭제에 성공했습니다")
                    } else {
                        alert("포스트 수가 0인 카테고리만 삭제하실 수 있습니다");
                    }
                },
                error: function (XHR, status, error) {
                    console.error(status + ":" + error);
                }
            });
        }
    </script>
</body>


</html>