<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="DTO.TBL_MEMBER"%>
<html lang="zxx">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>펜션 예약</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="../process/css/room-reservation.css">
</head>
<%
	String a = (String)session.getAttribute("userid");         
 %>
<body>
	<jsp:include page="../nav.jsp"></jsp:include>
	<!-- iamport.payment.js -->
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<div class="breadcrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <h2>Reservation</h2>
                        <div class="bt-option">
                           	<a href="../index">Home</a>
                            <span>펜션예약</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="p-4 bg-light">
		<form action="room-reservation1" method="post">
		    <div class="row d-flex justify-content-center pb-5">
		        <div class="col-md-12 col-lg-5 mx-3">
		            <div class="py-4 d-flex flex-row">
		                <h5><span class="fa fa-check-square-o">&nbsp;</span><b>펜션 예약</b> | </h5><span class="pl-2">Reservation</span>
		            </div>
		            <div class="row">
			            <div class="mb-2">
				            <h4 class="green">펜션 이름</h4>
				            <input type="text" class="form-control bg-white" value="<%=request.getParameter("roomname") %>" name="roomname" readonly>
			            </div>
			            <div class="mb-2">
				            <h4 class="green">입실날짜</h4>
				            <input type="text" class="form-control bg-white" value="<%=request.getParameter("starttime") %>" name="starttime"  readonly>
			            </div>
			            <div class="mb-2">
				            <h4 class="green">퇴실날짜</h4>
				            <input type="text" class="form-control bg-white" value="<%=request.getParameter("deadline") %>" name="deadline" readonly>
			            </div>
			            <div class="mb-2">
				            <h4 class="green">예약자명</h4>
				            <input type="text" class="form-control bg-white" name="name" maxlength="10" placeholder=" 예약자명을 입력해주세요.">
			            </div>
			            <div class="mb-2">
				            <h4 class="green">전화번호</h4>
				            <input type="text" class="form-control bg-white" name="phon" maxlength="12" placeholder=" 전화번호를 입력해주세요.">
			            </div>
			            <input type="hidden" value="<%=request.getParameter("pensionid")%>" name="pensionid">
			            <input type="hidden" value="<%=a%>" name="userid">
			            <input type="hidden" value="<%=request.getParameter("room")%>" name="room">
			            <input type="hidden" value="<%=request.getParameter("people")%>" name="people">
			            
		            </div>
		            <hr>
		            <!-- <div class="row mt-4">
			            <div class="mb-2">
				            <h4 class="green" style="font-size:16px;">포인트 사용</h4>
				            <input type="text" class="form-control bg-white text-right" id="usePoint" value="0">
				            <p class="float-end">사용 가능 : <input class="border-0 text-right bg-light" style="max-width:100px" id="point" readonly=""> 포인트</p>
			            </div>
		            </div> -->
		        </div>
		        <div class="col-md-12 col-lg-5 mobile">
		            <div class="py-4 d-flex justify-content-end">
		                <h6><a href="detaills?pensionid=<%=request.getParameter("pensionid")%>">뒤로가기</a></h6>
		            </div>
		            <div class="bg-white rounded d-flex flex-column">
		                <div class="mt-3 p-2 ml-3"><h4>주문내역서</h4></div>
		                <div class="border-top px-4 mx-3"></div>
		                <div class="px-3 py-2 my-2 d-flex">
		                    <div class="col-6 px-2">가격(1박 기준)</div>
		                    <div class="ml-auto"><fmt:formatNumber type="number" maxFractionDigits="3" value="${TBL_ROOM.price}" /> 원</div>
		                </div>
		                <div class="px-3 py-2 my-2 d-flex">
		                    <div class="col-6 px-2">숙박 일수</div>
		                    <div class="ml-auto">${TBL_ROOM.day}</div>
		                    <input type="hidden" value="${TBL_ROOM.day}" name="day">
		                </div>
		                <div class="border-top px-4 mx-3"></div>
		                <div class="px-3 py-2 my-2 d-flex">
		                    <div class="col-6 px-2">결제 금액</div>
		                    <div class="ml-auto"><fmt:formatNumber type="number" maxFractionDigits="3" value="${TBL_ROOM.totalprice}" /> 원</div>
		                </div>
		                <div class="px-3 py-2 my-2 d-flex">
		                    <div class="col-6 px-2">할인 금액</div>
		                    <div class="ml-auto" id="discount">0 원</div>
		                </div>
		                <div class="border-top px-4 mx-3"></div>
		                <div class="px-3 py-2 my-2 d-flex">
		                    <div class="col-6 px-2"><strong>총 금액</strong></div>
		                    <div class="ml-auto"><b id="payment"><fmt:formatNumber type="number" maxFractionDigits="3" value="${TBL_ROOM.totalprice}" /> 원</b></div>
		                	<input type="hidden" value="${TBL_ROOM.totalprice}" name="totalprice" > 
		                </div>
		                <div class="border-top px-4 mx-3 mb-3"></div>
		             </div>
		             <div class="mt-3">
	                    <input type="submit" value="결 제 하 기" class="btn btn-primary btn-block" onclick="iamport()">
	                </div>
		        </div>        
		    </div>
	    </form>
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
	<!-- Js room-reservation -->
	<script>
	    $(function() {
	    	var startDate = '';
	    	var endDate = '';
	    	
	    	if(startDate) {
	    		$('input[id="daterange"]').daterangepicker({
	    			startDate: startDate,
	    			endDate: endDate,
	    			minDate: moment(),
		            maxDate: moment().startOf('day').add(60, 'day'),
	    			locale: {
		                format: 'YYYY/MM/DD'
		            }
	    		}).on("apply.daterangepicker", function() {
		            var start = $(this).val().substring(0, 10);
		            var end = $(this).val().substring(13);
		            
		            console.log(start, end, start === end);
		            if(start === end) {
		            	$('input[name="startDate"]').val(startDate);
		            	$('input[name="endDate"]').val(endDate);
		            	$('input[id="daterange"]').val(startDate + ' - ' + endDate);
		            	alert("같은 날짜를 지정할 수 없습니다.")
		            }
		            else {
		                $('input[name="startDate"]').val(start);
		                $('input[name="endDate"]').val(end);
		            }
		        });
	    	}
	    	else {
		        $('input[id="daterange"]').daterangepicker({
		            startDate: moment(),
		            endDate: moment().startOf('day').add(1, 'day'),
		            minDate: moment(),
		            maxDate: moment().startOf('day').add(60, 'day'),
		            locale: {
		                format: 'YYYY/MM/DD'
		            }
		        })
		        
		        var startDate = $('input[id="daterange"]').val().substring(0, 10);
		        var endDate = $('input[id="daterange"]').val().substring(13);
                
		        $('input[name="startDate"]').val(startDate);
                $('input[name="endDate"]').val(endDate);
		        
		        $('input[id="daterange"]').on("apply.daterangepicker", function() {
		            var start = $(this).val().substring(0, 10);
		            var end = $(this).val().substring(13);
		            if(start === end) {
		            	$('input[name="startDate"]').val(startDate);
		            	$('input[name="endDate"]').val(endDate);
		            	$('input[id="daterange"]').val(startDate + ' - ' + endDate);
		            	alert("같은 날짜를 지정할 수 없습니다.")
		            }
		            else {
		            	$('input[name="startDate"]').val(start);
		                $('input[name="endDate"]').val(end);
		            }
		        });
	    	}
	    	
	        $('form[name="filterFrm"]').submit(function() {
	        	if(!$('input[name="startDate"]').val()) {
	        		alert("날짜를 지정해주세요.")
	        		return false;
	        	}
	        })
		}); 
	</script>
	<script>
		var headerName = $("meta[name='_csrf_header']").attr("content")
		var token = $("meta[name='_csrf']").attr("content")
		
		$(document).ajaxSend(function(e, xhr) {
			xhr.setRequestHeader(headerName, token);
		})
		
		function iamport(){
			var amount =  '200000' - $('#usePoint').val();
			//가맹점 식별코드
			IMP.init('imp20015195');
			IMP.request_pay({
			    pg : 'html5_inicis',
			    pay_method : 'card',
			    merchant_uid : '7573' + new Date().getTime(),
			    name : 'Sona' , //결제창에서 보여질 이름
			    amount : amount, //실제 결제되는 가격
			    buyer_email : 'reservation@gmail.com',
			    buyer_name : '없음',
			    buyer_tel : '010-1234-5678',
			    buyer_addr : '창원시 마산회원구 양덕북 12길 113 경민인터빌 4층 407호',
			    buyer_postcode : '13524'
			}, function(rsp) {
				console.log(rsp);
				
		        var reservation = {
	        		reservationNum: rsp.merchant_uid,
                    checkin: '2022/07/20',
                    checkout: '2022/07/21',
					paymentPrice: '200000',
                    roomNum: '7573',
                    userid: 'asd123',
                    pensionid: '6867'
       	   	 	};
       	   	 	
			    if (rsp.success) {
			        var msg = '결제가 완료되었습니다.';
			        console.log(reservation);
			        alert(msg);
			      
			        $.ajax({
			         	url: "/verifyIamport/" + rsp.imp_uid,
			        	type: "POST",
			        	headers: { "Content-Type": "application/json" },
			        	data: JSON.stringify(reservation),
			        	dataType:"json",
			        })
			      
			        location.href = '/member/mypage';
			    } else {
			      var msg = rsp.error_msg;
			      alert(msg);
			    }
			});
		}
	</script>
	<script>
		var point = '0';
		var prePayment = '200000';
		$(function() {
			$('#point').val((point * 1).toLocaleString());
			$('#usePoint').keyup(function() {
				if($('#usePoint').val() - $('#point').val() > 0) {
					alert('사용 가능 포인트를 초과하였습니다.')
					$('#point').val(point.toLocaleString());
					$('#usePoint').val(0);
					$('#discount').html('0 원');
					$('#payment').text(prePayment + ' 원');
				}
				else {
					if(prePayment - $('#usePoint').val() < 1000) {
						alert('최소 결제 금액은 1,000입니다.')
						$('#usePoint').val((prePayment - 1000));
						$('#point').val((point - prePayment - 1000).toLocaleString());
						$('#discount').html('- ' + (prePayment -1000 * 1).toLocaleString() + ' 원');
						$('#payment').text('1,000 원');
					}
					else {
						$('#point').val((point - $('#usePoint').val()).toLocaleString());
						$('#discount').html('- ' + $('#usePoint').val() + ' 원');
						$('#payment').text((prePayment - $('#usePoint').val()).toLocaleString() + ' 원');
					}
				}
			})
		})
	</script>
	<!-- 버튼 클릭 시 예약이 완료되었습니다. -->
	<script>
	function iamport(){
	    alert('객실 예약이 완료되었습니다');
	}
	</script>
	<!-- Js room-reservation end -->
</body>
</html>