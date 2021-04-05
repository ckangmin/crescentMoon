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
                    <a href="./login.html">로그인/회원가입</a>
                    <a href="./cart.html" class="ml-3">장바구니</a><br>
                    <a href="../index.html">로그아웃</a>
                        <a href="./cart.html" class="ml-3">장바구니</a>
                        <a href="./mypage.html" class="ml-3">마이페이지</a><br>
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
    
    <div class="container my-3">
        <div class="row">
            <div class="col-md-12">
                <h1><strong>장바구니</strong></h1>
            </div>
            <div class="col-md-12 text-center">
                <table class="table">
                    <thead>
                        <tr>
                            <th id="cartPayTh"><h4><strong>선택</strong></h4></th>
                            <th><h4><strong>상품</strong></h4></th>
                            <th><h4><strong>상품명</strong></h4></th>
                            <th><h4><strong>수량</strong></h4></th>
                            <th><h4><strong>소계</strong></h4></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td id="cartPayTd"><input type="checkbox"></td>
                            <td id="cartPayTd"><img src="../img/product/redwood/rw.jpg" id="cartPayImg"></td>
                            <td id="cartPayTd"><h4><strong>레드우드</strong></h4></td>
                            <td id="cartPayTd"><h4><strong>1</strong></h4></td>
                            <td id="cartPayTd"><h4><strong>20,000원</strong></h4></td>
                        </tr>
                        <tr>
                            <td id="cartPayTd"><input type="checkbox"></td>
                            <td id="cartPayTd"><img src="../img/product/blackcherry/bc.jpg" id="cartPayImg"></td>
                            <td id="cartPayTd"><h4><strong>블랙체리</strong></h4></td>
                            <td id="cartPayTd"><h4><strong>1</strong></h4></td>
                            <td id="cartPayTd"><h4><strong>20,000원</strong></h4></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div><!-- div row end -->

        <hr>

        <div class="row">
            <div class="col-md-12 text-right">
                <h4>총 주문금액 : 43,000원</h4>
            </div>
        </div><!-- div row end -->

        <hr>

        <div class="row">
            <div class="col-md-6 ">
                <button type="button" class="btn btn-dark"><h5 id="h5Btn">전체선택</h5></button>
                <button type="button" class="btn btn-dark"><h5 id="h5Btn">전체해제</h5></button>
            </div>
            <div class="col-md-6 text-right">
                <button type="button" class="btn btn-danger"><h5 id="h5Btn">선택삭제</h5></button>
                <a href="../order/payment.html">
                    <button type="button" class="btn btn-info"><h5 id="h5Btn">주문하기</h5></button>
                </a>
            </div>            
        </div><!-- div row end -->
    </div><!-- div container end-->
    
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