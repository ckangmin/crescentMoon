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
                <li class="nav-item"><a class="nav-link" href="/community/notice">공지사항</a></li>
                <li class="nav-item"><a class="nav-link active" href="/product/list">전체상품</a></li>
                <li class="nav-item"><a class="nav-link" href="/community/">커뮤니티</a></li>
                <li class="nav-item">
                    <div class="input-group">
                        <input class="form-control" type="text" id="search" name="search">
                        <div class="input-group-append">
                       
                        	 <input type="hidden" id="pname" name="pname" value="${pname}">
                            <button type="button"class="input-group-text" id="searchBtn"><img src="/resources/icon/search.svg"></button>
                         
                        </div>
                    </div>
                </li>
            </ul><!-- ul nav end -->
        </div><!-- div container end -->
    </nav><!-- nav end -->
    
    <div class="container">
        <div class="row my-3">
            <h1 class="col-md-6 align-self-center"><strong>전체상품목록</strong></h1>
            <div class="col-md-6 align-self-center text-right">
                <a href="/product/prodwrite"><button class="btn btn-success mr-3" type="button"><h5 id="h5Btn">상품추가</h5></button></a>
                <a href="/crescent">홈</a>
                <a href="#">-</a>
                <a href="/product/list">상품목록</a>
            </div>
        </div><!-- div row end -->

        <div class="row" id="productlist">
			
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
    <script src="/resources/js/bootstrap.min.js"></script>
    
    <script type="text/javascript">
	    $(document).ready(function() {
			
		
	    	function getAllList(){
				$.getJSON("/product/all" , function(data){
					var str= "";
					$(data).each(function(){
						str += "<div class='col-md-4 text-center'><a href='/product/detail?pno="
							+ this.pno + "'><img class='img-thumbnail' src='"
							+ this.pimg + "'></a><hr><a><strong>"
		                	+ this.pname + "</strong></a><p>"
		                	+ this.price + "</p><hr></div>";
					});
					$("#productlist").html(str);
				});
			}
		    getAllList();
		    $('#searchBtn').on("click", function(event){
		    	pname=$("#search").val();
				self.location = "/product/search?pname="+pname;
		
			});
		});//ready
    </script>
</body>
</html>