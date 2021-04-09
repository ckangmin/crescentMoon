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
                </div>
            </div><!-- div row end -->
        </div><!-- div container end -->
    </header><!-- header end -->
    av>
        <div class="container">
            <ul class="nav nav-tabs nav-justified" id="nav">
                <li class="nav-item"><a class="nav-link" href="/community/notice">공지사항</a></li>
                <li class="nav-item"><a class="nav-link active" href="/product/list">전체상품</a></li>
                <li class="nav-item"><a class="nav-link" href="/community">커뮤니티</a></li>
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
        <div class="jumbotron my-5">
            <form action="">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <h3 class="text-left">상품명</h3>
                        <input class="form-control" name="pname" id="pname" type="text">
                        <hr>    
                    </div>
                </div>
                <input type="hidden" value="100" id="pcnt" name="">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <h3 class="text-left">판매가</h3>
                        <input class="form-control" name="price" id="price" type="text" placeholder="숫자만 입력해주세요.">
                        <hr>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <h3 class="text-left">상품이미지</h3>
                        <input class="form-control-file" name="pimg" id="pimg" type="file">
                        <hr>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <h3 class="text-left">상품상세이미지</h3>
                        <input class="form-control-file" name="pdimg" id="pdimg" type="file">
                        <hr>
                    </div>
                </div>
                <div class="row text-right">
                    <div class="col-md-4 offset-md-4">
                        <!-- <button class="btn btn-success" type="submit"><h4 id="h4Btn">등록하기</h4></button> -->
                       <button type="button" class="btn btn-success" id="productAddbtn"><h4>등록하기</h4></button>
                    </div>
                </div>

            </form>
        </div>
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
    <script src="/resources/js/bootstrap.min.js"></script>
    <!-- search.js -->
    <script src="/resources/js/search.js"></script>

    <script type="text/javascript">
	    $(document).ready(function() {
			
		    $("#productAddbtn").on("click", function() {
				var pname = $("#pname").val();
				var price = $("#price").val();
				var pcnt= $("#pcnt").val();
				var pimg = $("#pimg").val();
				var pdimg = $("#pdimg").val();
				
				$.ajax({
					type : 'post',
					url : '/product',
					headers : {
						"Content-Type" : "application/json",
						"X-HTTP-Method-Override" : "POST"
					},
				    dataType : 'text',
				    data : JSON.stringify({
				    	pname: pname,
				    	price: price,
				    	pcnt: pcnt,
				    	pimg: pimg,
				    	pdimg: pdimg		    	
				    }),
				    success : function(result) {
				    	if(result === 'SUCCESS'){
				    		alert("등록 되었습니다.");
				    		window.location.href = "/product/list";
				    	}
				    }
				});//ajax
			});//productAddBtn end
			
		});//ready
    </script>
</body>
</html> 