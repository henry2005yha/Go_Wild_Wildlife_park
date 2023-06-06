<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="liststyle.css">
<meta charset="UTF-8">
<title>Go Wild Wildlife Park</title>
</head>
<body>
<jsp:include page="header.jsp" />
	<form action="Diet_action.jsp">
	
		Diet type : <input type= "text"   name="type" required><br><br>
		
		Number of Feed Per Day : <input 
		type="number" id="quantity" name="nof" step="1" required>
		<br><br>
		
		<button type="Submit">Save</button> &nbsp;
		<button type="reset">Clear</button>
		
		
	</form>
</html>