<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com_gwwp_dao.EnclosureManager"%>
<%@ page import="com_gwwp_entity.Enclosure"%>
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

		EnclosureManager eMgr = new EnclosureManager();
		ArrayList<Enclosure> Enclosures = eMgr.fetchAll();
	%>
	<table id="customers">
		<tr>
			<th>Id</th>
			<th>Enclosure type</th>
			<th>Location</th>
			<th>Edit Enclosure</th>
			<th>Delete Enclosure</th>
		</tr>
		<%
		for (Enclosure Enclosure : Enclosures) {
			//out.println(course.getCourseId() + "\t" + course.getCourseName() + "\t" + course.getCourseText());
		%>
		<tr>
			<td><%=Enclosure.getEnclosureID()%></td>
			<td><%=Enclosure.getType()%></td>
			<td><%=Enclosure.getLocation()%></td>
			<td><a class="link" href="Enclosure_edit.jsp?id=<%=Enclosure.getEnclosureID()%>">Edit</a></td>
			<td><a class="link" href="Enclosure_delete.jsp?id=<%=Enclosure.getEnclosureID()%>">Delete</a></td>
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