<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<!-- bootstrap.min.css -->
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<!--custom.css-->
<link href="/resources/css/custom.css" rel="stylesheet">
<!--jquery.min.js-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<title>CRESCENT MOON</title>

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
                            <a href="/product/list" class="input-group-text"><img src="/resources/icon/search.svg"></a>
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