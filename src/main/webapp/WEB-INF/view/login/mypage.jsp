<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>마이페이지</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="../process/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../process/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../process/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="../process/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="../process/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="../process/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="../process/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="../process/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="../process/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="../process/css/style.css" type="text/css">
</head>
	<body>
		<jsp:include page="../nav.jsp"></jsp:include>
		<!-- Breadcrumb Section Begin -->
	    <div class="breadcrumb-section">
	        <div class="container">
	            <div class="row">
	                <div class="col-lg-12">
	                    <div class="breadcrumb-text">
	                        <h2>Mypage</h2>
	                        <div class="bt-option">
	                            <a href="../index">Home</a>
	                            <span>마이페이지</span>
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
	                <div class="col-lg-4 col-md-6">
	                    <div class="room-item">
	                        <div class="ri-text" style="border-top: 1px solid #ebebeb;">
	                            <h4 style="font-weight: bold;">예약내역 조회</h4>
	                            <table>
	                                <tbody>
	                                    <tr>
	                                        <td>펜션 예약 내역을 조회합니다.</td>
	                                    </tr>
	                                </tbody>
	                            </table>
	                            <a href="/lastproject_spring/room/reservation_detail" class="primary-btn">페이지 이동</a>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-lg-4 col-md-6">
	                    <div class="room-item">
	                        <div class="ri-text" style="border-top: 1px solid #ebebeb;">
	                            <h4 style="font-weight: bold;">회원정보 수정</h4>
	                            <table>
	                                <tbody>
	                                    <tr>
	                                        <td>회원정보를 수정합니다.</td>
	                                    </tr>
	                                </tbody>
	                            </table>
	                            <a href="javascript:alert('준비중입니다.');" onfocus="this.blur()" class="primary-btn">페이지 이동</a>
	                        </div>
	                    </div>
	                </div>
	                 <div class="col-lg-4 col-md-6">
	                    <div class="room-item">
	                        <div class="ri-text" style="border-top: 1px solid #ebebeb;">
	                            <h4 style="font-weight: bold;">관리자 페이지</h4>
	                            <table>
	                                <tbody>
	                                    <tr>
	                                        <td>관리자 페이지로 이동합니다.</td>
	                                    </tr>
	                                </tbody>
	                            </table>
	                           <a href="javascript:alert('준비중입니다.');" onfocus="this.blur()" class="primary-btn">페이지 이동</a>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </section>
	    <!-- Rooms Section End -->
	    <jsp:include page="../footer.jsp"></jsp:include>
	
	    <!-- Js Plugins -->
	    <script type="text/javascript" src="./process/js/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="./process/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="./process/js/jquery.magnific-popup.min.js"></script>
		<script type="text/javascript" src="./process/js/jquery.nice-select.min.js"></script>
		<script type="text/javascript" src="./process/js/jquery-ui.min.js"></script>
		<script type="text/javascript" src="./process/js/jquery.slicknav.js"></script>
		<script type="text/javascript" src="./process/js/owl.carousel.min.js"></script>
		<script type="text/javascript" src="./process/js/main.js"></script>
	</body>
</html>