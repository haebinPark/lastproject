<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./process/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="./process/css/login.css" type="text/css">
 
    <!--카카오 sns 로그인 api-->
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<%
	String error=(String) request.getAttribute("error");
	if(error !=null){
%>
<script>
	alert("로그인에 실패했습니다.");
</script>
<%
	}
%> 
</head>
<body>
	<jsp:include page="../nav.jsp"></jsp:include>
    <div class="wrap">
        <form class="login" action="login1" method="post">
            <h2>로그인</h2>
            <div class="login_id">
                <h4>아이디</h4>
                <span>
                	<input type="text" name="userid" id="userid" placeholder="아이디를 입력하세요." required>
                </span>
                <span class="error_next_box" style="margin-left: 20px; color: red; margin-top:5px;"></span>
            </div>
            <div class="login_pw">
                <h4>비밀번호</h4>
                <span>
                	<input type="password" name="pw" id="pw" placeholder="비밀번호를 입력하세요." required>
                </span>
                <span class="error_next_box" style="margin-left: 20px; color: red; margin-top:5px;"></span>
            </div>
            <div class="login_etc">
                <div class="checkbox">
                    <input type="checkbox" name="remember" id="remember">  아이디·비밀번호 기억하기
                </div>
                <div class="forgot_pw">
                    <a href="../login/memberpw">비밀번호 찾기 ></a>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="../login/signup">회원가입 ></a>
                </div>
            </div>
            <div class="submit">
                <input type="submit" value="로그인">
                <ul>
                	<li onclick="kakaoLogin();" class="login" style="width: 100%;height: 100%;margin-top: 20px;margin-bottom: 0;background: #FEE500;border-radius: 0;">
                		<a href="javascript:void(0)"> <img src="../process/img/login/kakao_login_medium_narrow.png"></a>
                	</li>
				</ul>
            </div>
            <!-- <div class="form-group" style="height: 10%; margin-top: -5%;">
            <ul>
            	<li onclick="kakaoLogin();" class="login" style="width: 100%; height: 100%;">
            		<a href="javascript:void(0)"> <img src="../process/img/login/kakao_login_medium_narrow.png"></a>
            	</li>
			</ul>
			</div> -->
        </form>
    </div>
    <jsp:include page="../footer.jsp"></jsp:include>
    <script type="text/javascript" src="<c:url value ="../process/js/login.js"/>"></script>
    <script>
	<!-- 간편 로그인 카카오 스크립트 -->
	Kakao.init('de572fdeba656a65706e27aa1909ed46'); //발급받은 키 중 javascript키를 사용해준다.
	console.log(Kakao.isInitialized()); // sdk초기화여부판단
	//카카오로그인
	function kakaoLogin() {
		Kakao.Auth.login({
			success : function(response) {
				Kakao.API.request({
					url : '/v2/user/me',
					success : function(r) {
						var d = r.properties.nickname;
						location.href = "main.do?id=" + d;
					},
					fail : function(error) {
						console.log(error)
					},
				})
			},
			fail : function(error) {
				console.log(error)
			},
		})
	}
	$(function() {
		$(".btnRegister").click(function() {
			location.href = "registerView.do";
		});
	});
</script>
</body>
</html>