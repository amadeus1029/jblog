<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JBlog</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jblog.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>

</head>
<body>
    <div id="center-content">

        <c:import url="/WEB-INF/views/includes/main-header.jsp"></c:import>
        <!-- 메인 해더 -->


        <div>
            <form id="joinForm" method="post" action="${pageContext.request.contextPath}/user/join">
                <table>
                    <colgroup>
                        <col style="width: 100px;">
                        <col style="width: 170px;">
                        <col style="">
                    </colgroup>
                    <tr>
                        <td><label for="txtId">아이디</label></td>
                        <td><input id="txtId" type="text" name="id"></td>
                        <td>
                            <button id="btnIdCheck" type="button" onclick="idChk();">아이디체크</button>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td id="tdMsg" colspan="2"></td>
                    </tr>
                    <tr>
                        <td><label for="txtPassword">패스워드</label></td>
                        <td colspan="2"><input id="txtPassword" type="password" name="password" value=""></td>
                    </tr>
                    <tr>
                        <td><label for="txtUserName">이름</label></td>
                        <td colspan="2"><input id="txtUserName" type="text" name="userName" value=""></td>
                    </tr>
                    <tr>
                        <td><span>약관동의</span></td>
                        <td colspan="3">
                            <input id="chkAgree" type="checkbox" name="agree" value="y">
                            <label for="chkAgree">서비스 약관에 동의합니다.</label>
                        </td>
                    </tr>
                </table>
                <div id="btnArea">
                    <button id="btnJoin" class="btn" type="submit">회원가입</button>
                </div>

            </form>

        </div>

        <c:import url="/WEB-INF/views/includes/main-footer.jsp"></c:import>
        <!-- 메인 푸터  자리-->

    </div>
    <script type="text/javascript">
        $(document).ready(function () {

            //아이디 중복체크 후 아이디 변경하여 입력할 시 중복체크 다시 하도록 검사결과 리셋
            $("input#txtId").on("keyup",function () {
                idCheck = false;
                $("td#tdMsg").text("");
            })

            $("#joinForm").on("submit",function () {
                console.log(idCheck);
                //id값 비었는지 체크
                if($("input#txtId").val() == "" || $("input#txtId").val() == null ) {
                    alert("아이디를 입력해주세요");
                    return false;
                }

                //중복체크 했는지 체크
                if(!idCheck) {
                    alert("아이디 중복체크를 해주세요");
                    return false;
                }
                //password값 비었는지 체크
                if($("input#txtPassword").val() == "" || $("input#txtPassword").val() == null ) {
                    alert("패스워드를 입력해주세요");
                    return false;
                }
                //이름값 비었는지 체크
                if($("input#txtUserName").val() == "" || $("input#txtUserName").val() == null ) {
                    alert("이름을 입력해주세요");
                    return false;
                }
                //약관동의했는지 체크
                if(!$("input#chkAgree").is(":checked")) {
                    alert("약관에 동의해 주세요");
                    return false;
                }
            });
        })//레디함수 종료
        var idCheck = false;
        function idChk() {
            var id = $("input[name='id']").val();
            var userVo = {
                id: id
            };
            $.ajax({
                url: "${pageContext.request.contextPath}/user/idChk",
                type: "post",
                contentType: "application/json",
                data: JSON.stringify(userVo),
                dataType: "json",
                success: function (result) {
                    idCheck = result;
                    if(result) {
                        $("td#tdMsg").text("사용할 수 있는 아이디 입니다.");
                    } else {
                        $("td#tdMsg").text("사용할 수 없는 아이디 입니다.");
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