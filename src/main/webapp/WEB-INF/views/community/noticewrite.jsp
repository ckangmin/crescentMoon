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
            <div class="col-lg-12 text-center">
                <div><h1> 공지 글 작성 </h1></div>
            </div>
        </div><!-- div row end -->
        <div class="row">
            <div class="col-md-8 offset-2">
                <form action="/community/write" id="regi" method="post">
                    <div class="row">
                        <div class="col-md-12">
                            <button class="btn btn-primary" disabled><h5 id="h5Btn">제목</h5></button>
                            <input type="text" class="form-control" id="ntitle" name="ntitle" placeholder="제목을 입력해주세요.">
                        </div>
                    </div><!--제목-->

                    <div class="row my-3">
                        <div class="col-md-12">
                            <button class="btn btn-primary" disabled><h5 id="h5Btn">내용</h5></button>
                            <textarea class="form-control" id="ncontent" name="ncontent" rows="10" placeholder="내용을 입력해주세요."></textarea>
                        </div>
                    </div><!--내용-->

                    <div class="row">
                        <div class="col-md-12 text-center mb-3">
                            <button class="btn btn-info mr-5" id="sub" type="button"><h5 id="h5Btn">등록하기</h5></button>
                            <a href="/community/notice" class="btn btn-danger"><h5 id="h5Btn">목록으로</h5></a>
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
    <script src="/resources/js/bootstrap.min.js"></script>
    <!-- search.js -->
    <script src="/resources/js/search.js"></script>
    
    <script type="text/javascript">
	    $(document).ready(function() {
	
			$("#sub").on("click", function() {
	    		 if($("#ntitle").val() == '') {
	                 alert("제목을 입력하세요.");
	                 $("#ntitle").focus();
	                 return;
	             }
	             if($("#ncontent").val() == '') {
	                 alert("내용을 입력하세요.");
	                 $("#ncontent").focus();
	                 return;
	             }
	             alert("공지글이 등록되었습니다.");
	             $("#regi").submit();
			});//sub
			
		});//ready
    </script>
</body>
</html>