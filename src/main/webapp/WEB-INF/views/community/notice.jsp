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
                <li class="nav-item"><a class="nav-link active" href="/community/notice">공지사항</a></li>
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
        <div class="row my-3">
            <h1 class="col-md-6 align-self-center"><strong>공지사항목록</strong></h1>
            <div class="col-md-6 align-self-center text-right">
                <a href="/crescent">홈</a>
                <a href="#">-</a>
                <a href="/community/notice">공지사항목록</a>
            </div>
        </div><!-- div row end -->

        <table class="table table-hover text-center">
            <thead>
                <tr>
                    <th id="notiTh"><h4><strong>글번호</strong></h4></th>
                    <th><h4><strong>제목</strong></h4></th>
                    <th><h4><strong>작성일</strong></h4></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="notice" items="${list}">
	                <tr id="replies">
	                    <td>${notice.nno}</td>
	                    
	                    <td>
	                    	<a href="/community/noticedetail?nno=${notice.nno}">
	                    		${notice.ntitle}
	                    	</a>
	                    </td>
	                    
	                    <td>${notice.nwritedate}</td>
	                </tr>
	        	</c:forEach>
            </tbody>
        </table>
        <div class="row">
            <div class="col-md-12 text-right">
               	<c:if test="${login.mno == 1}">
   		            <a href="/community/noticewrite" class="btn btn-success">
	                    <h5 id="h5Btn">글 쓰러 가기</h5>
	                </a>
               	</c:if>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <ul class="pagination  justify-content-center">
                    <!-- 이전 페이지 버튼 -->
				    <c:if test="${pageMaker.prev}">
				    	<li class="page-item">
				    		<a class="page-link"
				    			href="/community/notice?page=${pageMaker.startPage -1}">
				    			&laquo;	
				    		</a>
				    	</li>
				    </c:if>
				    
				    <!-- 페이지 번호 버튼 -->
				    <c:forEach begin="${pageMaker.startPage}"
				    			end="${pageMaker.endPage}"
				    			var="idx">		
				    	<li class="page-item
				    		<c:out value="${pageMaker.cri.page == idx ? 'active' : '' }" />">
				    		<a class="page-link"
				    			href="/community/notice?page=${idx}">${idx}</a>
				    	</li>
				    </c:forEach>
				    
				    <!-- 다음 페이지 버튼 -->
				    <c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
				    	<li class="page-item">
				    		<a class="page-link"
				    			href="/community/notice?page=${pageMaker.endPage +1}">
				    			&raquo;	
				    		</a>
				    	</li>
				    </c:if>
                </ul>
            </div>
        </div><!-- div row end -->
    </div> <!--container-->
    
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
</body>
</html>