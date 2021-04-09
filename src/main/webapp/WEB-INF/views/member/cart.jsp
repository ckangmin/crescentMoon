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
    
    <div class="container my-3">
        <div class="row">
            <div class="col-md-12">
                <h1><strong>장바구니</strong></h1>
            </div>
            <div class="col-md-12 text-center">
                <table class="table">
                    <thead>
                        <tr>
                            <th id="cartPayTh"><h4><strong>선택</strong></h4></th>
                            <th><h4><strong>상품</strong></h4></th>
                            <th><h4><strong>상품명</strong></h4></th>
                            <th><h4><strong>수량</strong></h4></th>
                            <th><h4><strong>소계</strong></h4></th>
                        </tr>
                    </thead>
                    <tbody id="cartList">
                        
                    </tbody>
                </table>
            </div>
        </div><!-- div row end -->

        <hr>

        <div class="row">
            <div class="col-md-12 text-right" id="total">
                
            </div>
        </div><!-- div row end -->

        <hr>

        <div class="row">
            <div class="col-md-6 ">
                <button type="button" class="btn btn-dark" id="checkAll"><h5 id="h5Btn">전체선택</h5></button>
                <button type="button" class="btn btn-dark" id="unCheckAll"><h5 id="h5Btn">전체해제</h5></button>
            </div>
            <div class="col-md-6 text-right">
                <button type="button" class="btn btn-danger" id="selDelBtn"><h5 id="h5Btn">선택삭제</h5></button>
                <button type="button" class="btn btn-info" id="orderBtn"><h5 id="h5Btn">주문하기</h5></button>
            </div>
        </div><!-- div row end -->
    </div><!-- div container end-->
    
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
    		
    		var mno = ${login.mno};
    		const checkBoxes = document.getElementsByName('cnoArr');
    		
			function getCartList() {
	    		
	    		$.getJSON("/cart/list/" + mno, function(data) {
					var str = "";
					
					$(data).each(function() {
						str += "<tr><td id='cartPayTd'><input type='checkbox' name='cnoArr' value='"
						+ this.cno + "'></td><td id='cartPayTd'><img src='"
						+ this.pimg + "' id='cartPayImg'></td><td id='cartPayTd'><h4><strong>"
						+ this.pname + "</strong></h4></td><td id='cartPayTd'><h4><strong>"
						+ this.cnt + "</strong></h4></td><td id='cartPayTd'><h4><strong>"
						+ this.result + "</strong></h4></td></tr>";
					});//each
					
					$("#cartList").html(str);
				});//getJSON
			}//getCartList
			getCartList();
			
			function getTotal() {
				$.getJSON("/cart/total/" + mno, function(data) {
					$("#total").html("<h4>총 주문금액 : " + data.total + "원</h4>");
				});//getJSON
			}//getTotal
			getTotal();
			
			$("#checkAll").on("click", function() {
				checkBoxes.forEach((checkBox) => {
					checkBox.checked = true;
				})
			});//checkBox
			
			$("#unCheckAll").on("click", function() {
				checkBoxes.forEach((checkBox) => {
					checkBox.checked = false;
				})
			});//checkBox
			
			$("#selDelBtn").on("click", function() {
				let cnoArr = new Array();
				
				checkBoxes.forEach((checkBox) => {
					if(checkBox.checked === true) {
// 						console.log(checkBox.value);
						cnoArr.push(checkBox.value);
					}
				});//forEach
				
				if(cnoArr.length === 0) {
					alert("삭제할 상품을 선택해주세요.");
					return;
				}
				
				$.ajax({
					type : 'delete',
					url : '/cart/remove',
					header : {
						"Content-Type" : "application/json",
						"X-HTTP-Method-Override" : "DELETE"
					},
					contentType: "application/json",
					dataType : 'text',
					data : JSON.stringify(cnoArr),
					success : function(result) {
						alert("선택한 상품이 장바구니에서 삭제되었습니다.");
						getCartList();
						getTotal();
// 						location.href = "/cart";
					}
				});//ajax
				
			});//selDelBtn
			
			$("#orderBtn").on("click", function() {
				let cnoArr = new Array();
				
				checkBoxes.forEach((checkBox) => {
					if(checkBox.checked === true) {
// 						console.log(checkBox.value);
						cnoArr.push(checkBox.value);
					}
				});//forEach
				
				console.log(cnoArr);
				
				if(cnoArr.length === 0){
					alert("결제할 상품을 선택해주세요.");
					return;
				}
				
				$.ajaxSettings.traditional = true;
				$.ajax({
					type : 'POST',
					url : '/order/payment',
					data : {cnoArr : cnoArr},
					success : function() {}
				});//ajax
				
				location.href = "/order/payment";
			});//orderBtn
			
		});//ready
    </script>
</body>
</html>