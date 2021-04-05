<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                    <a href="/member/login">로그인/회원가입</a>
                    <a href="/member/cart" class="ml-3">장바구니</a><br>
                    <a href="/crescent">로그아웃</a>
                        <a href="/member/cart" class="ml-3">장바구니</a>
                        <a href="/member/mypage" class="ml-3">마이페이지</a><br>
                </div><!-- div col end -->
            </div><!-- div row end -->
        </div><!-- div container end -->
    </header><!-- header end -->
        
    <nav>
        <div class="container">
            <ul class="nav nav-tabs nav-justified" id="nav">
                <li class="nav-item"><a class="nav-link" href="/notice">공지사항</a></li>
                <li class="nav-item"><a class="nav-link" href="/product/list">전체상품</a></li>
                <li class="nav-item"><a class="nav-link active" href="/community/">커뮤니티</a></li>
                <li class="nav-item">
                    <div class="input-group">
                        <input class="form-control" type="text" id="search">
                        <div class="input-group-append">
                            <a href="/product/list" class="input-group-text"><img src="/resources/icon/search.svg"></a>
                        </div>
                    </div>
                </li>
            </ul><!-- ul nav end -->
        </div><!-- div container end -->
    </nav><!-- nav end -->
    
    <div class="container">
        <div class="row my-3">
            <h1 class="col-md-6 align-self-center"><strong>Q&A 수정 페이지</strong></h1>
        </div><!-- div row end -->
        
        <div class="row">
            <div class="col-md-6">
            	<input type="hidden" id="qno" name="qna" value="${qno}">
                <h4>글제목</h4>
                <input class="form-control" type="text" id="qtitle" name="qtitle" maxlength="20">
            </div>
        </div><!-- div row end -->
        
        <hr>

        <textarea class="form-control" id="qcontent" name="qcontent" rows="10"></textarea>

        <div class="row">
            <div class="col-md-12 text-right">
                <button class="btn btn-primary my-3" id="modBtn"><h4 id="h4Btn">QnA 수정</h4></button>
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
    
    <script type="text/javascript">
    	$(document).ready(function() {
			var qno = $("#qno").val();
    		
    		function getDetail() {
				$.getJSON("/qna/" + qno, function(data) {
					$("#qtitle").attr("value", data.qtitle);
					$("#qcontent").html(data.qcontent);
				});//getJSON
			}//getDetail
			getDetail();
    		
    		$("#modBtn").on("click", function() {
				var qtitle = $("#qtitle").val();
				var qcontent = $("#qcontent").val();
				
				$.ajax({
					type : 'patch',
					url : '/qna/' + qno,
					heade : {
						"Content-Type" : "apllication/json",
						"X-HTTP-Method-Override" : "PATCH"
					},
					contentType : "application/json",
					data : JSON.stringify({
						qno : qno,
						qtitle : qtitle,
						qcontent : qcontent
					}),
					dataType : 'text',
					success : function(result) {
						console.log("result : " + result);
						if(result === 'SUCCESS') {
							alert("수정되었습니다.");
							location.href="/community/askdetail?qno=" + qno;
						}
					}
				});//ajax
			});//modBtn
			
		});//ready
    </script>
</body>
</html>