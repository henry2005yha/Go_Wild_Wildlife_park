<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="com_gwwp_dao.EnclosureManager"%>
<%@ page import="com_gwwp_entity.Enclosure"%>
<%@ page import="com_gwwp.DBManager"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	try {
		String et = request.getParameter("type");
		String el = request.getParameter("loc");
	
		
		DBManager dbMgr = new DBManager();//create object
		dbMgr.getConnection(); //connect DB
		
		
		Enclosure e = new Enclosure(et,el);
		
		EnclosureManager eMgr = new EnclosureManager();
		int rowAffected = -1;
		
		rowAffected = eMgr.insert(e);
		
		if (rowAffected == 1)
			out.println("Record insert successfully");
		
	}catch (ClassNotFoundException e) {

		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	%>
	<%
	response.sendRedirect("Enclosure_list.jsp");
	%>
</body>
</html>