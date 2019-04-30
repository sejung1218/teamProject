<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	$(window).ready(function() {
		
		
	});
	
</script>
</head>
<body>
<table class="table-striped table-bordered" style="margin: 0 auto; width: 80%;">
<c:set var="total" value="0"/>
<% int i = 0; %>
        <tr>
            <th></th><th>No.</th><th>이미지</th><th>상품명/옵션명</th><th>단가</th><th>수량</th><th>총금액</th>
        </tr>
      
        <c:forEach items="${cartList}" var="list" varStatus="idx">
	  		<input type="hidden" id="<%=i %>" name="pnum"  value="${list.pnum }">
	  		<input type="hidden" class="<%=i %>" name="pcount" value="${list.pcount }">
	  		<c:set var="sum" value="${list.price * list.ctcount }"></c:set>
			<c:set var="total" value="${total+sum }"></c:set>
        	<tr>
        	<td>
        		<input type="checkbox" name="ctnum" class="<%=i %>" value="${list.ctnum }">
        	</td>
       			<td>
       			<a >${idx.index }</a>
       			</td>
       			<td>
       			<img src="${conPath }/makeOderImg/${list.mrimg }" alt="${list.mrimg }" >
       			</td>
       			<td>
       			<a href="${conPath}/Product/productView.do?pnum=${list.pnum}&pageNum=${paging.currentPage}">${list.ptitle } / ${list.mrtitle }</a>
       			</td>
       			<td>
       			<span><fmt:formatNumber value="${list.price }" pattern="#,###"/>원 </span>
       			</td>
       			<td>
       			<input type="number" class="<%=i++ %>" name="ctcounts" min="0" maxlength="${list.pcount }" value="${list.ctcount }" > 
       			</td>
       			<td>
       			<label>총 <fmt:formatNumber value="${list.price * list.ctcount }" pattern="#,###" />원</label>
       			</td>
       			<td>
       			<button class="deleteCart btn btn-primary btn-lg btn-block" name="${list.ctnum}" >x를 눌러 조의를 표하시오</button>
       			</td>
        	</tr>	
        </c:forEach>
        <input type="hidden" value="${total }" name="total" id="total">
     </table>	
</body>
</html>