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
            <h1 class="col-md-6 align-self-center"><strong>커뮤니티</strong></h1>
            <div class="col-md-6 align-self-center text-right">
                <a href="/crescent">홈</a>
                <a href="#">-</a>
                <a href="/community/">커뮤니티</a>
            </div>
        </div><!-- div row end -->

        <div class="row">
            <div class="col-md-12">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs nav-justified">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="tab" href="#qna" id="qnaNav">QnA</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#review" id="reviewNav">리뷰</a>
                    </li>
                </ul>
                
                <!-- Tab panes -->
                <!--==============문의===============-->
                <div class="tab-content">
                    <div id="qna" class="container tab-pane active"><br>
                        <div class="container">
                            <div class="row">
                                <table class="table table-hover">
                                    <thead>
                                        <tr class="text-center">
                                            <th id="cummuTh"><h4><strong>글번호</strong></h4></th>
                                            <th><h4><strong>제목</strong></h4></th>
                                            <th><h4><strong>작성자</strong></h4></th>
                                            <th><h4><strong>작성일</strong></h4></th>
                                        </tr>
                                    </thead>
                                    <tbody id="qnaList">
                                        
                                    </tbody>
                                </table>
                            </div><!--div row end-->
                            
                            <div class="row">
                                <div class="col-md-12 text-right">
                                    <a class="btn btn-success" href="/community/askwrite"><h5 id="h5Btn">문의 작성하기</h5></a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <ul class="pagination  justify-content-center">
                                        <li class="page-item disabled">
                                            <a class="page-link" href="#">&laquo;</a>
                                        </li>
                                        <li class="page-item active">
                                            <a class="page-link" href="#">1</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">2</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">3</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">4</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">5</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">&raquo;</a>
                                        </li>
                                    </ul>
                                </div>
                            </div><!-- div row end -->
                        </div><!--div container end-->
                    </div><!--div qna end-->

                    <!--==============리뷰===============-->
                    <div id="review" class="container tab-pane fade"><br>
                        <div class="container">
                            <div class="row">
                                <table class="table table-hover">
                                    <thead>
                                        <tr class="text-center">
                                            <!-- <th><h4>상품이미지</h4></th> -->
                                            <th id="cummuTh"><h4><strong>상품이미지</strong></h4></th>
                                            <th><h4><strong>상품명</strong></h4></th>
                                            <th><h4><strong>제목</strong></h4></th>
                                            <th><h4><strong>작성자</strong></h4></th>
                                            <th><h4><strong>작성일</strong></h4></th>
                                        </tr>
                                    </thead>
                                    <tbody id="reviewList">
                                    	
                                    </tbody>
                                </table>
                            </div><!--div row end-->

                            <div class="row">
                                <div class="col-md-12 text-right">
                                    <a class="btn btn-success" href="/community/reviewwrite"><h5 id="h5Btn">리뷰 작성하기</h5></a>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-md-12">
                                    <ul class="pagination  justify-content-center">
                                        <li class="page-item disabled">
                                            <a class="page-link" href="#">&laquo;</a>
                                        </li>
                                        <li class="page-item active">
                                            <a class="page-link" href="#">1</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">2</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">3</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">4</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">5</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">&raquo;</a>
                                        </li>
                                    </ul>
                                </div>
                            </div><!-- div row end -->
                        </div><!--div container end-->
                    </div><!--div review end-->
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
    <script src="/resources/js/bootstrap.min.js"></script>
    
    <script type="text/javascript">
    	$(document).ready(function() {
    		function getQnaList() {
				$.getJSON("/qna/list", function(data) {
					var str = "";
					
					$(data).each(function() {
						var timestamp = this.qwritedate;
						var date = new Date(timestamp);
						
						var formattedTime = date.getFullYear()
											+ "/" + (date.getMonth()+1)
											+ "/" + date.getDate();
						
						str += "<tr class='text-center'><td id='cummuTd'><h4>"
							+ this.qno + "</h4></td><td id='cummuTd'><h4><a href='/community/askdetail?qno=" + this.qno + "'>"
							+ this.qtitle + "</a></h4></td><td id='cummuTd'><h4>"
							+ this.mid + "</h4></td><td id='cummuTd'><h4>"
							+ formattedTime + "</h4></td></tr>";
					});//each
					$("#qnaList").html(str);
				});//getJSON
			}//getQnaList
    		getQnaList();
			
    		function getReviewList() {
				$.getJSON("/review/list", function(data) {
					var str = "";
					
					$(data).each(function() {
						var timestamp = this.rwritedate;
						var date = new Date(timestamp);
						
						var formattedTime = date.getFullYear()
											+ "/" + (date.getMonth()+1)
											+ "/" + date.getDate();
						
						str += "<tr class='text-center'><td id='cummuTd'><h4><img src='"
							+ this.pimg + "' id='cummuReImg'></h4></td><td id='cummuTd'><h4><br>"
							+ this.pname + "</h4></td><td id='cummuTd'><h4><br><a href='/community/reviewdetail?rno=" + this.rno + "'>"
							+ this.rtitle + "</h4></td><td id='cummuTd'><h4><br>"
							+ this.mid + "</h4></td><td id='cummuTd'><h4><br>"
							+ formattedTime + "</h4></td></tr>";
					});//each
					$("#reviewList").html(str);
				});//getJSON
			}//getReviewList
			getReviewList();
			
			function setCategory() {
// 				console.log("${cate.cate}");

				if(${cate.cate != null}) {
					$("#qnaNav").attr("class", "nav-link");
					$("#reviewNav").attr("class", "nav-link active");
					$("#qna").attr("class", "container tab-pane fade");
					$("#review").attr("class", "container tab-pane active");
				}
				
			}//getCategory
			setCategory();
			
		});//ready
    </script>
</body>
</html>