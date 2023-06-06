<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<body style="margin: 0px">

<ul>
		<li id="home"  class="dropdown h"><a href="index_gwwp.jsp" class="dropbtnhome"><i class="material-icons">home</i></a><li>
		
		<li class="dropdown"><a href="javascript:void(0)" class="dropbtn" >Animal</a>
			<div class="dropdown-content">
				<a href="Animal_list.jsp">View Animal</a> <a href="Animal.jsp">Add
					Animal</a>
			</div>
		<li>
		<li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Keeper</a>
			<div class="dropdown-content">
				<a href="Keeper_list.jsp">View and Edit Keeper</a> <a
					href="Keeper.jsp">Add Keeper</a>
			</div>
		<li>
		<li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Enclosure</a>
			<div class="dropdown-content">
				<a href="Enclosure_list.jsp">View and Edit Enclosure</a> <a
					href="Enclosure.jsp">Add Enclosure</a>
			</div>
		<li>
		<li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Species</a>
			<div class="dropdown-content">
				<a href="Species_list.jsp">View and Edit Species</a> <a
					href="Species.jsp">Add Species</a>
			</div>
		<li>
		<li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Diet</a>
			<div class="dropdown-content">
				<a href="Diet_list.jsp">View and Edit Diet</a> <a href="Diet.jsp">Add
					Diet</a>
			</div>
			<li id="report"  class="dropdown h"><a href="Report1.jsp" class="report">Report1</a><li>
			<li id="report"  class="dropdown h"><a href="Report2.jsp" class="report">Report2</a><li>
		<li>
	</ul><br><br>
</body>
</html>