<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="DTO.TBL_PENSION"%>
<%@ page import="java.util.*"%>
<%
int[] pageing = (int[]) request.getAttribute("page");
int start = pageing[0];
int end = pageing[1];
int nowpage = pageing[2];
int total = pageing[3];
int np_start = (nowpage - 1) * 6;
int np_end = nowpage * 6;
if (np_end > total) {
	np_end = total;
}
int lastpage = 1;
if (total % 6 == 0) {
	lastpage = (total / 6);
} else {
	lastpage = (total / 6) + 1;
}

int apage = nowpage + 1;
if (nowpage > 3) {
	apage = 4;
}
if (nowpage > end - 3) {
	apage = 6 - (end - nowpage);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="description" content="Sona Template">
<meta name="keywords" content="Sona, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>펜션목록</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="../css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="../css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="../css/flaticon.css" type="text/css">
<link rel="stylesheet" href="../css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="../css/nice-select.css" type="text/css">
<link rel="stylesheet" href="../css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="../css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="../css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="../css/style.css" type="text/css">
</head>
<body>
	<jsp:include page="../nav.jsp"></jsp:include>
	<!-- Breadcrumb Section Begin -->
	<div class="breadcrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-text">
						<h2>List Of Pensions</h2>
						<div class="bt-option">
							<a href="../index">Home</a> <span>펜션목록</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb Section End -->

	<!-- Rooms Section Begin -->
	<section class="rooms-section spad">
		<div class="container">
			<div class="row">
				<%
					List<TBL_PENSION> list = (List<TBL_PENSION>) request.getAttribute("members");
					for (int i = np_start; i < np_end; i++) {
						TBL_PENSION dto = list.get(i);
				%>
				<div class="col-lg-4 col-md-6">
					<div class="room-item">
						<img src="<c:url value="/process/img/"/><%=dto.getImage()%>"alt="" />
						<div class="ri-text">
							<h4><%=dto.getName()%></h4>
							<h3><%=dto.getPrice()%><span>/원</span>
							</h3>
							<table>
								<tbody>
									<tr>
										<td class="r-o">기본정보:</td>
										<td>입실 : <%=dto.getCheckin().substring(0, 5)%> | 퇴실 : <%=dto.getCheckout().substring(0, 5)%></td>
									</tr>
									<tr>
										<td class="r-o">환불규정:</td>
										<td>취소, 환불시 수수료가 발생</td>
									</tr>
									<tr>
										<td class="r-o">공용시설</td>
										<td
											style="display: -webkit-box; text-overflow: ellipsis; -webkit-line-clamp: 2; -webkit-box-orient: vertical; overflow: hidden;"><%=dto.getService()%></td>
									</tr>
									<hr>
									<tr>
										<td class="r-o">실내시설</td>
										<td
											style="display: -webkit-box; text-overflow: ellipsis; -webkit-line-clamp: 2; -webkit-box-orient: vertical; overflow: hidden;"><%=dto.getInservice()%></td>
									</tr>
								</tbody>
							</table>
							<a href="detaills?pensionid=<%=dto.getPensionid()%>"
								class="primary-btn">More Details</a>
						</div>
					</div>
				</div>
				<%
				}
				%>
				<div class="col-lg-12">
					<div class="room-pagination">
						<a href="pensionList?page=1">첫페이지</a>
						<%
							for (int i = start; i <= end; i++) {
								if (i == nowpage) {
						%>
							<a href="pensionList?page=<%=i%>"><%=i%></a>
						<%
							} else {
						%>
							<a href="pensionList?page=<%=i%>"><%=i%></a>
						<%
								}
							}
						%>
						<a href="pensionList?page=<%=lastpage%>">마지막페이지</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Rooms Section End -->

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