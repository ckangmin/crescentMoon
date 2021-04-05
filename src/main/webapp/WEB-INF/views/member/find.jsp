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
    
    <div class="container">
        <div class="row">
            <div class="col-md-8 offset-md-2 mt-5">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs nav-justified" >
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="tab" href="#idfind">아이디 찾기</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#pwfind">비밀번호 찾기</a>
                    </li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div id="idfind" class="container tab-pane active my-5"><br>
                        <div class="col-md-12 text-center my-2">
                            <button class="btn btn-secondary" type="button" id="void" disabled>
                               이름
                            </button>
                            <input type="text" size="30" placeholder="NAME">
                        </div>
                        
                        <div class="col-md-12 text-center">
                            <button type="button" class="btn btn-secondary" disabled>
                                전화번호
                            </button>
                            <input type="text" maxlength="3" size="5"> &nbsp-&nbsp
                            <input type="text" maxlength="4" size="6"> &nbsp-&nbsp
                            <input type="text" maxlength="4" size="6">
                        </div>
                        <div class="col-md-12 text-center my-4">
                            <form action="./">
                                <button class="btn btn-success my-4" type="button">
                                    <h5 id="h5Btn">아이디 찾기</h5>
                                </button>
                            </form>
                        </div>
                    </div><!--div idfind end-->
                
                    <div id="pwfind" class="container tab-pane my-5 fade"><br>
                        <div class="col-md-12 text-center my-2">
                            <button class="btn btn-secondary" type="button" id="void" disabled>
                                아이디
                            </button>
                            <input type="text" size="30" placeholder="ID">
                        </div>
                        <div class="col-md-12 text-center my-2">
                            <button class="btn btn-secondary" type="button" id="void" disabled>
                                이름
                            </button>
                            <input type="text" size="30" placeholder="NAME">
                        </div>
                         
                        <div class="col-md-12 text-center">
                            <button type="button" class="btn btn-secondary" disabled>
                                전화번호
                            </button>
                            <input type="text" maxlength="3" size="5"> &nbsp-&nbsp
                            <input type="text" maxlength="4" size="6"> &nbsp-&nbsp
                            <input type="text" maxlength="4" size="6">
                        </div>

                        <div class="col-md-12 text-center my-4">
                                <button class="btn btn-success my-4" type="button">
                                    <h5 id="h5Btn">비밀번호 찾기</h5>
                                </button>                            
                        </div>
                    </div><!--div pwfind end-->
                </div>
            </div>
        </div><!--div row end-->
    </div><!--div container end-->
    
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