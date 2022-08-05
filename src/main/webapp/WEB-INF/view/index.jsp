<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="설레는 창원여행">
    <meta name="keywords" content="Tour, G, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>설레는 창원여행</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="./process/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="./process/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="./process/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="./process/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="./process/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="./process/css/owl.carousel2.min.css" type="text/css">
    <link rel="stylesheet" href="./process/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="./process/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="./process/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="./process/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="./process/css/style.css" type="text/css">
    <link rel="stylesheet" href="./process/css/style2.css" type="text/css">
    <link rel="stylesheet" href="./process/css/login.css" type="text/css">
    
    <!-- animation -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
</head>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
	 <!-- Section1 Begin -->
    <section class="hero-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="hero-text">
                        <h1 class="text"></h1>
                        <p>창원시는 세계 최대 벚꽃축제인 진해 군항제가 대표적이다.<br>  
                           골목골목을 구경하는 재미가 있는 창동 예술촌과 해양드라마 세트장<br> 창원시에서만 만날 수 있는 이색 여행지이다.</p>
                        <a href="#" class="primary-btn" style="animation-duration: 0.5s; animation-name:slideInLeft">Discover Now</a>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-5 offset-xl-2 offset-lg-1">
                    <div class="booking-form">
                        <h3>창원여행,<br>일정이 어떻게 되세요?</h3>
                        
                        <form action="pensionList?page=1" method="post">
                            <div class="check-date">
                                <label for="date-in">체크인:</label>
                                <input type="text" class="date-input" id="date-in">
                                <i class="icon_calendar"></i>
                            </div>
                            <div class="check-date">
                                <label for="date-out">체크아웃:</label>
                                <input type="text" class="date-input" id="date-out">
                                <i class="icon_calendar"></i>
                            </div>
                            <div class="select-option">
                                <label for="guest">인원(성인 / 어린이):</label>
                                <select id="guest">
                                    <option value="">1명</option>
                                    <option value="">2명</option>
                                    <option value="">3명</option>
                                    <option value="">4명</option>
                                    <option value="">5명</option>
                                    <option value="">6명</option>
                                    <option value="">7명</option>
                                    <option value="">8명</option>
                                    <option value="">9명</option>
                                    <option value="">10명</option>
                                </select>
                            </div>
                            <div class="select-option">
                                <label for="room">객실:</label>
                                <select id="room">
                                    <option value="">1 객실</option>
                                    <option value="">2 객실</option>
                                    <option value="">3 객실</option>
                                    <option value="">4 객실</option>
                                </select>
                            </div>
                            <button type="submit">바로 예약하기</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- 슬라이드 -->
        <div class="hero-slider owl-carousel">
            <div class="hs-item set-bg" data-setbg="./process/img/hero/hero-1.jpg"></div>
            <div class="hs-item set-bg" data-setbg="./process/img/hero/hero-2.jpg"></div>
            <div class="hs-item set-bg" data-setbg="./process/img/hero/hero-3.jpg"></div>
        </div>
    </section>
    <!-- Section1 End -->

    <!-- Section2 End -->
    <section class="services-section spad">
        <div class="container">
            <div class="row" style="animation-duration:1s; animation-name: fadeInUp;">
                <div class="col-lg-12">
                    <div class="section-title">
                        <span>ChangWon Tour Guide</span>
                        <h2>그래, 이게 바로 창원여행!</h2>
                    </div>
                </div>
            </div>
            <div class="row" style="animation-duration:1.5s; animation-name: fadeInUp;">
           		<div class="col-lg-4 col-sm-6">
                    <div class="service-item">
                        <i class="flaticon-036-parking"></i>
                        <a href="https://culture.changwon.go.kr/index.changwon?menuId=12120000" target="_blank" title="새창에서 열림">
                            <h4>관광지도</h4>
                            <p>창원의 관광지를 한눈에 볼 수 있도록<br>만든 지도로 관광정보를 보실 수 있어요.</p>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="https://www.changwoncitytour.com/" target="_blank">
                    <div class="service-item">
                        <i class="flaticon-033-dinner"></i>
                            <h4>창원시티투어</h4>
                            <p>전문 시티투어해설사와 함께<br>유명관광지를 한번에 즐겨보세요.</p>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="https://culture.changwon.go.kr/index.changwon?menuId=12150000" target="_blank">
                    <div class="service-item">
                        <i class="flaticon-026-bed"></i>
                            <h4>여행작가가 추천하는 관광코스</h4>
                            <p>여행작가가 추천하는 관광코스로<br>색다르고 낭만가득한 창원을 만나보세요.</p>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="https://culture.changwon.go.kr/index.changwon?menuId=17040000" target="_blank">
                    <div class="service-item">
                        <i class="flaticon-024-towel"></i>
                            <h4>교통정보</h4>
                            <p>버스, 택시, 열차, 항공기, 여객선 등<br>창원의 교통정보를 알려드립니다.</p>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="https://culture.changwon.go.kr/index.changwon?menuId=17020000" target="_blank">
                    <div class="service-item">
                        <i class="flaticon-044-clock-1"></i>
                            <h4>관광안내지도신청</h4>
                            <p>창원의 문화재와 주요관광지 자료가 소개되어 있는 관광안내지도를 제공합니다.</p>
                        </a>    
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="https://culture.changwon.go.kr/index.changwon?menuId=17010001" target="_blank">
                    <div class="service-item">
                        <i class="flaticon-012-cocktail"></i>
                            <h4>주말나들이</h4>
                            <p>이번 주말 어디로 갈지 고민중이신가요?<br>창원에서의 나들이를 추천해드립니다.</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Section2 End -->

    <!-- Section3 Begin -->
    <section class="hp-room-section" style="animation-duration: 2s; animation-name: fadeInUp;">
        <div class="container-fluid">
            <div class="hp-room-items">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="hp-room-item set-bg" data-setbg="./process/img/room/room-b1.jpg">
                            <div class="hr-text">
                                <h3>Premium King Room</h3>
                                <h2>100,000<span>/ 원</span></h2>
                                <table>
                                    <tbody>
                                        <tr>
                                            <td class="r-o">기본정보:</td>
                                            <td>입실 : 15:00 | 퇴실 : 11:00</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">환불규정:</td>
                                            <td>취소, 환불시 수수료가 발생</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">확인사항:</td>
                                            <td>최대 인원 초과시 입실 불가</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">기타사항:</td>
                                            <td>무료 Wi-Fi, 전 객실 금연, 픽업불가</td>
                                        </tr>
                                    </tbody>
                                </table>
                                 <a href="pensionList?page=1" class="primary-btn">More Details</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="hp-room-item set-bg" data-setbg="./process/img/room/room-b2.jpg">
                            <div class="hr-text">
                                <h3>Deluxe Room</h3>
                                <h2>200,000<span>/ 원</span></h2>
                                <table>
                                    <tbody>
                                        <tr>
                                            <td class="r-o">기본정보:</td>
                                            <td>입실 : 15:00 | 퇴실 : 11:00</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">환불규정:</td>
                                            <td>취소, 환불시 수수료가 발생</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">확인사항:</td>
                                            <td>최대 인원 초과시 입실 불가</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">기타사항:</td>
                                            <td>무료 Wi-Fi, 전 객실 금연, 픽업불가</td>
                                        </tr>
                                    </tbody>
                                </table>
                                 <a href="pensionList?page=1" class="primary-btn">More Details</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="hp-room-item set-bg" data-setbg="./process/img/room/room-b3.jpg">
                            <div class="hr-text">
                                <h3>Double Room</h3>
                                <h2>300,000<span>/ 원</span></h2>
                                <table>
                                    <tbody>
                                        <tr>
                                            <td class="r-o">기본정보:</td>
                                            <td>입실 : 15:00 | 퇴실 : 11:00</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">환불규정:</td>
                                            <td>취소, 환불시 수수료가 발생</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">확인사항:</td>
                                            <td>최대 인원 초과시 입실 불가</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">기타사항:</td>
                                            <td>무료 Wi-Fi, 전 객실 금연, 픽업불가</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <a href="pensionList?page=1" class="primary-btn">More Details</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="hp-room-item set-bg" data-setbg="./process/img/room/room-b4.jpg">
                            <div class="hr-text">
                                <h3>Luxury Room</h3>
                                <h2>400,000<span>/ 원</span></h2>
                                <table>
                                    <tbody>
                                        <tr>
                                            <td class="r-o">기본정보:</td>
                                            <td>입실 : 15:00 | 퇴실 : 11:00</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">환불규정:</td>
                                            <td>취소, 환불시 수수료가 발생</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">확인사항:</td>
                                            <td>최대 인원 초과시 입실 불가</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">기타사항:</td>
                                            <td>무료 Wi-Fi, 전 객실 금연, 픽업불가</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <a href="pensionList?page=1" class="primary-btn">More Details</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Section3 Section End -->

    <!-- Section4 Begin -->
    <section class="testimonial spad" style="animation-duration: 3.5s; animation-name: fadeInUp;">
        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    <div class="testimonial__pic">
                        <img src="./process/img/testimonial-left.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="testimonial__text">
                        <div class="section-title">
                            <span>ChangWon Tour Review</span>
                            <h2>그래, 이게 바로 생생후기!</h2>
                        </div>
                        <div class="testimonial__slider__content">
                            <div class="testimonial__slider owl-carousel">
                                <div class="testimonial__item">
                                    <h5>베스트 리뷰:</h5>
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                    <p>친구들과 어디 갈까 찾아보던 중 망고펜션을 봤어요 가격도 괜찮고 독채라서 바로 예약을 했습니다. 
                                    저희가 일찍 도착해서 2시쯤 갔는데 문열어주시고 들어가자마자 창밖으로 바다 보이고 너무 예뻐서 사진 많이 건졌어요. 
                                    사장님도 너무 친절하시고 내부도 깨끗해서 너무 편하게 쉬었어요 침대가 폭신한 편은 아니였지만 눕자마자 잠들었네요. 
                                    망고도 너무 귀여웠어요. 다음에도 또 오겠습니다. 감사합니다.</p>
                                    <div class="testimonial__author">
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6">
                                                <div class="testimonial__author__title">
                                                    <h5>Family Room 객실 이용</h5>
                                                    <span>여기만한 곳은 어디에도 없을 거예요.</span>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-6">
                                                <div class="testimonial__author__social">
                                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                                    <a href="#"><i class="fa fa-linkedin"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="testimonial__item">
                                    <h5>베스트 리뷰:</h5>
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                    <p>한적하니 좋았어요! 주변이 조용했어서 잘 쉴 수 있었답니다~ 숙소마다 많이 가깝지 않아서 부담없이 바베큐 존도 사용할 수 있었어요! 
                                       아예 한 채가 다 이용 가능하니까 층간소음에서도 자유로웠고요. 1층 매트리스 가운데가 살짝 가라앉은 것만 빼면 다 좋았어요! 
                                       정말 깨끗했고요, 사장님께서도 친절하셔서 인상 깊은 숙소가 될 것 같네요!:)</p>
                                    <div class="testimonial__author">
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6">
                                                <div class="testimonial__author__title">
                                                    <h5>Double Room 객실 이용</h5>
                                                    <span>잘 먹고 잘 놀고, 잘 쉬다 갑니다:)</span>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-6">
                                                <div class="testimonial__author__social">
                                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                                    <a href="#"><i class="fa fa-linkedin"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="testimonial__item">
                                    <h5>베스트 리뷰:</h5>
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                    <p>외부는 물론 내부까지 깔끔하고 안이쁜곳이 없었어요 특히 바다쪽으로 뷰가 진짜 너무 이뻐용 !!
                                    사장님 칫솔을 안가져왔는데 가져다 주시구 친절하시구 서비스도 되게 좋았어요
                                    가족들도 되게 마음에 들어하구 1박만 한걸 아쉬워했어요ㅠㅠ 앞으로 매년 휴가는 여기로 오게될 거같네용</p>
                                    <div class="testimonial__author">
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6">
                                                <div class="testimonial__author__title">
                                                    <h5>Deluxe Room 객실 이용</h5>
                                                    <span>사장님이 매우 친절하셨어요!</span>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-6">
                                                <div class="testimonial__author__social">
                                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                                    <a href="#"><i class="fa fa-linkedin"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="testimonial__item">
                                    <h5>베스트 리뷰:</h5>
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                    <p>신설이라 그런지 엄청깨끗해요!!! 사장님도 엄청 친절하시고 !!! ㅠㅜ 방도 진짜 깨끗하고 에어컨 같은거도 다 최신!! 바다뷰도 이뿌고 가격대비 최고임!!
                                    진짜 또가고싶을정도로 좋아요 침대 두개인곳 잘없눈데 침대도 둘다 엄청 깨끗하고 👍👍👍 또 가고싶은곳이예요</p>
                                    <div class="testimonial__author">
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6">
                                                <div class="testimonial__author__title">
                                                    <h5>Premium King Room 객실 이용</h5>
                                                    <span>바다뷰 최고, 또 가고 싶은 곳:)</span>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-6">
                                                <div class="testimonial__author__social">
                                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                                    <a href="#"><i class="fa fa-linkedin"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="slide-num" id="snh-1"></div>
                            <div class="slider__progress"><span></span></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Section4 End -->
    <jsp:include page="footer.jsp"></jsp:include>
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