<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com_gwwp_dao.AnimalManager"%>
<%@ page import="com_gwwp_entity.Animal"%>
<%@ page import="com_gwwp.DBManager"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Go Wild Wildlife Park</title>
 <link rel="stylesheet" href="liststyle.css">
 

</head>
<body>
<jsp:include page="header.jsp" />
<%
	try {
		DBManager dbMgr = new DBManager();
		dbMgr.getConnection();

		AnimalManager eMgr = new AnimalManager();
		ArrayList<Animal> Animals = eMgr.fetchAll();
	%>
	<table id="customers">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Gender</th>
			<th>Arrival Year</th>
			<th>Keeper ID</th>
			<th>Enclosure ID</th>
			<th>Diet ID</th>
			<th>Species ID</th>
			<th>Edit Animal</th>
			<th>Delete Animal</th>
		</tr>
		<%
		for (Animal Animal : Animals) {
			//out.println(course.getCourseId() + "\t" + course.getCourseName() + "\t" + course.getCourseText());
		%>
		<tr>
			<td><%=Animal.getAnimalID()%></td>
			<td><%=Animal.getName()%></td>
			<td><%=Animal.getGender()%></td>
			<td><%=Animal.getArrivalYear()%></td>
			<td><%=Animal.getKeeperID()%></td>
			<td><%=Animal.getEnclosureID()%></td>
			<td><%=Animal.getDietID()%></td>
			<td><%=Animal.getSpeciesID()%></td>
			<td><a class="link" href="edit_course.jsp?id=<%=Animal.getEnclosureID()%>">Edit</a></td>
			<td><a class="link" href="delete_course.jsp?id=<%=Animal.getEnclosureID()%>">Delete</a></td>
		</tr>
		<%}
		} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
		%>
		</table>
</body>
</html>