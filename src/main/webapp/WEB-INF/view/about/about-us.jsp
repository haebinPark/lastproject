<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<%
		String error=request.getParameter("error");
		if(error !=null){
	%>
	<script>
		alert("로그인에 실패했습니다.");
	</script>
	<%
		}
	%>
<body>
	<jsp:include page="../nav.jsp"></jsp:include>
    <div class="wrap">
        <form class="login" action="login1" method="post">
            <h2>로그인</h2>
            <div class="login_id">
                <h4>아이디</h4>
                <input type="Id" name="userid" id="userid" placeholder="아이디를 입력하세요.">
            </div>
            <div class="login_pw">
                <h4>비밀번호</h4>
                <input type="password" name="pw" id="pw" placeholder="비밀번호를 입력하세요.">
            </div>
            <div class="login_etc">
                <div class="checkbox">
                    <input type="checkbox" name="remember" id="remember">  아이디·비밀번호 기억하기
                </div>
                <div class="forgot_pw">
                    <a href="javascript:alert('준비중입니다.');" onfocus="this.blur()">비밀번호 찾기 ></a>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="../login/signup">회원가입></a>
                </div>
            </div>
            <div class="submit">
                <input type="submit" value="로그인">
            </div>
        </form>
    </div>
    <jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>