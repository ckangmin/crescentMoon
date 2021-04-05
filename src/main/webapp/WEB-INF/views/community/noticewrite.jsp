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
                <a href="../index.html" class="col-md-1 offset-md-5"><img src="/img/cm_logo.png" id="logo"></a>
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
                <li class="nav-item"><a class="nav-link active" href="./notice.html"><strong>공지사항</strong></a></li>
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
        <div class="row my-4">
            <div class="col-lg-12 text-center">
                <div><h1> 공지 글 작성 </h1></div>
            </div>
        </div><!-- div row end -->
        <div class="row">
            <div class="col-md-8 offset-2">
                <form action="./notice.html" method="get">
                    <input type="hidden" name="writer" value="">
                    <div class="row">
                        <div class="col-md-12">
                            <button class="btn btn-primary" disabled><h5 id="h5Btn">제목</h5></button>
                            <input type="text" class="form-control" id="title" name="title" placeholder="제목을 작성해주세요.">
                        </div>
                    </div><!--제목-->

                    <div class="row my-3">
                        <div class="col-md-12">
                            <button class="btn btn-primary" disabled><h5 id="h5Btn">내용</h5></button>
                            <textarea class="form-control" id="content" name="content" rows="10"></textarea>
                        </div>
                    </div><!--내용-->

                    <div class="row">
                        <div class="col-md-12 text-center mb-3">
                            <button class="btn btn-info mr-5" type="submit"><h5 id="h5Btn">등록하기</h4></button>
                            <a href="./notice.html" class="btn btn-secondary"><h5 id="h5Btn">목록으로</h4></a>
                        </div>
                    </div><!-- div row end -->
                </form>
            </div>
        </div><!-- div row end -->
    </div> <!-- div container end -->
    
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