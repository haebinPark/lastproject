<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DTO.TBL_PENSION"%>
<%@ page import="java.util.*" %>
<%@ page import="java.time.*" %>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>펜션목록</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="../css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="../css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="../css/owl.carousel2.min.css" type="text/css">
    <link rel="stylesheet" href="../css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="../css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="../css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="../css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="../css/style.css" type="text/css">
    <link rel="stylesheet" href="../css/style2.css" type="text/css">
    <link rel="stylesheet" href="../css/login.css" type="text/css">
</head>
<%	
	TBL_PENSION dto= (TBL_PENSION)request.getAttribute("select_pension");

	String now = (String)request.getAttribute("now");
	String tomorrow = (String)request.getAttribute("tomorrow");
%>
<body>
	<jsp:include page="../nav.jsp"/>
    <!-- Breadcrumb Section Begin -->
    <div class="breadcrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <h2><%=dto.getName() %></h2>
                        <div class="bt-option">
                            <a href="../index">Home</a>
                            <span>펜션목록</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section End -->

    <!-- Room Details Section Begin -->
    <section class="room-details-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="room-details-item">
                        <img src="./process/img/room/room-details.jpg" alt="">
                        <div class="rd-text">
                            <div class="rd-title">
                                <h3><%=dto.getName() %></h3>
                            </div>
                            <h2><%=dto.getPrice()%><span>/원</span></h2>
                            <table>
                                <tbody>
                                    <tr>
                                        <td class="r-o">사장님의한마디</td>
                                        <td><%=dto.getComments() %></td>
                                    </tr>                                
                                    <tr>
                                        <td class="r-o">입실·퇴실시간:</td>
                                        <td>입실 : <%=dto.getCheckin().substring(0, 5)%> | 퇴실 : <%=dto.getCheckout().substring(0, 5) %></td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">환불규정:</td>
                                        <td>취소, 환불시 수수료가 발생할 수 있습니다.</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">공용시설:</td>
                                        <td><%=dto.getService()%></td>
                                    </tr>
                                     <tr>
                                        <td class="r-o">실내시설:</td>
                                        <td><%=dto.getInservice()%></td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">주소:</td>
                                        <td><%=dto.getAddress() %></td>
                                    </tr>                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="map" style="width:100%;height:350px;"></div>
	                <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a26a13ae7c96f971ee72dfe34ab51968&libraries=services"></script>
	                <script>
	                
	                    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	                        mapOption = { 
	                    	 	center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	                            level: 3 // 지도의 확대 레벨
	                        };
	
	                		 // 지도를 생성합니다    
							var map = new kakao.maps.Map(mapContainer, mapOption); 
							
							// 주소-좌표 변환 객체를 생성합니다
							var geocoder = new kakao.maps.services.Geocoder();
							// 주소로 좌표를 검색합니다			
							geocoder.addressSearch('<%=dto.getAddress()%>', function(result, status) {
							
					    	// 정상적으로 검색이 완료됐으면 
					     	if (status === kakao.maps.services.Status.OK) {
					
					        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

					        // 결과값으로 받은 위치를 마커로 표시합니다
					        var marker = new kakao.maps.Marker({
					            map: map,
					            position: coords
					        });
	
					        // 인포윈도우로 장소에 대한 설명을 표시합니다
					        var infowindow = new kakao.maps.InfoWindow({
					            content: '<div style="width:150px;text-align:center;"><%=dto.getName()%></div>'
					        });
					        infowindow.open(map, marker);
	
					        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
					        map.setCenter(coords);

					    } 
					});     
	                </script>
                    <div class="rd-reviews">
                        <h4>리뷰</h4>
                        <div class="review-item">
                            <div class="ri-pic">
                                <img src="./process/img/room/avatar/avatar-1.jpg" alt="">
                            </div>
                            <div class="ri-text">
                                <span>2022/07/15</span>
                                <div class="rating">
                                    <i class="icon_star"></i>
                                    <i class="icon_star"></i>
                                    <i class="icon_star"></i>
                                    <i class="icon_star"></i>
                                    <i class="icon_star-half_alt"></i>
                                </div>
                                <h5>박해빈</h5>
                                <p>창원 숙소 리뷰작성입니다.</p>
                            </div>
                        </div>
                        <div class="review-item">
                            <div class="ri-pic">
                                <img src="./process/img/room/avatar/avatar-2.jpg" alt="">
                            </div>
                            <div class="ri-text">
                                <span>2022/07/16</span>
                                <div class="rating">
                                    <i class="icon_star"></i>
                                    <i class="icon_star"></i>
                                    <i class="icon_star"></i>
                                    <i class="icon_star"></i>
                                    <i class="icon_star-half_alt"></i>
                                </div>
                                <h5>박민후</h5>
                                <p>창원 숙소 리뷰작성입니다.</p>
                            </div>
                        </div>
                    </div>
                    <div class="review-add">
                        <h4>리뷰작성</h4>
                        <form action="#" class="ra-form">
                            <div class="row">
                                <div class="col-lg-6">
                                    <input type="text" placeholder="이름(필수입력)*">
                                </div>
                                <div class="col-lg-6">
                                    <input type="text" placeholder="Email(필수입력)*">
                                </div>
                                <div class="col-lg-12">
                                    <div>
                                        <h5>별점리뷰:</h5>
                                        <div class="rating">
                                            <i class="icon_star"></i>
                                            <i class="icon_star"></i>
                                            <i class="icon_star"></i>
                                            <i class="icon_star"></i>
                                            <i class="icon_star-half_alt"></i>
                                        </div>
                                    </div>
                                    <textarea placeholder="리뷰를 입력해주세요."></textarea>
                                    <button type="리뷰작성">리뷰작성완료</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="room-booking">
                        <h3>객실예약하기</h3>
                        <form action="room-reservation" method="post">
                        	<input type="hidden" value="<%=dto.getPensionid()%>" name="pensionid" >
                        	<input type="hidden" value="<%=dto.getName()%>" name="roomname" >
                        	<input type="hidden" value="<%=dto.getPrice()%>" name="price" >
                            <div class="check-date">
                                <label for="date-in">체크인:</label>
                                
                                <input type="date"  id="date-in" name="starttime" min='<%=now%>' required/>
                                
                            </div>
                            <div class="check-date">
                                <label for="date-out">체크아웃:</label>
                                <input type="date"  id="date-out" name="deadline" min='<%=tomorrow%>' required >
                                
                            </div>
                            <div class="select-option">
                                <label for="guest">인원(성인 / 어린이):</label>
                                <select id="guest" name="people">
                                    <option value="1">1명</option>
                                    <option value="2">2명</option>
                                    <option value="3">3명</option>
                                    <option value="4">4명</option>
                                    <option value="5">5명</option>
                                    <option value="6">6명</option>
                                    <option value="7">7명</option>
                                    <option value="8">8명</option>
                                    <option value="9">9명</option>
                                    <option value="10">10명</option>
                                </select>
                            </div>
                            <div class="select-option">
                                <label for="room">객실:</label>
                                <select id="room" name="room">
                                    <option value="1">1 객실</option>
                                    <option value="2">2 객실</option>
                                    <option value="3">3 객실</option>
                                    <option value="4">4 객실</option>
                                </select>
                            </div>
                            <button type="submit" onclick="./room-reservation1.jsp">바로 예약하기</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Room Details Section End -->

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