<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<html lnag="ko">
<head>
    <meta charset="UTF-8">
 <meta name="description" content="Sona Template">
 <meta name="keywords" content="Sona, unica, creative, html">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <meta http-equiv="X-UA-Compatible" content="ie=edge">
 <title>공지사항</title>

 <!-- Google Font -->
<link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="../process/css/bootstrap.min.css">
<link rel="stylesheet" href="../process/css/font-awesome.min.css">
<link rel="stylesheet" href="../process/css/elegant-icons.css">
<link rel="stylesheet" href="../process/css/flaticon.css">
<link rel="stylesheet" href="../process/css/owl.carousel.min.css">
<link rel="stylesheet" href="../process/css/owl.carousel2.min.css">
<link rel="stylesheet" href="../process/css/nice-select.css">
<link rel="stylesheet" href="../process/css/jquery-ui.min.css">
<link rel="stylesheet" href="../process/css/magnific-popup.css">
<link rel="stylesheet" href="../process/css/slicknav.min.css">
<link rel="stylesheet" href="../process/css/style.css">
<link rel="stylesheet" href="../process/css/style2.css">
<link rel="stylesheet" href="../process/css/login.css" type="text/css">
<link rel="stylesheet" href="../process/css/notice.css" type="text/css">
<link rel="stylesheet" href="../process/css/signup.css">
</head>
<%
	String error=(String) request.getAttribute("error");
	if(error !=null){
		if(error.equals("1")){
%>
<script>
	alert("동일한 이름의 펜션의 존재합니다 다시확인해주세요.");
</script>
<%
		}else if (error.equals("2")){
%>
<script>
	alert("오류가 발생했습니다 다시 시도해 주세요.");
</script>
<%
		}
	}
%>
<body>
<jsp:include page="../nav.jsp"></jsp:include>  
	<!-- Breadcrumb Section Begin -->
    <div class="breadcrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <h2>Sign Up</h2>
                        <div class="bt-option">
                            <a href="../index">Home</a>
                            <span>회원가입</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section End -->  
       <!-- header -->
       <div id="header">
           <a href="#" target="_blank" title="home"><img src="../process/img/logo.png" id="logo"></a>
       </div>
       <!-- wrapper -->
       <div id="wrapper">
           <!-- content-->
           <form action="signup" id="content" method="post">
               <!-- ID -->
               <div>
                   <h3 class="join_title">
                       <label for="id">아이디</label>
                   </h3>
                   <span class="box int_id">
                       <input type="text" id="userid" name="userid" class="int" maxlength="20" required>
                       <span class="step_url">@naver.com</span>
                   </span>
                   <span class="error_next_box"></span>
               </div>

               <!-- PW1 -->
               <div>
                   <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                   <span class="box int_pass">
                       <input type="text" id="pw" name="pw" class="int" maxlength="20" required>
                       <span id="alertTxt">사용불가</span>
                       <img src="../process/img/m_icon_pass.png" id="pswd1_img1" class="pswdImg">
                   </span>
                   <span class="error_next_box"></span>
               </div>

               <!-- PW2 -->
               <div>
                   <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
                   <span class="box int_pass_check">
                       <input type="text" id="pswd2" class="int" maxlength="20" required>
                       <img src="../process/img/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                   </span>
                   <span class="error_next_box"></span>
               </div>

               <!-- NAME -->
               <div>
                   <h3 class="join_title"><label for="name">이름</label></h3>
                   <span class="box int_name">
                       <input type="text" id="name" name="name" class="int" maxlength="20" required>
                   </span>
                   <span class="error_next_box"></span>
               </div>

               <!-- BIRTH -->
               <div>
                   <h3 class="join_title"><label for="yy">생년월일</label></h3>

                   <div id="bir_wrap">
                       <!-- BIRTH_YY -->
                       <div id="bir_yy">
                           <span class="box">
                               <input type="text" id="yy" name="yy" class="int" maxlength="4" placeholder="년(4자)" required>
                           </span>
                       </div>

                       <!-- BIRTH_MM -->
                       <div id="bir_mm">
                           <span class="box">
                               <select id="mm" name="mm" class="sel" required>
                                   <option value="">월</option>
                                   <option value="01">1</option>
                                   <option value="02">2</option>
                                   <option value="03">3</option>
                                   <option value="04">4</option>
                                   <option value="05">5</option>
                                   <option value="06">6</option>
                                   <option value="07">7</option>
                                   <option value="08">8</option>
                                   <option value="09">9</option>                                    
                                   <option value="10">10</option>
                                   <option value="11">11</option>
                                   <option value="12">12</option>
                               </select>
                           </span>
                       </div>

                       <!-- BIRTH_DD -->
                       <div id="bir_dd">
                           <span class="box">
                               <input type="text" id="dd" name="dd" class="int" maxlength="2" placeholder="일" required>
                           </span>
                       </div>

                   </div>
                   <span class="error_next_box"></span>    
               </div>

               <!-- GENDER -->
               <div>
                   <h3 class="join_title"><label for="gender">성별</label></h3>
                   <span class="box gender_code">
                       <select id="gender" name="gender" class="sel" required>
                           <option value="">성별</option>
                           <option value="M">남자</option>
                           <option value="F">여자</option>
                       </select>                            
                   </span>
                   <span class="error_next_box">필수 정보입니다.</span>
               </div>

               <!-- EMAIL -->
               <div>
                   <h3 class="join_title"><label for="email">본인확인 이메일<span class="optional">(선택)</span></label></h3>
                   <span class="box int_email">
                       <input type="text" id="email" name="email" class="int" maxlength="100" placeholder="선택입력">
                   </span>
                   <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>    
               </div>

               <!-- MOBILE -->
               <div>
                   <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                   <span class="box int_mobile">
                       <input type="tel" id="phone" name="phone" class="int" maxlength="16" placeholder="전화번호 입력" required>
                   </span>
                   <span class="error_next_box"></span>    
               </div>
               <!-- JOIN BTN-->
               <div class="btn_area">
               	<input type="submit" value="가입하기" id="btnJoin">
               </div>
           </form>
           <!-- content-->
       </div>
       <!-- wrapper -->
<jsp:include page="../footer.jsp"></jsp:include>
<!-- Js Plugins -->
<!--  <script type="text/javascript" src="../process/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../process/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../process/js/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="../process/js/jquery.nice-select.min.js"></script>
<script type="text/javascript" src="../process/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../process/js/jquery.slicknav.js"></script>
<script type="text/javascript" src="../process/js/owl.carousel.min.js"></script>
<script type="text/javascript" src="../process/js/main.js"></script>
<script type="text/javascript" src="../process/js/signup.js"></script>-->

<script type="text/javascript" src="<c:url value ="/process/js/jquery-3.3.1.min.js"/>"></script>
<script type="text/javascript" src="<c:url value ="/process/js/bootstrap.min.js"/>"></script>
<script type="text/javascript" src="<c:url value ="/process/js/jquery.magnific-popup.min.js"/>"></script>
<script type="text/javascript" src="<c:url value ="/process/js/jquery.nice-select.min.js"/>"></script>
<script type="text/javascript" src="<c:url value ="/process/js/jquery-ui.min.js"/>"></script>
<script type="text/javascript" src="<c:url value ="/process/js/jquery.slicknav.js"/>"></script>
<script type="text/javascript" src="<c:url value ="/process/js/owl.carousel.min.js"/>"></script>
<script type="text/javascript" src="<c:url value ="/process/js/main.js"/>"></script>
<script type="text/javascript" src="<c:url value ="/process/js/main.js"/>">"></script>
<script type="text/javascript" src="<c:url value ="/process/js/signup.js"/>"></script>
</body>
    
</html>