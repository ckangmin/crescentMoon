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
        
    <div class="container mb-3"><!--slider-->
        <div class="carousel slide" id="carousel-slide-banner" data-bs-ride="carousel">
            <!--indicator-->
            <ol class="carousel-indicators">
                <li data-target="#carousel-slide-banner" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-slide-banner" data-slide-to="1"></li>
                <li data-target="#carousel-slide-banner" data-slide-to="2"></li>
            </ol>
            
            <!--slide items-->
            <div class="carousel-inner">
                <div class="carousel-item active" data-bs-interval="500">
                    <img src="/resources/img/banner/project_banner.png" id="slide-item">
                </div>
                <div class="carousel-item" data-bs-interval="500">
                    <img src="/resources/img/banner/qeens_aroma.png" id="slide-item">
                </div>
                <div class="carousel-item" data-bs-interval="500">
                    <img src="/resources/img/banner/event_banner.png" id="slide-item">
                </div>
            </div>
            
            <!--controls-->
            <a class="carousel-control-prev" href="#carousel-slide-banner" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#carousel-slide-banner" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        </div><!--carousel slide end-->
    </div><!--slide container end-->
    
    <div class="container mt-2"><!--content-->
        <div class="row my-3">
            <h2 class="col-md-4 offset-md-4 text-center">인기상품</h2>
        </div>
        <div class="row" id="hotItems">
            
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
    
    <script type="text/javascript">
    	$(document).ready(function() {
			
	    	function getIndex() {
				$.getJSON("/index", function(data) {
					var str = "";
						
					$(data).each(function() {
						str += "<div class='col-md-4 text-center'><a href='/product/detail?pno="
							+ this.pno + "'><img class='img-thumbnail' src='"
							+ this.pimg + "'></a><hr><a href='/product/detail?pno="
							+ this.pno + "'>" + this.pname + "</a><p>"
							+ this.price + "</p><hr></div>";
					})//each
					$("#hotItems").html(str);
				})//getJSON
			}//getIndex
	    	getIndex();
			
		});//ready
    </script>
</body>
</html>