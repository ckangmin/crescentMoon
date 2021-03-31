<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- bootstrap.min.css -->
<link href="../resources/css/bootstrap.min.css" rel="stylesheet">
<!--custom.css-->
<link href="../resources/css/custom.css" rel="stylesheet">
<!--jquery.min.js-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<title>CRESCENT MOON</title>
<link rel="shortcut icon" type="image/x-icon" href="../resources/img/cm_icon.png">
</head>
<body>
    <header><!--header-->
        <div class="container">
            <div class="row">
                <a href="../resources/index.html" class="col-md-1 offset-md-5"><img src="../resources/img/cm_logo.png" id="logo"></a>
                <div class="col-md-4 offset-md-2 mt-5 text-right">
                    <a href="../resources/resources/member/login.html">로그인/회원가입</a>
                    <a href="../resources/member/cart.html" class="ml-3">장바구니</a><br>
                    <a href="../resources/index.html">로그아웃</a>
                        <a href="../resources/member/cart.html" class="ml-3">장바구니</a>
                        <a href="../resources/member/mypage.html" class="ml-3">마이페이지</a><br>
                </div><!-- div col end -->
            </div><!-- div row end -->
        </div><!-- div container end -->
    </header><!-- header end -->
        
    <nav>
        <div class="container">
            <ul class="nav nav-tabs nav-justified" id="nav">
                <li class="nav-item"><a class="nav-link" href="../resources/board/notice.html">공지사항</a></li>
                <li class="nav-item"><a class="nav-link active" href="./list.html">전체상품</a></li>
                <li class="nav-item"><a class="nav-link" href="../resources/board/community.html">커뮤니티</a></li>
                <li class="nav-item">
                    <div class="input-group">
                        <input class="form-control" type="text" id="search">
                        <div class="input-group-append">
                            <a href="./list.html" class="input-group-text"><img src="../resources/icon/search.svg"></a>
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
                <a href="./addprod.html"><button class="btn btn-success mr-3" type="button"><h5 id="h5Btn">상품추가</h5></button></a>
                <a href="/resources/index.html">홈</a>
                <a href="#">-</a>
                <a href="./list.html">상품목록</a>
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
    function getAllList(){
		$.getJSON("/addproduct/all" , function(da){
		var str= "";
			console.log(da.length);
			console.log(da);
	//자바의 forEach와 유사한 구문.
	//da내부의 요소들을 하나하나 순서대로 뽑아서
	//내부 코드를 실행합니다.  
	$(da).each(
			function(){
				// 특정요소 .html("문자열"); 을 실행하면
				//<> 문자열 </> 과 같이 태그사이에 넣을 문자열을
				// 지정할 수 있고, 그 문자열은 실제로 삽입될때는
				// html 요소로 간주되어 들어갑니다.
				// ul 태그 내에 li형태로 댓글정보를 넣기 위해
				// 아래와 같이 설정합니다.
				str += "<div class='col-md-4 text-center'>"+
                "<a href='./detail.html?pno="+this.pno+"'><img class='img-thumbnail' src='" +this.pimg+ "'></a><hr>"+
                "<a><strong>"+this.pname+"</strong></a>"+
                "<p>"+this.price+"</p></div>";
			});
		$("#productlist").html(str);
		});
		
	}
    getAllList();
    
    
    
    
    </script>
</body>
</html>