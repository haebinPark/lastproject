<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="../process/css/register.css">
<title>펜션 등록하기</title>
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
			}else if(error.equals("2")){
	%>
	<script>
		alert("등록에 실패했습니다.");
	</script> 
	<%
			}
		}
	%>
<body>
	<jsp:include page="../nav.jsp"></jsp:include>

	<%
	String PENSIONID = request.getParameter("PENSIONID");
	%>
	<div class="breadcrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-text">
						<h2>Reservation</h2>
						<div class="bt-option">
							<a href="../index">Home</a> <span>펜션등록</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="join">
		<div class="container">
			<div class="card-body" style="padding-top: 70px; padding-bottom: 120px;">
				<form class="form-signin " action="pension" name="add-form"
					method="post" enctype="multipart/form-data">
					<div class="py-4 d-flex flex-row" style="padding-top: 0 !important;">
    					<h5><span class="fa fa-check-square-o" aria-hidden="true">&nbsp;</span><b>펜션등록</b> | </h5><span class="pl-2">Reservation</span>
    				</div>
					<div class="row align-items-center" style="margin-bottom: 20px">
						<div class="col-md-2">펜션명</div>
						<div class="col-md-4">
							<input type="text" class="form-control" name="name"
								id="name" placeholder="펜션 이름을 입력해주세요." autofocus required>
						</div>
						<div class="col-md-2">펜션 요금</div>
						<div class="col-md-4">
							<input type="number" class="form-control" name="price"
								id="price" placeholder="요금을 입력해주세요." autofocus required min="0">
						</div>
					</div>
					<div class="row align-items-center" style="margin-bottom: 20px">
						<div class="col-md-2">객실 개수</div>
						<div class="col-md-4 d-flex align-items-center">
							<input type="number" class="form-control" name="roomnumber" required min="0">
						</div>
						<div class="col-md-2">최대 인원수</div>
						<div class="col-md-4">
							<input type="number" class="form-control" name="maxpeople"
								id="max-count" placeholder="객실별 최대 인원수" autofocus required min="0"> 
						</div>
					</div>
					<div class="row align-items-center" style="margin-bottom: 20px">
						<div class="col-md-2">주소</div>
						<div class="col-md-4 d-flex align-items-center">
							<input type="text" class="form-control" name="address" required>
						</div>
						<div class="col-md-2">사장님 한 마디</div>
						<div class="col-md-4">
							<input type="text" class="form-control" name="comments"
								id="max-count" placeholder="" autofocus value="">
						</div>
					</div>					
					<div class="row align-items-center" style="margin-bottom: 20px">
						<div class="col-md-2">입실</div>
						<div class="col-md-4 d-flex align-items-center">
							<input type="time" class="form-control" name="checkin">
						</div>
						<div class="col-md-2">퇴실</div>
						<div class="col-md-4 d-flex align-items-center">
							<input type="time" class="form-control" name="checkout" >
						</div>
					</div>
					<div class="row align-items-center" style="margin-bottom: 20px">
						<div class="col-md-2">외부편의시설</div>
						<div class="col-md-10" style="display: flex; width: 100%">
							<div style="width: 20%"><input type="checkbox" name="service" value="무료Wi-Fi">무료 Wi-Fi</div>
							<div style="width: 20%"><input type="checkbox" name="service" value="유선인터넷">유선인터넷</div>
							<div style="width: 20%"><input type="checkbox" name="service" value="사우나">사우나</div>
							<div style="width: 20%"><input type="checkbox" name="service" value="스파">스파</div>
							<div style="width: 20%"><input type="checkbox" name="service" value="야외수영장">야외 수영장</div>	
						</div>
					</div>
					<div class="row align-items-center" style="margin-bottom: 20px">
						<div class="col-md-2"></div>
						<div class="col-md-10" style="display: flex; width: 100%">					
							<div style="width: 20%"><input type="checkbox" name="service" value="세탁 서비스">세탁 서비스</div>
							<div style="width: 20%"><input type="checkbox" name="service" value="여행 가방 보관">여행 가방 보관</div>
							<div style="width: 20%"><input type="checkbox" name="service" value="흡연 공간">흡연 공간</div>
							<div style="width: 20%"><input type="checkbox" name="service" value="운동공간">운동 공간</div>
							<div style="width: 20%"><input type="checkbox" name="service" value="레스토랑">레스토랑</div>
						</div>
					</div>
					<div class="row align-items-center" style="margin-bottom: 20px">
						<div class="col-md-2"></div>
						<div class="col-md-10" style="display: flex; width: 100%">					
							<div style="width: 20%"><input type="checkbox" name="service" value="바">바</div>
							<div style="width: 20%"><input type="checkbox" name="service" value="조식포함">조식 포함</div>
							<div style="width: 20%"><input type="checkbox" name="service" value="금연숙소">금연 숙소</div>
							<div style="width: 20%"><input type="checkbox" name="service" value="발레파킹">발레파킹</div>
							<div style="width: 20%"><input type="checkbox" name="service" value="전기차 충전소">전기차 충전소</div>
						</div>
					</div>
					<hr>
					<div class="row align-items-center" style="margin-bottom: 20px">
						<div class="col-md-2">내부편의시설</div>
						<div class="col-md-10" style="display: flex; width: 100%">
						 	<div style="width: 20%"><input type="checkbox" name="inservice" value="모닝콜">모닝콜</div>
							<div style="width: 20%"><input type="checkbox" name="inservice" value="목욕 가운">목욕 가운</div>			
							<div style="width: 20%"><input type="checkbox" name="inservice" value="샤워실">샤워실</div>
							<div style="width: 20%"><input type="checkbox" name="inservice" value="선풍기">선풍기</div>
							<div style="width: 20%"><input type="checkbox" name="inservice" value="세면도구">세면도구</div>						
						</div>
					</div>
					<div class="row align-items-center" style="margin-bottom: 20px">
						<div class="col-md-2"></div>
						<div class="col-md-10" style="display: flex; width: 100%">					
							<div style="width: 20%"><input type="checkbox" name="inservice" value="소파">소파</div>
							<div style="width: 20%"><input type="checkbox" name="inservice" value="수건">수건</div>
							<div style="width: 20%"><input type="checkbox" name="inservice" value="슬리퍼">슬리퍼</div>
							<div style="width: 20%"><input type="checkbox" name="inservice" value="에어컨">에어컨</div>
							<div style="width: 20%"><input type="checkbox" name="inservice" value="일일 청소 서비스">일일 청소 서비스</div>
						</div>
					</div>
					<div class="row align-items-center" style="margin-bottom: 20px">
						<div class="col-md-2"></div>
						<div class="col-md-10" style="display: flex; width: 100%">					
							<div style="width: 20%"><input type="checkbox" name="inservice" value="전화기">전화기</div>
							<div style="width: 20%"><input type="checkbox" name="inservice" value="커피/차 메이커">커피/차 메이커</div>
							<div style="width: 20%"><input type="checkbox" name="inservice" value="헤어드라이어">헤어드라이어</div>
							<div style="width: 20%"><input type="checkbox" name="inservice" value="컴퓨터">컴퓨터</div>
							<div style="width: 20%"><input type="checkbox" name="inservice" value="전용 수영장">전용 수영장</div>
						</div>
					</div>
					<div class="row align-items-center" style="margin-bottom: 20px">
						<div class="col-md-2"></div>
						<div class="col-md-10" style="display: flex; width: 100%">					
							<div style="width: 20%"><input type="checkbox" name="inservice" value="발코니/테라스">발코니/테라스</div>
							<div style="width: 20%"><input type="checkbox" name="inservice" value="객실 내 안전 금고">객실 내 안전 금고</div>				
						</div>
					</div>																																	
					<div class="row align-items-center"></div>
					<div class="filebox preview-image row">
						<div class="col-md-2">이미지 파일</div>
						<div class="col-md-10" style="height: 100px;">
							<label for="ex_filename-1" class="btn btn-secondary">업로드</label>
							<input type="file" class="upload-hidden-1" name="image"
								id="ex_filename-1">
						</div>
					</div>
					<div class="button col-12">
						<button type="submit" class="form-control col-2 btn btn-info"
							style="float: right; background: #5392f9;" onclick="iamport()">객실등록</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />

	<!-- 버튼 클릭 시 등록이 완료되었습니다.
	<script>
		function iamport() {
			alert('객실 등록이 완료되었습니다');
		}
	</script> -->
</body>
</html>