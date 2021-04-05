<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            	<input type="hidden" id="pno" value="${pno}">
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
        
    <nav>
        <div class="container">
            <ul class="nav nav-tabs nav-justified" id="nav">
                <li class="nav-item"><a class="nav-link" href="/community/notice">공지사항</a></li>
                <li class="nav-item"><a class="nav-link active" href="/product/list">전체상품</a></li>
                <li class="nav-item"><a class="nav-link" href="/community/">커뮤니티</a></li>
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
        <div class="row">
            <div class="col-md-12 text-right my-3">
                <a href="/crescent">홈</a>
                <a href="#">-</a>
                <a href="/product/list">상품목록</a>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <img id="pimg"><!-- 제품이미지 들어가는곳 -->
            </div>
            <div class="col-md-6">
            	<div class="row">
	            	<div class="col-md-6">
		               <h2 id="pname"></h2><!--  상품이름 -->
	            	</div>
	            	<div class="col-md-6 text-right">
		            	<form action="/product/modify" method="post">
		            		<input type="hidden" id="pno" name="pno" value="${pno}">
		            		<button class="btn btn-primary mr-3" type="submit"><h5 id="h5Btn">수정하기</h5></button>
	                    	<button class="btn btn-danger mr-3" type="button" id="delBtn"><h5 id="h5Btn">삭제하기</h5></button>
		            	</form>
	            	</div>
            	</div>
            	<div class="row">
            		<div class="col-md-12">
		            	<hr>
            		</div>
            	</div>
                <div class="row text-center my-5">
                    <div class="col-md-6 text-center">
                        <h3>판매가</h3>
                    </div>
                    <div class="col-md-6 text-center">
                       <h3 id="price"></h3><!--  상품 가격 -->
                    </div>
                </div><!--div row end-->

                <div class="row text-center my-5">
                    <div class="col-md-6 text-center">
                        <h3>배송비</h3>
                    </div>
                    <div class="col-md-6 text-center">
                        <h3>3,000원</h3>
                    </div>
                </div><!--div row end-->

                <div class="row text-center my-4">
                    <div class="col-md-6 text-center">
                        <h3>수량</h3>
                    </div>
                    <div class="col-md-6 text-center">
                        <select class="form-control" name="cnt" id="cnt">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </div>
                </div><!--div row end-->

                <hr>
                <div class="row">
                    <div class="col-md-7 text-right">
                        <h4>총 가격</h4>
                    </div>
                    <div class="col-md-5 text-right">
                        <h4>23,000원</h4>
                    </div>
                </div><!--div row end-->
                <div class="row text-right mt-3">
                    <div class="col-md-4 offset-md-4">
                        <!-- <button class="btn btn-warning"><h3 id="h3Btn">바로구매</h3></button> -->
                        <a href="/member/cart" class="btn btn-warning"><h3 id="h3Btn">바로구매</h3></a>
                    </div>
                    <div class="col-md-4">
                        <button class="btn btn-success" data-toggle="modal" data-target="#cartUpdate"><h3 id="h3Btn">장바구니</h3></button>
                    </div>
                </div>
            </div>
        </div><!--div row end-->
        <hr>
    </div><!--div container end-->

    <div class="container">
        <div class="row my-3">
            <h2 class="col-md-4 offset-md-4 text-center">추천상품</h2>
        </div>
        <div class="row">
            <div class="col-md-3 text-center">
                <a href="/product/detail"><img class="img-thumbnail" src="/resources/img/product/redwood/rw.jpg"></a><hr>
                <a href="/product/detail">레드우드</a>
                <p>20,000원</p><hr>
            </div>
            <div class="col-md-3 text-center">
                <a href="/product/detail"><img class="img-thumbnail" src="/resources/img/product/blackcherry/bc.jpg"></a><hr>
                <a href="/product/detail">블랙베리</a>
                <p>20,000원</p><hr>
            </div>
            <div class="col-md-3 text-center">
                <a href="/product/detail"><img class="img-thumbnail" src="/resources/img/product/lavenderspa/ls.jpg"></a><hr>
                <a href="/product/detail">라벤더 스파</a>
                <p>20,000원</p><hr>
            </div>
            <div class="col-md-3 text-center">
                <a href="/product/detail"><img class="img-thumbnail" src="/resources/img/product/tranquilitea/tq.jpg"></a><hr>
                <a href="/product/detail">트랜퀄리티</a>
                <p>20,000원</p><hr>
            </div>
        </div><hr><!--div row end-->
    </div><!--div container end-->

    <div class="container ">
        <div class="row mb-3">
            <div class="col-md-8 offset-md-2">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs nav-justified">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="tab" href="#detail">상세설명</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#review">리뷰</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#QA">문의</a>
                    </li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div id="detail" class="container tab-pane active"><br>
                        <img src="/resources/img/product/com_top.jpg">
                        <img id="pdimg"><!-- 제품 상세 이미지 들어가는곳 -->
                        <img src="/resources/img/product/com_bot.jpg">
                    </div><!--div detail end-->
                    <div id="review" class="container tab-pane fade"><br>
                        <h3>리뷰</h3>
                        <p>해당 상품 리뷰 목록 표기</p>
                    </div><!--div review end-->
                    <div id="QA" class="container tab-pane fade"><br>
                        <h3>문의</h3>
                        <p>해당 상품 문의 목록 표시</p>
                    </div><!--div QA end-->
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
    
    <div class="modal fade" id="cartUpdate">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header">
                    <h4 class="modal-title">장바구니 추가완료</h4>
                </div><!-- modal header -->

                <div class="modal-body">
                    <h5>장바구니에 추가되었습니다.</h5>
                </div><!-- modal body -->

                <div class="modal-footer">
                    <button class="btn btn-warning" type="button" data-dismiss="modal">닫기</button>
                </div>

            </div><!-- modal content -->
        </div><!-- modal-dialog -->
    </div><!-- div modal fade end -->

    <!--bootstrap.min.js-->
    <script src="/resources/js/bootstrap.min.js"></script>
    <script type="text/javascript">
	    $(document).ready(function(){
	    	
	    	var pno = ${pno};
	    	
	    	function getOne() {
	    		$.getJSON("/product/one/" + pno, function(data){
	    			 $('#pimg').attr('src', data.pimg);
	    			 $('#pdimg').attr('src', data.pdimg);
	    			 $('#pname').text(data.pname);
	    			 $('#price').text(data.price);
	    		});//getJSON
	    	}//getOne
	    	getOne();
	    	
	    	$("#delBtn").on("click" , function() {
	    		$.ajax({
	    			type:'delete',
	    			url:'/product/' + pno,
	    			header : {
						"Content-Type" : "application/json",
						"X-HTTP-Method-Override" : "DELETE"
					},
					dataType : 'text',
					success: function(result) {
						if(result === 'SUCCESS') {
							alert("삭제 되었습니다.");
							window.location.href = "/product/list";
						}
					}
	    		});//ajax
	    	});//delBtn
	    	
	    });//ready
    </script>
</body>
</html>