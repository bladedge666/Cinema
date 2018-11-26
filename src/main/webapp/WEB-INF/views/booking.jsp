<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.io.*,java.util.*,app.models.*" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page isELIgnored="false" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Booking Showtime</title>
	<script src="<c:url value="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" />"></script>
	<link rel="stylesheet" href="<c:url value="/resources/css/booking.css" />">
	<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/css/template.css" />">
   	<script src="<c:url value="/resources/js/booking.js?newversion" />"></script>
    
</head>
<body>
    <jsp:include page="menu-template.jsp"/>

	<div class="container-fluid" padding-top="100px">
		<table border="1" padding-top="100px">
		<tr>
		 <c:forEach items="${seats}" var="seat">
		 	<c:if test = "${seat.location == 'B1'}">
		 		</tr>
		 		<tr>
		 	</c:if>
		 	<c:if test = "${seat.location == 'C1'}">
		 		</tr>
		 		<tr>
		 	</c:if>
		 		<c:if test="${seat.seatTaken == 1}">
		 			<td class="taken">
		 		</c:if>
		 		<c:if test="${seat.seatTaken == 0}">
		 			<td class="available">
		 		</c:if>
		 	<c:out value="${seat.location}"/>
			</td>
		 </c:forEach>
		 </tr>
		 </table>
		 <br>
		 <div class="flex">
     		 <input type="button" value="Continue" id="continue" class="button" disabled></button>
      		<input type="button" value="cancel" class="button"></button>
    	</div>
	 </div>
</body>
</html>