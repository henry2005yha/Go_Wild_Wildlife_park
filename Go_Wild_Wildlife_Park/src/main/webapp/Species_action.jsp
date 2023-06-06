<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="com_gwwp_dao.SpeciesManager"%>
<%@ page import="com_gwwp_entity.Species"%>
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
		String st = request.getParameter("type");
		String gp = request.getParameter("group");	
		String sty = request.getParameter("style");
		String sta = request.getParameter("status");
		
		DBManager dbMgr = new DBManager();//create object
		dbMgr.getConnection(); //connect DB
		
		// Keeper k = new Keeper(kn,dateOfBirth,rank)
		Species k= new Species(st,gp,sty,sta);
		
		SpeciesManager kMgr = new SpeciesManager();
		int rowAffected = -1;
		
		rowAffected = kMgr.insert(k);
		
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
	response.sendRedirect("Species_list.jsp");
	%>
</body>
</html>