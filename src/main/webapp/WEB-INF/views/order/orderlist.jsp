<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- bootstrap.min.css -->
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<!--custom.css-->
<link href="/resources/css/custom.css" rel="stylesheet">
<!--jquery.min.js-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<title>CRESCENT MOON</title>
<link rel="shortcut icon" type="image/x-icon" href="/resources/img/cm_icon.png">
</head>
<body>
    <header><!--header-->
        <div class="container">
            <div class="row">
                <a href="/crescent" class="col-md-1 offset-md-5"><img src="/resources/img/cm_logo.png" id="logo"></a>
                <div class="col-md-4 offset-md-2 mt-5 text-right">
                	<c:if test="${empty login}">
                		<!-- 로그인O -->
	                    <a href="/member/login">로그인/회원가입</a>
	                    <a href="/cart" class="ml-3">장바구니</a><br>
                	</c:if>
                	<c:if test="${not empty login}">
                		<!-- 로그인X -->
                    	<a href="/member/logout">로그아웃</a>
                        <a href="/cart" class="ml-3">장바구니</a>
                        <a href="/member/mypage" class="ml-3">마이페이지</a><br>
                	</c:if>
                </div><!-- div col end -->
            </div><!-- div row end -->
        </div><!-- div container end -->
    </header><!-- header end -->
        
    <nav>
        <div class="container">
            <ul class="nav nav-tabs nav-justified" id="nav">
                <li class="nav-item"><a class="nav-link" href="/community/notice">공지사항</a></li>
                <li class="nav-item"><a class="nav-link" href="/product/list">전체상품</a></li>
                <li class="nav-item"><a class="nav-link" href="/community/">커뮤니티</a></li>
                <li class="nav-item">
                    <div class="input-group">
                        <input class="form-control" type="text" id="search">
                        <div class="input-group-append">
                            <button type="button"class="input-group-text" id="searchBtn"><img src="/resources/icon/search.svg"></button>
                        </div>
                    </div>
                </li>
            </ul><!-- ul nav end -->
        </div><!-- div container end -->
    </nav><!-- nav end -->
    
    <div class="container">
        <div class="row my-4">
            <div class="col-md-12">
                <h1><strong>주문내역</strong></h1>
            </div>
        </div><!-- div row end -->
        
        <div class="row">
            <div class="col-md-10 offset-md-1">
                <div class="jumbotron" id="orderlistDiv">

                    <div class="row">
                        <div class="col-md-4">
                            <h4>주문번호 : xxxxxxxxx</h4>
                        </div>
                        <div class="col-md-4">
                            <h4>주문일자 : 20xx.xx.xx</h4>
                        </div>
                        <div class="col-md-4 text-right">
                            <h4>배송상태 : 배송완료</h4>
                        </div>
                    </div><!-- div row end -->

                    <div class="row">
                        <table class="table text-center">
                            <thead>
                                <tr>
                                    <th><h4><strong>상품명</strong></h4></th>
                                    <th><h4><strong>수량</strong></h4></th>
                                    <th><h4><strong>판매가</strong></h4></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>블랙체리</td>
                                    <td>1</td>
                                    <td>20,000원</td>
                                </tr>
                                <tr>
                                    <td>레드우드</td>
                                    <td>1</td>
                                    <td>20,000원</td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td>총 주문금액 : 43,000원</td>
                                </tr>
                            </tfoot>
                        </table>
                    </div><!-- div row end -->

                </div><!-- div orderlistDiv end -->
                
                <div class="jumbotron" id="orderlistDiv">
                    
                    <div class="row">
                        <div class="col-md-4">
                            <h4>주문번호 : xxxxxxxxx</h4>
                        </div>
                        <div class="col-md-4">
                            <h4>주문일자 : 20xx.xx.xx</h4>
                        </div>
                        <div class="col-md-4 text-right">
                            <h4>배송상태 : 배송완료</h4>
                        </div>
                    </div><!-- div row end -->

                    <div class="row">
                        <table class="table text-center">
                            <thead>
                                <tr>
                                    <th><h4><strong>상품명</strong></h4></th>
                                    <th><h4><strong>수량</strong></h4></th>
                                    <th><h4><strong>판매가</strong></h4></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>블랙체리</td>
                                    <td>1</td>
                                    <td>20,000원</td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td>총 주문금액 : 23,000원</td>
                                </tr>
                            </tfoot>
                        </table>
                    </div><!-- div row end -->
                        
                </div><!-- div orderlistDiv end -->
                
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
    <script src="/resources/js/bootstrap.min.js"></script>
    <!-- search.js -->
    <script src="/resources/js/search.js"></script>
</body>
</html>