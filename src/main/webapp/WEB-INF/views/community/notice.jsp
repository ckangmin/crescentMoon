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
            <h1 class="col-md-6 align-self-center"><strong>공지사항목록</strong></h1>
            <div class="col-md-6 align-self-center text-right">
                <a href="../index.html">홈</a>
                <a href="#">-</a>
                <a href="./notice.html">공지사항목록</a>
            </div>
        </div><!-- div row end -->

        <table class="table table-hover text-center">
            <thead>
                <tr>
                    <th id="notiTh"><h4><strong>작성자</strong></h4></th>
                    <th><h4><strong>제목</strong></h4></th>
                    <th><h4><strong>조회수</strong></h4></th>
                    <th><h4><strong>작성일</strong></h4></th>
                </tr>
            </thead>
            <tbody>
                <tr onclick="location.href='./noticeDetail.html'">
                    <td>관리자</td>
                    <td>캔들</td>
                    <td>12</td>
                    <td>2021.3.18</td>
                </tr>
                <tr onclick="location.href='./noticeDetail.html'">
                    <td>관리자</td>
                    <td>캔들</td>
                    <td>12</td>
                    <td>2021.3.18</td>
                </tr>
                <tr onclick="location.href='./noticeDetail.html'">
                    <td>관리자</td>
                    <td>캔들</td>
                    <td>12</td>
                    <td>2021.3.18</td>
                </tr>
                <tr onclick="location.href='./noticeDetail.html'">
                    <td>관리자</td>
                    <td>캔들</td>
                    <td>12</td>
                    <td>2021.3.18</td>
                </tr>
                <tr onclick="location.href='./noticeDetail.html'">
                    <td>관리자</td>
                    <td>캔들</td>
                    <td>12</td>
                    <td>2021.3.18</td>
                </tr>
            </tbody>
        </table>
        <div class="row">
            <div class="col-md-12 text-right">
                <a href="./addnotice.html" class="btn btn-success">
                    <h5 id="h5Btn">글 쓰러 가기</h5>
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <ul class="pagination  justify-content-center">
                    <li class="page-item disabled">
                        <a class="page-link" href="#">&laquo;</a>
                    </li>
                    <li class="page-item active">
                        <a class="page-link" href="#">1</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">2</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">3</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">4</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">5</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">&raquo;</a>
                    </li>
                </ul>
            </div>
        </div><!-- div row end -->
    </div> <!--container-->
    
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