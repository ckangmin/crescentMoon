<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- bootstrap.min.css -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<!--custom.css-->
<link href="../css/custom.css" rel="stylesheet">
<!--jquery.min.js-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<title>CRESCENT MOON</title>
<link rel="shortcut icon" type="image/x-icon" href="../img/cm_icon.png">
</head>
<body>
    <header><!--header-->
        <div class="container">
            <div class="row">
                <a href="../index.html" class="col-md-1 offset-md-5"><img src="../img/cm_logo.png" id="logo"></a>
                <div class="col-md-4 offset-md-2 mt-5 text-right">
                    <a href="../member/login.html">로그인/회원가입</a>
                    <a href="../member/cart.html" class="ml-3">장바구니</a><br>
                    <a href="../index.html">로그아웃</a>
                        <a href="../member/cart.html" class="ml-3">장바구니</a>
                        <a href="../member/mypage.html" class="ml-3">마이페이지</a><br>
                </div><!-- div col end -->
            </div><!-- div row end -->
        </div><!-- div container end -->
    </header><!-- header end -->
        
    <nav>
        <div class="container">
            <ul class="nav nav-tabs nav-justified" id="nav">
                <li class="nav-item"><a class="nav-link" href="../board/notice.html">공지사항</a></li>
                <li class="nav-item"><a class="nav-link" href="../product/list.html">전체상품</a></li>
                <li class="nav-item"><a class="nav-link" href="../board/community.html">커뮤니티</a></li>
                <li class="nav-item">
                    <div class="input-group">
                        <input class="form-control" type="text" id="search">
                        <div class="input-group-append">
                            <a href="../product/list.html" class="input-group-text"><img src="../icon/search.svg"></a>
                        </div>
                    </div>
                </li>
            </ul><!-- ul nav end -->
        </div><!-- div container end -->
    </nav><!-- nav end -->
    
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center my-3">
                <h1><strong>결제</strong></h1>
                <table class="table">
                    <thead>
                        <tr>
                            <th style="width: 30px;"></th>
                            <th id="cartPayTh"><h4><strong>상품명</strong></h4></th>
                            <th><h4><strong>판매가</strong></h4></th>
                            <th><h4><strong>수량</strong></h4></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td id="cartPayTd"><img src="../img/product/redwood/rw.jpg" id="cartPayImg"></td>
                            <td id="cartPayTd"><h4><strong>레드우드</strong></h4></td>
                            <td id="cartPayTd"><h4><strong>20,000</strong></h4></td>
                            <td id="cartPayTd"><h4><strong>1</strong></h4></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div><!-- div row end -->
        <div class="row">
            <div class="col-md-12 text-right">
                <p>배송비 : 3,000원</p>
                <h4>총 금액 : 23,000원</h4>
            </div>
        </div><!-- div row end -->

        <div class="jumbotron mt-3" id="payJumbo">
            <div class="row">
                <div class="col-md-4 offset-md-1">
                    <div class="row mb-3">
                        <button class="btn btn-info" disabled><h5 id="h5Btn">받는 곳</h5></button>
                    </div>
                    <div class="row mb-1">
                        <input class="form-control col-md-4" type="text" name="postcode" id="postcode" placeholder="POSTCODE" disabled>
                        <div class="ml-2">
                            <button class="btn btn-warning" type="button" onclick="getPostcode();">우편번호검색</button>
                        </div>
                    </div><!--우편번호-->
                    <div class="row mb-1">
                        <input class="form-control" type="text" name="addr1" id="addr1" placeholder="ADDR" disabled>
                    </div><!--주소-->
                    <div class="row mb-3">
                        <input class="form-control" type="text" name="addr2" id="addr2" placeholder="ADDR DETAIL">
                    </div><!--상세주소-->
                </div><!--받는곳-->
                
                <div class="col-md-4 offset-md-2">
                    <div class="row mb-3">
                        <button class="btn btn-info" disabled><h5 id="h5Btn">받는 분</h5></button>
                    </div>
                    <div class="row mb-1">
                        <input class="form-control col-md-5" type="text" name="name" id="name" placeholder="NAME">
                    </div>
                    
                    <div class="row my-3">
                        <button class="btn btn-info" disabled><h5 id="h5Btn">연락처</h5></button>
                    </div>
                    <div class="row mb-3">
                        <input class="form-control col-md-3" type="text" name="tel1" id="tel1" maxlength="3" placeholder="010">
                        <input class="form-control col-md-3 offset-md-1" type="text" name="tel2" id="tel2" maxlength="4" placeholder="1234">
                        <input class="form-control col-md-3 offset-md-1" type="text" name="tel3" id="tel3" maxlength="4" placeholder="5678">
                    </div><!--전화번호-->
                </div><!--받는분-->
            </div><!-- div row end -->
            <div class="row">
                <div class="col-md-12 text-center">
                    <!-- <button type="button" class="btn btn-success"><h3 id="h3Btn">결제하기</h3></button> -->
                    <a href="./complite.html" class="btn btn-success"><h3 id="h3Btn">결제하기</h3></a>
                </div>
            </div>
        </div>
    </div><!-- div container end -->
    
    <footer><!--footer-->
        <div class="container" id="footer_area">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h1 class="text-primary">푸터영역입니다.</h1>
                </div>
            </div><!-- div row end -->
        </div><!-- div container end -->
    </footer><!-- footer end -->
    
    <!--bootstrap.min.js-->
    <script src="/js/bootstrap.min.js"></script>
</body>
</html>