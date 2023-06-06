<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="com_gwwp_dao.KeeperManager"%>
<%@ page import="com_gwwp_entity.Keeper"%>
<%@ page import="com_gwwp.DBManager"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Keeper</title>
</head>
<body>
	<%
	String keeperId = request.getParameter("id");
	KeeperManager dao = new KeeperManager();
	int rowsAffected;
	try {
		rowsAffected = dao.delete(Integer.parseInt(keeperId));
		out.println("No of rows affected - " + rowsAffected);
	} catch (ClassNotFoundException ex) {
		out.println(ex.getMessage());
	} catch (SQLException e) {
		out.println(e.getMessage());
	}
	%><% response.sendRedirect("Keeper_list.jsp"); %>
</body>
</html>