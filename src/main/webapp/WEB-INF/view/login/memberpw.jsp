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
</head>
<body>
	<jsp:include page="../nav.jsp"></jsp:include>
    <div class="wrap">
        <form class="login" action="memberpw1" method="post">
            <h2>비밀번호 찾기</h2>
            <div class="login_id">
                <h4>이름</h4>
                <span>
                	<input type="text" name="userid" id="userid" placeholder="아이디를 입력하세요." required>
                </span>
                <span class="error_next_box" style="margin-left: 20px; color: red; margin-top:5px;"></span>
            </div>
            <div class="login_pw">
                <h4>이메일</h4>
                <span>
                	<input type="text" name="email" id="email" placeholder="이메일을 입력하세요." required>
                </span>
                <span class="error_next_box" style="margin-left: 20px; color: red; margin-top:5px;"></span>
            </div>
            <div class="login_etc">
                <div class="forgot_pw">
                    <a href="../login/login" onfocus="this.blur()">로그인 하기 ></a>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="../login/signup">회원가입 ></a>
                </div>
            </div>
            <div class="submit">
                <input type="submit" value="비밀번호 찿기">
            </div>
        </form>
    </div>
    <jsp:include page="../footer.jsp"></jsp:include>
    <script type="text/javascript" src="<c:url value ="../process/js/memberpw.js"/>"></script>
</body>
</html>