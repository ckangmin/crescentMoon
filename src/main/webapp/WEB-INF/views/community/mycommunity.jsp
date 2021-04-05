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
                <li class="nav-item"><a class="nav-link" href="./notice.html"><strong>공지사항</strong></a></li>
                <li class="nav-item"><a class="nav-link" href="../product/list.html">전체상품</a></li>
                <li class="nav-item"><a class="nav-link active" href="./community.html">커뮤니티</a></li>
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
            <h1 class="col-md-6 align-self-center"><strong>내가 작성한 글 목록</strong></h1>
        </div><!-- div row end-->
        <div class="row">
            <div class="col-md-12 text-center">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>분류</th>
                            <th>제목</th>
                            <th>작성일자</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr onClick="location.href='./QnAdetail.html'">
                            <td>문의</td>
                            <td>문의 글 제목입니다.</td>
                            <td>20xx.xx.xx</td>
                        </tr>
                        <tr>
                            <td onClick="location.href='./reviewdetail.html'">리뷰</td>
                            <td>리뷰 글 제목입니다.</td>
                            <td>20xx.xx.xx</td>
                        </tr>
                        <tr onClick="location.href='./QnAdetail.html'">
                            <td>문의</td>
                            <td>문의 글 제목입니다.</td>
                            <td>20xx.xx.xx</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div><!-- div row end-->
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