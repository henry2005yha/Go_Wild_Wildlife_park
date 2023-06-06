package com_gwwp;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBManager {
	public Connection getConnection() throws
	ClassNotFoundException,SQLException{
	
		Connection con =null;
		Class.forName("com.mysql.cj.jdbc.Driver");
		String dbUrl="jdbc:mysql://localhost:3306/gowildwildlifepark";
		String dbUser="root";
		String dbPassword="Henry@2005";
		
		con=DriverManager.getConnection(dbUrl,dbUser,dbPassword);
		return con;
}
}
