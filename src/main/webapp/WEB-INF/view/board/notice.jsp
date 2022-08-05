<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>
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
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap"
	rel="stylesheet">

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
<link rel="stylesheet" href="../process/css/board.css" type="text/css">
</head>
<body>
	<jsp:include page="../nav.jsp"></jsp:include>
	<!-- Breadcrumb Section Begin -->
	<div class="breadcrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-text">
						<h2>Notice</h2>
						<div class="bt-option">
							<a href="../index">Home</a> <span>공지사항</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb Section End -->
	<!-- 컨텐츠 시작 -->
	<div class="notice_admin container"
		style="margin-bottom: 80px; margin-top: 70px;">
		<div class="py-4 d-flex flex-row" style="padding-top: 0 !important;">
			<h5>
				<span class="fa fa-check-square-o" aria-hidden="true">&nbsp;</span><b>공지사항</b>
				|
			</h5>
			<span class="pl-2">Notice</span>
		</div>
		<div class="container" style="padding: 0;">
			<table class="table">
				<tr class="table_header">
					<th>게시물번호</th>
					<th>제목</th>
					<th>등록일</th>
					<th>조회수</th>
				</tr>
				<c:forEach var="notice" items="${list}">
					<tr>
						<td style="text-align: center;">${notice.notice_code }</td>
						<td style="text-align: 5 center;"><a
							href="detail?notice_code=${notice.notice_code}&page=${pageDto.cri.page}">${notice.notice_title }</a></td>
						<fmt:parseDate value="${notice.notice_date }"
							pattern="yyyy-MM-dd HH:mm:ss" var="date" />
						<td style="text-align: center;"><fmt:formatDate
								pattern="yyyy-MM-dd HH:mm:ss" value="${date}" /></td>
						<td style="text-align: center;">${notice.notice_hit }</td>
					</tr>
				</c:forEach>
			</table>
		</div>

		<!-- 검색키워드 -->
		<div align="center" class="search_container"
			style="margin-top: 70px !important; margin-bottom: 30px;">
			<form method="post" action="#">
				<table>
					<tr>
						<td><select class="search_select" name="search_item">
								<option value="notice_title">제목</option>
								<option value="notice_content">본문 내용</option>
						</select></td>
						<td class="search"><input class="search_content" type="text"
							name="text" /> <input type="submit" class="search_btn"
							value="검색" /></td>
					</tr>
				</table>
			</form>
		</div>
		<c:if test="${empty userid}">
			<div class="add_btn" align="right">
				<a type="hidden" href="notice_add" class="btn btn-primary">게시글 등록</a>
			</div>
		</c:if>
		<c:if test="${!empty admin}">
			<div class="add_btn" align="right">
				<a href="notice_add" class="btn btn-primary">게시글 등록</a>
			</div>
		</c:if>
	</div>
	<!-- 컨텐츠 끝 -->
	<jsp:include page="../footer.jsp"></jsp:include>

	<!-- Js Plugins -->
	<script type="text/javascript" src="../process/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="../process/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="../process/js/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript"
		src="../process/js/jquery.nice-select.min.js"></script>
	<script type="text/javascript" src="../process/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="../process/js/jquery.slicknav.js"></script>
	<script type="text/javascript" src="../process/js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="../process/js/main.js"></script>
</body>
</html>