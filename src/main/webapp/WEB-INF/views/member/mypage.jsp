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
        <div class="row my-3">
            <div class="col-md-12 text-center">
                <h1><strong>마이페이지</strong></h1>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="col-md-8 offset-md-2">
            <div class="jumbotron">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h3 class="mb-4"><strong>내정보</strong></h2>
                        <h5>이름 : 김아무개</h5>
                        <h5>아이디 : admin1234</h5>
                        <h5>전화번호 : 010-1234-5678</h5>
                        <h5>가입일 : 20xx.xx.xx</h5>
                    </div>
                </div><!-- div row end -->

                <div class="row">
                    <div class="col-md-12 text-right">
                        <a href="./myinfo.html" class="text-primary">자세히 보기..</a>
                    </div>
                </div><!-- div row end --><!--내정보-->
                
                <hr>

                <div class="row">
                    <div class="col-md-12 text-center">
                        <h3 class="mb-4"><strong>최근주문내역</strong></h3>

                        <table class="table text-center">
                            <thead>
                                <tr>
                                    <th><h5><strong>주문번호</strong></h5></th>
                                    <th><h5><strong>상품명</strong></h5></th>
                                    <th><h5><strong>수량</strong></h5></th>
                                    <th><h5><strong>판매가</strong></h5></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>xxxxxxxxx</td>
                                    <td>블랙체리</td>
                                    <td>1</td>
                                    <td>20,000원</td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>총 주문금액 : 23,000원</td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div><!-- div row end -->

                <div class="row">
                    <div class="col-md-12 text-right">
                        <a href="../order/orderlist.html" class="text-primary">자세히 보기..</a>
                    </div>
                </div><!-- div row end --><!--주문내역-->
                
                <hr>

                <div class="row">
                    <div class="col-md-12 text-center">
                        <h3 class="mb-4"><strong>최근작성글</strong></h3>

                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>분류</th>
                                    <th>제목</th>
                                    <th>작성일</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>문의</td>
                                    <td>ㅇㅇ캔들 문의입니다.</td>
                                    <td>20xx.xx.xx</td>
                                </tr>
                                <tr>
                                    <td>문의</td>
                                    <td>ㅇㅇ캔들 문의입니다.</td>
                                    <td>20xx.xx.xx</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div><!-- div row end -->

                <div class="row">
                    <div class="col-md-12 text-right">
                        <a href="../board/cummulist.html" class="text-primary">자세히 보기..</a>
                    </div>
                </div><!-- div row end --><!--작성한글-->
            </div>
        </div><!-- div row end -->
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