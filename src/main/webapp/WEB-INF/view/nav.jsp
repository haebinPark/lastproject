<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>nav</title>
	<linkhref="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
	<script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>
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
	<link rel="stylesheet" href="../process/css/login.css">
</head>
<body>
	<!-- Page Preloder -->
	<!-- Offcanvas Menu Section Begin -->
	<c:if test="${empty userid}">
	<div class="offcanvas-menu-overlay"></div>
	<div class="canvas-open">
		<i class="icon_menu"></i>
	</div>
	<div class="offcanvas-menu-wrapper">
		<div class="canvas-close">
			<i class="icon_close"></i>
		</div>
		<div class="header-configure-area">
			<a href="#" class="bk-btn">바로 예약하기</a>
		</div>
		<nav class="mainmenu mobile-menu">
			<ul>
				<li class="active"><a href="index.jsp">Home</a></li>
				<li><a href="rooms.jsp">펜션목록</a></li>
				<li><a href="login.jsp">예약내역</a></li>
				<li><a href="#">더보기</a>
					<ul class="dropdown">
						<li><a href="notice.jsp">공지사항</a></li>
						<li><a href="javascript:alert('준비중입니다.');" onfocus="this.blur()">이벤트</a></li>
						<li><a href="inquiry.jsp">1:1문의</a></li>
					</ul>
				</li>
			</ul>
		</nav>
		<div id="mobile-menu-wrap"></div>
		<div class="top-social"></div>
		<ul class="top-widget">
			<li><i class="fa fa-phone"></i>010-1234-5678</li>
			<li><i class="fa fa-envelope"></i> reservation@gmail.com</li>
		</ul>
	</div>
	<!-- Offcanvas Menu Section End -->
	<!-- Header Section Begin -->
	<header class="header-section">
		<div class="menu-item">
			<div class="container">
				<div class="row">
					<div class="col-lg-2">
						<div class="logo">
							<a href="<c:url value='/index'/>">
								<img src="./process/img/logo.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-lg-10">
						<div class="nav-menu">
							<nav class="mainmenu">
								<ul>
									<a href="https://culture.changwon.go.kr/index.changwon?menuId=12120000#js" target="_blank"><i class="icon_map" aria-hidden="true"></i></a>
									<li class="active"><a href="<c:url value='/index'/>"><li>Home</li></a></li>
									<!-- <li><a href="https://culture.changwon.go.kr/index.changwon?menuId=12120000#js" target="_blank">Map</a></li> -->
									<li><a href="<c:url value='/pensionList?page=1'/>">펜션목록</a></li>
									<li><a href="<c:url value='/login/login'/>">예약내역</a></li>
									<li><a href="#">더보기</a>
										<ul class="dropdown">
											<li><a href="<c:url value='/board/list'/>">공지사항</a></li>
											<li><a href="javascript:alert('준비중입니다.');" onfocus="this.blur()">이벤트</a></li>
											<li><a href="javascript:alert('준비중입니다.');" onfocus="this.blur()">1:1문의</a></li>
											<!-- <li><a href="<c:url value='/board/inquiry'/>">1:1문의</a></li> -->
										</ul>
									</li>
									<li><a href="<c:url value='/login/login'/>">로그인</a>
									<li><a href="<c:url value='/pensionList?page=1'/>" class="bk-btn" style="color: #5392f9; font-weight: bold;">바로 예약하기 &gt;</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	</c:if>
	<!-- Page Preloder -->
	<!-- Offcanvas Menu Section Begin -->
	<c:if test="${!empty userid && empty admin}">
	<div class="offcanvas-menu-overlay"></div>
	<div class="canvas-open">
		<i class="icon_menu"></i>
	</div>
	<div class="offcanvas-menu-wrapper">
		<div class="canvas-close">
			<i class="icon_close"></i>
		</div>
		<div class="header-configure-area">
			<a href="#" class="bk-btn">바로 예약하기</a>
		</div>
		<nav class="mainmenu mobile-menu">
			<ul>
				<li class="active"><a href="index.jsp">Home</a></li>
				<li><a href="rooms.jsp">펜션목록</a></li>
				<li><a href="login.jsp">예약내역</a></li>
				<li><a href="#">더보기</a>
					<ul class="dropdown">
						<li><a href="notice.jsp">공지사항</a></li>
						<li><a href="event.jsp">이벤트</a></li>
						<li><a href="inquiry.jsp">1:1문의</a></li>
					</ul>
				</li>
			</ul>
		</nav>
		<div id="mobile-menu-wrap"></div>
		<div class="top-social"></div>
		<ul class="top-widget">
			<li><i class="fa fa-phone"></i>010-1234-5678</li>
			<li><i class="fa fa-envelope"></i> reservation@gmail.com</li>
		</ul>
	</div>
	<!-- Offcanvas Menu Section End -->
	<!-- Header Section Begin -->
	<header class="header-section">
		<div class="menu-item">
			<div class="container">
				<div class="row">
					<div class="col-lg-2">
						<div class="logo">
							<a href="<c:url value='/index'/>">
								<img src="./process/img/logo.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-lg-10">
						<div class="nav-menu">
							<nav class="mainmenu">
								<ul>
									<a href="https://culture.changwon.go.kr/index.changwon?menuId=12120000#js" target="_blank"><i class="icon_map" aria-hidden="true"></i></a>
									<li class="active"><a href="<c:url value='/index'/>"><li>Home</li></a></li>
									<li><a href="<c:url value='/pensionList?page=1'/>">펜션목록</a></li>
									<li><a href="#">예약내역</a>
										<ul class="dropdown">
											<li><a href="<c:url value='/reservation_detail'/>">예약내역 조회</a></li>
										</ul>
									</li>
									<li><a href="#">더보기</a>
										<ul class="dropdown">
											<li><a href="<c:url value='/board/list'/>">공지사항</a></li>
											<li><a href="javascript:alert('준비중입니다.');" onfocus="this.blur()">이벤트</a></li>
											<li><a href="javascript:alert('준비중입니다.');" onfocus="this.blur()">1:1문의</a></li>
											<li><a href="<c:url value='/login/mypage'/>">마이페이지</a></li>
										</ul>
									</li>
									<li><a href="<c:url value='/login/logout'/>">로그아웃</a>
									<li><a href="<c:url value='/pensionList?page=1'/>" class="bk-btn" style="color: #5392f9; font-weight: bold;">바로 예약하기 &gt;</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	</c:if>
	<c:if test="${!empty admin}">
	<div class="offcanvas-menu-overlay"></div>
	<div class="canvas-open">
		<i class="icon_menu"></i>
	</div>
	<div class="offcanvas-menu-wrapper">
		<div class="canvas-close">
			<i class="icon_close"></i>
		</div>
		<div class="header-configure-area">
			<a href="#" class="bk-btn">바로 예약하기</a>
		</div>
		<nav class="mainmenu mobile-menu">
			<ul>
				<li class="active"><a href="index.jsp">Home</a></li>
				<li><a href="rooms.jsp">펜션목록</a></li>
				<li><a href="login.jsp">예약내역</a></li>
				<li><a href="#">더보기</a>
					<ul class="dropdown">
						<li><a href="notice.jsp">공지사항</a></li>
						<li><a href="event.jsp">이벤트</a></li>
						<li><a href="inquiry.jsp">1:1문의</a></li>
					</ul>
				</li>
			</ul>
		</nav>
		<div id="mobile-menu-wrap"></div>
		<div class="top-social"></div>
		<ul class="top-widget">
			<li><i class="fa fa-phone"></i>010-1234-5678</li>
			<li><i class="fa fa-envelope"></i> reservation@gmail.com</li>
		</ul>
	</div>
	<!-- Offcanvas Menu Section End -->
	<!-- Header Section Begin -->
	<header class="header-section">
		<div class="menu-item">
			<div class="container">
				<div class="row">
					<div class="col-lg-2">
						<div class="logo">
							<a href="<c:url value='/index'/>">
								<img src="./process/img/logo.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-lg-10">
						<div class="nav-menu">
							<nav class="mainmenu">
								<ul>
									<a href="https://culture.changwon.go.kr/index.changwon?menuId=12120000#js" target="_blank"><i class="icon_map" aria-hidden="true"></i></a>
									<li class="active"><a href="<c:url value='/index'/>"><li>Home</li></a></li>
									<li><a href="<c:url value='/pensionList?page=1'/>">펜션목록</a></li>
									<li><a href="#">관리자목록</a>
										<ul class="dropdown">
											<li><a href="<c:url value='/register'/>">펜션등록</a></li>
											<li><a href="<c:url value='/reservation_detail'/>">예약목록</a></li>
										</ul>
									</li>
									<li><a href="#">더보기</a>
										<ul class="dropdown">
											<li><a href="<c:url value='/board/list'/>">공지사항</a></li>
											<li><a href="javascript:alert('준비중입니다.');" onfocus="this.blur()">이벤트</a></li>
											<li><a href="javascript:alert('준비중입니다.');" onfocus="this.blur()">1:1문의</a></li>
											<li><a href="<c:url value='/login/mypage'/>">마이페이지</a></li>
										</ul>
									</li>
									<li><a href="<c:url value='/login/logout'/>">로그아웃</a>
									<li><a href="<c:url value='/pensionList?page=1'/>" class="bk-btn" style="color: #5392f9; font-weight: bold;">바로 예약하기 &gt;</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	</c:if>	
</body>
</html>