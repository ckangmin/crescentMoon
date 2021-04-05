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
    
    <div class="container mb-5" id="login">
        <form class="col-md-4 offset-md-4 text-center" action="./mypage.html" method="get">
            <h1 class="my-5">내 정보 수정</h1>

            <div class="row mb-3">
                <button class="btn btn-primary" disabled>이름</button>
                <input class="form-control" type="text" name="name" id="name" value="회원이름" disabled>
            </div><!--이름-->
            <div class="row mb-3">
                <button class="btn btn-primary" disabled>아이디</button>
                <input class="form-control" type="text" name="id" id="id" value="회원아이디" disabled>
            </div><!--아이디-->
            <div class="row mb-3">
                <button class="btn btn-primary" disabled>비밀번호</button>
                <input class="form-control" type="password" name="pwd" id="pwd" placeholder="PWD">
            </div><!--비밀번호-->
            <div class="row mb-3">
                <button class="btn btn-primary" disabled>비빌번호 확인</button>
                <input class="form-control" type="password" name="pwdChk" id="pwdChk" placeholder="PWD CHECK">
            </div><!--비빌번호 확인-->
            <div class="row text-left">
                <button class="btn btn-primary" disabled>전화번호</button>
            </div>
            <div class="row mb-3">
                <input class="form-control col-md-3" type="text" name="tel1" id="tel1" maxlength="3" placeholder="010">
                <input class="form-control col-md-3 offset-md-1" type="text" name="tel2" id="tel2" maxlength="4" placeholder="1234">
                <input class="form-control col-md-3 offset-md-1" type="text" name="tel3" id="tel3" maxlength="4" placeholder="5678">
            </div><!--전화번호-->
            <div class="row">
                <button class="btn btn-primary" disabled>주소</button>
            </div>
            <div class="row mb-1">
                <input class="form-control col-md-4" type="text" name="postcode" id="postcode" placeholder="POSTCODE">
                <div class="col-md-4 offset-md-4 ml-2">
                    <button class="btn btn-warning" type="button">우편번호검색</button>
                </div>
            </div><!--우편번호-->
            <div class="row mb-1">
                <input class="form-control" type="text" name="addr1" id="addr1" placeholder="ADDR">
            </div><!--주소-->
            <div class="row mb-3">
                <input class="form-control" type="text" name="addr2" id="addr2" placeholder="ADDR DETAIL">
            </div><!--상세주소-->
            

            <div class="text-center mt-4">
                <!-- <button class="btn btn-success" type="submit"><h4 id="h4Btn">정보수정</h4></button> -->
                <a href="./mypage.html" class="btn btn-success"><h4 id="h4Btn">정보수정</h4></a>
            </div>
        </form>
    </div>
    
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