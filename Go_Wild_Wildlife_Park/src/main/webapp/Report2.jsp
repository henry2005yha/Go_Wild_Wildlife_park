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
<title>Report 2</title>
</head>
<link rel="stylesheet" href="liststyle.css">
<body>
<jsp:include page="header.jsp" />
<%
try{
	
	AnimalManager aMgr = new AnimalManager();
	ArrayList<Animal> animal = aMgr.fetchAnimalGroupByKeeper();


%>
<div class="table">
<h1>Report 2</h1>
<table id="customers">
	<tr>
		<th>Keeper Name</th>
		<th>Total Animal</th>	
			
		
	</tr>
	<%for (Animal a : animal){
		%>
		<tr>
			<td> <%= a.getK_Name() %></td>
			<td> <%= a.getTotalAnimal() %></td>
			
			
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