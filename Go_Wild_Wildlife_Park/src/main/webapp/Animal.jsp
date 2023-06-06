<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


 <link rel="stylesheet" href="liststyle.css">
<meta charset="UTF-8">
<title>Go Wild Wildlife Park</title>
</head>
<body >

<jsp:include page="header.jsp" />

	<form action="Animal_action.jsp">
	
		Name : <input type="text"
		name="name" required><br><br>
		
		Animals Gender: &nbsp;
		
		<label for="AnimalsGenderM">M</label> 
		<input type="radio"id="AnimalsGenderM" name="AnimalsGender" value="M" required>
		&nbsp; &nbsp;
		<label for="AnimalsGenderF">F</label>
		<input type="radio"id="AnimalsGenderF" name="AnimalsGender" value="F" required>
		<br><br>
		Arrival Year : <input type="number"
		name="year" required><br><br>
		
		
		Keeper ID : <input type="number"
		name="kid" required><br><br>
		
		
		Enclosure ID : <input type="number"
		name="eid" required><br><br>
		
		
		Diet ID : <input type="number"
		name="did" required><br><br>
		
		Species ID : <input type="number"
		name="sid" required><br><br>
		
		
		
		<button type="Submit">Save</button> &nbsp;
		<button type="reset">Clear</button>
		
	</form>
	</body>
</html>