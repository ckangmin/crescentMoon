/**
 * 검색 기능 스크립트 파일
 */
$('#searchBtn').on("click", function() {
	pname = $("#search").val();
	
	location.href = "/product/list?pname=" + pname;
});