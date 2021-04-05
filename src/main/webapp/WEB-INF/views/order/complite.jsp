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
                </div>
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
                            <a href="../product/list.html" class="input-group-text"><img src="./icon/search.svg"></a>
                        </div>
                    </div>
                </li>
            </ul><!-- ul nav end -->
        </div><!-- div container end -->
    </nav><!-- nav end -->
    
    <div class="container text-center my-5">
        <div class="row">
            <div class="col-md-12 text-center">
                <h1>결제가 완료되었습니다.<br>
                    이용해 주셔서 감사합니다.</h1>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-md-12 text-center">
                <a href="../index.html"><button class="btn btn-primary mr-5" type="button"><h4 id="h4Btn">메인페이지</h4></button></a>
                <a href="./orderlist.html"><button class="btn btn-primary" type="button"><h4 id="h4Btn">주문내역</h4></button></a>
            </div>
        </div><!-- div row end -->
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