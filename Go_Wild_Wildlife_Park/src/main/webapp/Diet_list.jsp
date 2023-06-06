<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com_gwwp_dao.DietManager"%>
<%@ page import="com_gwwp_entity.Diet"%>
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

		DietManager dMgr = new DietManager();
		ArrayList<Diet> diets = dMgr.fetchAll();
	%>
	<table id="customers">
		<tr>
			<th>Id</th>
			<th>Diet type</th>
			<th>No. of Feed</th>
			<th>Edit Diet</th>
			<th>Delete Diet</th>
		</tr>
		<%
		for (Diet Diet : diets) {
			//out.println(course.getCourseId() + "\t" + course.getCourseName() + "\t" + course.getCourseText());
		%>
		<tr>
			<td><%=Diet.getDietID()%></td>
			<td><%=Diet.getType()%></td>
			<td><%=Diet.getNumberOfFeed()%></td>
			<td><a class="link" href="edit_course.jsp?id=<%=Diet.getDietID()%>">Edit</a></td>
			<td><a class="link" href="delete_course.jsp?id=<%=Diet.getDietID()%>">Delete</a></td>
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