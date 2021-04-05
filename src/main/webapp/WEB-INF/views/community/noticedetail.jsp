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
                <li class="nav-item"><a class="nav-link active" href="./notice.html">공지사항</a></li>
                <li class="nav-item"><a class="nav-link" href="../product/list.html">전체상품</a></li>
                <li class="nav-item"><a class="nav-link" href="./community.html">커뮤니티</a></li>
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
    <div class="row my-3">
        <h1 class="col-md-6 align-self-center"><strong>공지사항 상세</strong></h1>
        <div class="col-md-6 align-self-center text-right">
            <a href="../index.html">홈</a>
            <a href="#">-</a>
            <a href="./notice.html">공지사항목록</a>
        </div>
    </div><!-- div row end -->
        
        <div class="jumbotron">
            <div class="row">
                <div class="col-md-12">
                    <h2>공지사항 제목</h2>
                </div>
            </div><!-- div row end -->

            <div class="row">
                <div class="col-md-12">
                    <h5>
                        예가 사랑의 힘차게 그러므로 얼마나 놀이 얼음에 것이다.
                        그와 황금시대의 청춘이 모래뿐일 되려니와, 위하여서.
                        오아이스도 것은 위하여, 품에 청춘의 소담스러운 사는가 눈에 있으며, 위하여서.
                        가는 방황하여도, 생의 눈에 붙잡아 때문이다. 노년에게서 끝에 하는 따뜻한 것은 것이다.
                        가는 봄날의 못할 그것은 이것이다. 귀는 있음으로써 피는 것이다. 되는 원질이 충분히 말이다.
                        싶이 피고 청춘이 것은 맺어, 행복스럽고 이상 것이 많이 봄바람이다.
                        피는 피가 타오르고 칼이다.
                        시들어 소금이라 타오르고 인간의 피가 듣는다.
                    </h5>
                </div>
            </div><!-- div row end -->
        </div><!-- div jumbotron end -->

        <div class="row">
            <div class="col-md-12 text-right">
                <a href="./noticeModify.html" class="btn btn-success my-3"><h4 id="h4Btn">수정하기</h4></a>
                <a href="./notice.html" class="btn btn-primary my-3"><h4 id="h4Btn">목록으로</h4></a>
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