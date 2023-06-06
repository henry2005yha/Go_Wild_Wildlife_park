<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com_gwwp_dao.KeeperManager"%>
<%@ page import="com_gwwp_entity.Keeper"%>
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

		KeeperManager kMgr = new KeeperManager();
		ArrayList<Keeper> keepers = kMgr.fetchAll();
	%>
	<table id="customers">
		<tr>
			<th>Id</th>
			<th>Keeper Name</th>
			<th>Date of Birth</th>
			<th>Rank</th>
			<th>Edit Keeper</th>
			<th>Delete Keeper</th>
		</tr>
		<%
		for (Keeper keeper : keepers) {
			//out.println(course.getCourseId() + "\t" + course.getCourseName() + "\t" + course.getCourseText());
		%>
		<tr>
			<td><%=keeper.getKeeperID()%></td>
			<td><%=keeper.getName()%></td>
			<td><%=keeper.getDateOfBirth()%></td>
			<td><%=keeper.getRank()%></td>
			<td><a class="link" href="keeper_edit.jsp?id=<%=keeper.getKeeperID()%>">Edit</a></td>
			<td><a class="link" href="keeper_delete.jsp?id=<%=keeper.getKeeperID()%>">Delete</a></td>
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