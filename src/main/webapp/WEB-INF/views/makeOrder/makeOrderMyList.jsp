<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style>
	table :active {
	background-color: yellow;
}

</style>
<script>

</script>
</head>

<body>
	<header><jsp:include page="../main/header.jsp"/></header>
	<div class="container">

		<div style="text-align: center;">
			<img alt="asd" src="${conPath }/mOrderImage/indexImg/wedding-rings-3611277_1920.jpg" width="100%" height="450px;">
		</div>
		<c:if test="${paging.total eq 0 }"> 신청한 레시피가 없습니다.</c:if>
		
		<c:forEach items="${mOrderList }" var="mo">
		<table onclick="location.href='${conPath}/makeOrderView.do?mrnum=${mo.mrnum }'" style="float: left;" class="table">
			<tr>
				<td rowspan="2"><img alt="${mo.mrimg}" src="${conPath }/mOrderImage/${mo.mrimg}" style="width:100px;"></td>
				<td>번호 : ${mo.mrnum }</td><td>레시피 이름 : ${mo.mrtitle}</td><td>신청수량 : ${mo.mrcount }(EA)</td>
			</tr>
			<tr>
				<td>신청일 : ${mo.mrdate} </td>
				<td>입찰 마감일 : ${mo.mrenddate} </td>
				<td>제작 요청기한 : ${mo.mrtimelimit}</td>	
				
			</tr>
		</table>
		
		<c:if test="${mo.mrstatus eq 4 }">
		 
		 	
		 	<div >
		 		<button onclick="location.href='${conPath}/Product/productWriteView.do?mrnum=${mo.mrnum}&mid=${mem.mid}&mrcount=${mo.mrcount}'" class="btn btn-primary btn-lg btn-block">판매하러가기</button>
		 	</div>
		 </c:if>
		
	</c:forEach>
	</div>
</body>
</html>