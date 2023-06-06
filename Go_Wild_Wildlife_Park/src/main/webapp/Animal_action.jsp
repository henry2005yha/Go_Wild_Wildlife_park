<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="com_gwwp_dao.AnimalManager"%>
<%@ page import="com_gwwp_entity.Animal"%>
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
		String n = request.getParameter("name");
		String g = request.getParameter("AnimalsGender");
		String y = request.getParameter("year");
		String kid = request.getParameter("kid");
		int k = Integer.parseInt(kid);
		String eid = request.getParameter("eid");
		int ei = Integer.parseInt(eid);
		String did = request.getParameter("did");
		int d = Integer.parseInt(did);
		String sid = request.getParameter("sid");
		int s = Integer.parseInt(sid);
	
		
		DBManager dbMgr = new DBManager();//create object
		dbMgr.getConnection(); //connect DB
		
		
		Animal e = new Animal(n,g,y,k,ei,d,s);
		
		AnimalManager eMgr = new AnimalManager();
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
	response.sendRedirect("Animal_list.jsp");
	%>
</body>
</html>