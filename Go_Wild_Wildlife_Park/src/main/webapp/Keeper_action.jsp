<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="com_gwwp_dao.KeeperManager"%>
<%@ page import="com_gwwp_entity.Keeper"%>
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
		String kn = request.getParameter("name");
		
								
		// Date dob = request.get("DOB");
		//SimpleDateFormat dateFormat = new SimpleDateFormat("MM-dd-yyyy");
		String dob = request.getParameter("DOB");
		//Date date = dateFormat.parse(dateString);
		
		
		String rank = request.getParameter("rank");
		
		DBManager dbMgr = new DBManager();//create object
		dbMgr.getConnection(); //connect DB
		
		// Keeper k = new Keeper(kn,dateOfBirth,rank)
		Keeper k= new Keeper(kn,dob,rank);
		
		KeeperManager kMgr = new KeeperManager();
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
	response.sendRedirect("Keeper_list.jsp");
	%>
</body>
</html>