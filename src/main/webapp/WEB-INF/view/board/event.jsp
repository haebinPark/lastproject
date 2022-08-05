<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
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
</head>
<body>
	<jsp:include page="../nav.jsp"></jsp:include>
	
	<!-- Breadcrumb Section Begin -->
    <div class="breadcrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <h2>Event</h2>
                        <div class="bt-option">
                            <a href="../index">Home</a>
                            <span>이벤트</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section End -->
    <!-- 컨텐츠 시작 -->
<div class="sub-con-wrap" id="container">
    <div class="board-section">
        <div class="container-dein">
            <!-- <h2 class="board-tit">공지사항</h2> -->
            <!-- 게시판 검색 -->
            <div class="board-search-box">
                <div class="board-cnt">
                    Total : <strong>4</strong>
                </div>

                <div class="board-inp">
                    <input type="hidden" name="searchDiv" id="searchDiv" value="">
                    <select class="i-select" name="searchType" id="searchType">
                        <option value="">전체</option>
                        <option value="01">제목</option>
                        <option value="03">내용</option>
                    </select>
                    <input type="text" class="i-text" id="searchText" name="searchText" placeholder="검색어를 입력하세요."><a
                        href="#" id="searchList"><img src="../process/img/btn-board-search.png" alt="search"></a>
                </div>
            </div>
            <div class="tbl_list01 tbl_wrap mb30">
                <table summary="">
                    <caption></caption>
                    <colgroup>
                        <col style="width:10%;">
                        <col style="">
                        <col style="width:10%;">
                        <col style="width:15%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>제목</th>
                            <th>조회</th>
                            <th>작성일</th>
                        </tr>
                    </thead>
                    <tbody id="noticeList">
                        <tr></tr>
                        <td class="td_num">4</td>
                        <td class="td_subject"><a href="#">[중요] Sona 비즈니스 개인정보처리방침 변경 안내</a></td>
                        <td class="td_date">125</td>
                        <td class="td_date">2022-07-19</td>
                        </tr>
                        <tr>
                            <td class="td_num">3</td>
                            <td class="td_subject">
                                <a href="#">[중요] 계열사간 Kiosk/RMS/GRMS사업양수도에 따른 개인정보 이전 안내 </a></td>
                            <td class="td_date">111</td>
                            <td class="td_date">2022-07-19</td>
                        </tr>
                        <tr>
                            <td class="td_num">2</td>
                            <td class="td_subject"><a href="#">[당첨자 발표] Sona 비즈니스 홈페이지 오픈기념, 퀴즈 이벤트!</a></td>
                            <td class="td_date">126</td>
                            <td class="td_date">2022-07-19</td>
                        </tr>
                        <tr>
                            <td class="td_num">1</td>
                            <td class="td_subject"><a href="#">[Grand Open] Sona 비즈니스에 오신 것을 환영합니다!</a></td>
                            <td class="td_date">344</td>
                            <td class="td_date">2022-07-19</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <ul class="pagination" id="Paging">
                <a class="prev2" nextpage="">처음</a>
                <a class="prev"nextpage="0">이전</a>
                <strong>1</strong>
                <a class="next" nextpage="">다음</a>
                <a class="next2" nextpage="">끝</a>
           </ul>
        </div>
    </div>
</div>
<!-- 컨텐츠 끝 -->
<jsp:include page="../footer.jsp"></jsp:include>

    <!-- Js Plugins -->
    <script type="text/javascript" src="../process/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="../process/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../process/js/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript" src="../process/js/jquery.nice-select.min.js"></script>
	<script type="text/javascript" src="../process/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="../process/js/jquery.slicknav.js"></script>
	<script type="text/javascript" src="../process/js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="../process/js/main.js"></script>
</body>
</html>