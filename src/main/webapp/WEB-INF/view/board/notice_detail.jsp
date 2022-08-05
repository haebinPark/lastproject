<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 조회</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="../process/css/board.css" type="text/css">
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
                            <a href="../index">Home</a>
                            <span>공지사항</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section End -->
	<!-- notice_detail start -->
	<div class="notice_detail container" style="margin-bottom: 80px; margin-top:70px;">
    	<div class="py-4 d-flex flex-row" style="padding-top: 0 !important;">
    		<h5><span class="fa fa-check-square-o" aria-hidden="true">&nbsp;</span><b>공지사항</b> | </h5><span class="pl-2" style="font-size: 16px;">Notice</span>
    	</div>
		<div class="title_container">
			<h2>${dto.notice_title }</h2>
			<div class="title_items">
				<div class="title_item">
					<fmt:parseDate value="${dto.notice_date}" pattern="yyyy-MM-dd" var="date"/>
					<span class="title">작성일자</span> <span><fmt:formatDate pattern="yyyy-MM-dd" value="${date}"/></span>
				</div>
				<div class="title_item">
					<span class="title">조회수</span><span>${dto.notice_hit}</span>
				</div>
			</div>
			<hr>
			<div>
				<span style="font-size: 15px">${dto.notice_content}</span>
		</div>
		<div class="button" align="end">
			<a href="list" class="btn btn-primary">되돌아가기</a>
		</div>
	</div>
	</div>
	<!-- notice_detail end -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>