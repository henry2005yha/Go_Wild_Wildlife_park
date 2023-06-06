<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="com_gwwp_dao.DietManager"%>
<%@ page import="com_gwwp_entity.Diet"%>
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
		String dt = request.getParameter("type");
		String dn = request.getParameter("nof");
		int nof = Integer.parseInt(dn);
		     
		
		DBManager dbMgr = new DBManager();//create object
		dbMgr.getConnection(); //connect DB
		
		Diet d = new Diet (dt,nof);
		
		
		DietManager dMgr = new DietManager();
		int rowAffected = -1;
		
		rowAffected = dMgr.insert(d);
		
		if (rowAffected == 1)
			out.println("Record insert successfully");
		
	}catch (ClassNotFoundException e) {

		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
	%>
	<%
	response.sendRedirect("Diet_list.jsp");
	%>
</body>
</html>