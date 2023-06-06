<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> <link rel="stylesheet" href="liststyle.css">
<meta charset="UTF-8">
<title>Go Wild Wildlife Park</title>
</head>
<body  >
<jsp:include page="header.jsp" />
	<form action="Species_action.jsp">
	
		Species Types : <input type="text"
		name="type" required><br><br>
		Species Group : <input type="text"
		name="group" required><br><br>
		Life Style : <input type="text"
		name="style" required><br><br>
		Conservation Status : <input type="text"
		name="status" required><br><br>
		<button type="Submit">Save</button> &nbsp;
		<button type="reset">Clear</button>
		
	</form>
</body>
</html>