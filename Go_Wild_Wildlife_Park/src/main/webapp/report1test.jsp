<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "com_gwwp_dao.AnimalManager"%>
<%@ page import = "com_gwwp_entity.Animal" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Report 1</title>
<link rel="stylesheet" href="liststyle.css">
</head>
<body>
<%
try{
	
	
	
	AnimalManager aMgr = new AnimalManager();
//	aMgr.sqlmodesetter();
	ArrayList<Animal> animals = aMgr.fetchJohnorMarry();


%>
<div class="table">
<h1>Report 1</h1>
<table id="customers">
	<tr>
		<th>Animal ID</th>
		<th>Animal Name</th>
		<th>Gender</th>
		<th>Arrived Year</th>
		<th>Keeper ID</th>
		<th>Keeper Name</th>
		
		
		
	</tr>
	<%for (Animal a : animals){
		%>
		<tr>
			<td> <%= a.getAnimalID() %></td>
			<td> <%= a.getName() %></td>
			<td> <%= a.getGender() %> </td>
			<td> <%= a.getArrivalYear() %></td>
			<td> <%= a.getKeeperID() %></td>
			<td> <%= a.getK_Name() %></td>
			
		</tr>
		<%
	}

	%>
	

</table>
</div>

</body>
</html>

<%} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

//<td><a href="edit_course.jsp?id=<%=course.getCourseId()
%>