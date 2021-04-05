<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- bootstrap.min.css -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<!--custom.css-->
<link href="../css/custom.css" rel="stylesheet">
<!--jquery.min.js-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<title>CRESCENT MOON</title>
<link rel="shortcut icon" type="image/x-icon" href="../img/cm_icon.png">
</head>
<body>
    <header><!--header-->
        <div class="container">
            <div class="row">
                <a href="../index.html" class="col-md-1 offset-md-5"><img src="../img/cm_logo.png" id="logo"></a>
                <div class="col-md-4 offset-md-2 mt-5 text-right">
                    <a href="./login.html">로그인/회원가입</a>
                    <a href="./cart.html" class="ml-3">장바구니</a><br>
                    <a href="../index.html">로그아웃</a>
                        <a href="./cart.html" class="ml-3">장바구니</a>
                        <a href="./mypage.html" class="ml-3">마이페이지</a><br>
                </div><!-- div col end -->
            </div><!-- div row end -->
        </div><!-- div container end -->
    </header><!-- header end -->
        
    <nav>
        <div class="container">
            <ul class="nav nav-tabs nav-justified" id="nav">
                <li class="nav-item"><a class="nav-link" href="../board/notice.html">공지사항</a></li>
                <li class="nav-item"><a class="nav-link" href="../product/list.html">전체상품</a></li>
                <li class="nav-item"><a class="nav-link" href="../board/community.html">커뮤니티</a></li>
                <li class="nav-item">
                    <div class="input-group">
                        <input class="form-control" type="text" id="search">
                        <div class="input-group-append">
                            <a href="../product/list.html" class="input-group-text"><img src="../icon/search.svg"></a>
                        </div>
                    </div>
                </li>
            </ul><!-- ul nav end -->
        </div><!-- div container end -->
    </nav><!-- nav end -->
    
    <div class="container mb-5" id="login">
        <form class="col-md-4 offset-md-4 text-center" id="joinform" action="../index.html" method="post">
            <h1 class="my-5">회원가입</h1>

            <div class="row mb-3">
                <button class="btn btn-primary" disabled><h6 id="h6Btn">이름</h6></button>
                <input class="form-control" type="text" name="name" id="name" placeholder="NAME">
            </div><!--이름-->
            <div class="row mb-3">
                <button class="btn btn-primary" disabled><h6 id="h6Btn">아이디</h6></button>
                <input class="form-control" type="text" name="mid" id="mid" placeholder="ID">
            </div><!--아이디-->
            <div class="row mb-3">
                <button class="btn btn-primary" disabled><h6 id="h6Btn">비밀번호</h6></button>
                <input class="form-control" type="password" name="pwd" id="pwd" placeholder="PWD">
            </div><!--비밀번호-->
            <div class="row mb-3">
                <button class="btn btn-primary" disabled><h6 id="h6Btn">비빌번호 확인</h6></button>
                <input class="form-control" type="password" name="pwdChk" id="pwdChk" placeholder="PWD CHECK">
            </div><!--비빌번호 확인-->
            <div class="row text-left">
                <button class="btn btn-primary" disabled><h6 id="h6Btn">전화번호</h6></button>
            </div>
            <div class="row mb-3">
                <input class="form-control col-md-3" type="text" name="tel1" id="tel1" maxlength="3" placeholder="010">
                <input class="form-control col-md-3 offset-md-1" type="text" name="tel2" id="tel2" maxlength="4" placeholder="1234">
                <input class="form-control col-md-3 offset-md-1" type="text" name="tel3" id="tel3" maxlength="4" placeholder="5678">
            </div><!--전화번호-->
            <div class="row">
                <button class="btn btn-primary" disabled><h6 id="h6Btn">주소</h6></button>
            </div>
            <div class="row mb-1">
                <input class="form-control col-md-4" type="text" name="postcode" id="postcode" placeholder="POSTCODE" disabled>
                <div class="col-md-4 offset-md-4 ml-2">
                    <button class="btn btn-warning" type="button" onclick="getPostcode();">우편번호검색</button>
                </div>
            </div><!--우편번호-->
            <div class="row mb-1">
                <input class="form-control" type="text" name="addr1" id="addr1" placeholder="ADDR" disabled>
            </div><!--주소-->
            <div class="row mb-3">
                <input class="form-control" type="text" name="addr2" id="addr2" placeholder="ADDR DETAIL">
            </div><!--상세주소-->
            
            
            <div class="text-center">
                <button class="btn btn-success" type="button" id="joiunBtn"><h4 id="h4Btn">회원가입</h4></button>
            </div>
        </form>
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
    <script src="../js/bootstrap.min.js"></script>
    
    <script>
        $(document).ready(function() {
            $("#joiunBtn").click(function() {
                if( $.trim( $("#id").val() ) == '' ){
                    alert("아이디를 확인 하세요.");
                    $("#mid").focus();
                    return;
                }
                if( $.trim( $("#pwd").val() ) == '' ){
                    alert("패스워드를 확인 하세요.");
                    $("#pwd").focus();
                    return;
                }
                if( $("#pwd").val() != $("#pwdChk").val() ){
                    alert("패스워드와 패스워드 확인이 다릅니다.");
                    $("#pwd").focus();
                    return;
                }
                if( $.trim( $("#tel1").val() ) == '' ){
                    alert("전화번호를 확인 하세요.");
                    $("#tel1").focus();
                    return;
                }
                if( $.trim( $("#tel2").val() ) == '' ){
                    alert("전화번호를 확인 하세요.");
                    $("#tel2").focus();
                    return;
                }
                if( $.trim( $("#tel3").val() ) == '' ){
                    alert("전화번호를 확인 하세요.");
                    $("#tel3").focus();
                    return;
                }
                joinform.submit();
                alert("회원가입이 완료되었습니다.");
            });//click
        });
    </script>

<!--카카오 주소 API-->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
        function getPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                    
                    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수
                    
                    //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }
                    
                    // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                    if(data.userSelectedType === 'R'){
                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                            extraAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if(data.buildingName !== '' && data.apartment === 'Y'){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        if(extraAddr !== ''){
                            extraAddr = ' (' + extraAddr + ')';
                        }
                        // 조합된 참고항목을 해당 필드에 넣는다.
                        document.getElementById("addr2").value = extraAddr;
                        
                    } else {
                        document.getElementById("addr2").value = '';
                    }
                    
                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('postcode').value = data.zonecode;
                    document.getElementById("addr1").value = addr;
                    // 커서를 상세주소 필드로 이동한다.
                    document.getElementById("addr2").focus();
                }
            }).open();
        }
    </script><!--카카오 주소 API end-->
</body>
</html>