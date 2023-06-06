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
<jsp:include page="header.jsp" />	<form action="Enclosure_action.jsp">
	
		Enclosure type : <input type="text"
		name="type" required><br><br>
		Location : <input type="text"
		name="loc" required><br><br>
		
		<button type="Submit">Save</button> &nbsp;
		<button type="reset">Clear</button>
		
	</form>
	</body>
</html>
