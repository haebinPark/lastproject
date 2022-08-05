<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="DTO.TBL_RESERVATION"%>
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
                        <h2>Reservation details check</h2>
                        <div class="bt-option">
                            <a href="../index">Home</a>
                            <span>예약내역</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section End -->
    <!-- 컨텐츠 시작 -->
    <div class="notice_admin container" style="margin-bottom: 80px; margin-top:70px;">
    	<div class="py-4 d-flex flex-row" style="padding-top: 0 !important;">
    		<h5><span class="fa fa-check-square-o" aria-hidden="true">&nbsp;</span><b>예약내역 조회</b> | </h5><span class="pl-2">Reservation details check</span>
    	</div>
        <div class="container" style="padding:0;">
            <table class="table">
                <tr class="table_header">
                    <th style="text-align: center;">예약번호</th>
                    <th style="text-align: center;">숙소이름</th>
                    <th style="text-align: center;">숙박기간</th>
                    <th style="text-align: center;">예약자명</th>
                    <th style="text-align: center;">숙박일수</th>
                    <th style="text-align: center;">숙박요금</th>
                </tr>
                <%
               	 	List<TBL_RESERVATION> list= (List<TBL_RESERVATION>)request.getAttribute("reservationlist");
                	for(int i = 0; i<list.size(); i++){
                		TBL_RESERVATION dto = list.get(i);
                %>
                <tr style="border-bottom: 1px solid #e5e5e5;">
                	<td style="text-align: center;">P<%=dto.getReservationnum()%></td>
                	<td style="text-align: center;"><%=dto.getRoomname() %></td>
                    <td style="text-align: center;"><%=dto.getStarttime() %> ~ <%=dto.getDeadline()%> (<%=dto.getDay() %>일간)</td>
                    <td style="text-align: center;"><%=dto.getName()%></td>
                    <td style="text-align: center;"><%=dto.getDay() %></td>
                    <td style="text-align: center;"><%=dto.getTotalprice() %>원</td>
                </tr>
                <%
                	}
                %>
            </table>
        </div>
    </div>
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