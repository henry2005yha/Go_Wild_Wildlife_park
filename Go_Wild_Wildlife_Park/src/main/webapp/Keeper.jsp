<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> <link rel="stylesheet" href="liststyle.css">
<meta charset="UTF-8">
<title>Go Wild Wildlife Park</title>
</head>
<body >
<jsp:include page="header.jsp" />
	<form action="Keeper_action.jsp">
	
		Keeper Name : <input type="text"
		name="name" required><br><br>
		Date of Birth : <input type="date"
		name="DOB" required><br><br>
		Rank : <input type="text"
		name="rank" required><br><br>
		
		<button type="Submit">Save</button> &nbsp;
		<button type="reset">Clear</button>
		
	</form>
</body>
</html>