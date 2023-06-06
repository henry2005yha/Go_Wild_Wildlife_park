<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com_gwwp_dao.SpeciesManager"%>
<%@ page import="com_gwwp_entity.Species"%>
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

		SpeciesManager kMgr = new SpeciesManager();
		ArrayList<Species> Speciess = kMgr.fetchAll();
	%>
	<table id="customers">
		<tr>
			<th>Id</th>
			<th>Species Types</th>
			<th>Species Group</th>
			<th>LifeStyle</th>
			<th>ConservationStatus</th>
			<th>Edit Species</th>
			<th>Delete Species</th>
			
		</tr>
		<%
		for (Species Species : Speciess) {
			//out.println(course.getCourseId() + "\t" + course.getCourseName() + "\t" + course.getCourseText());
		%>
		<tr>
			<td><%=Species.getSpeciesID()%></td>
			<td><%=Species.getSpeciesTypes()%></td>
			<td><%=Species.getSpeciesGroup()%></td>
			<td><%=Species.getLifeStyle()%></td>
			<td><%=Species.getConservationStatus()%></td>
			<td><a class="link" href="edit_course.jsp?id=<%=Species.getSpeciesID()%>">Edit</a></td>
			<td><a class="link" href="delete_course.jsp?id=<%=Species.getSpeciesID()%>">Delete</a></td>
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