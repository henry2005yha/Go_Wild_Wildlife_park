package com_gwwp_dao;

import java.sql.*;
import java.util.*;

import com_gwwp.DBManager;
import com_gwwp_entity.Diet;


public class DietManager {
	public int insert(Diet d) throws ClassNotFoundException, SQLException {
		int result = -1;

		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();

		String sql = "INSERT INTO `gowildwildlifepark`.`diet` (`type`, `numberOfFeed`) " + "VALUES (?,?);";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		// insert

		pstmt.setString(1, d.getType());
		pstmt.setInt(2, d.getNumberOfFeed());

		result = pstmt.executeUpdate();
		return result;
	}

	public ArrayList<Diet> fetchAll() throws ClassNotFoundException, SQLException {
		// select all
		ArrayList<Diet> diets = new ArrayList<Diet>();
		Diet d;

		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();

		String sql = "SELECT * FROM diet";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();

		while (rs.next()) {
			d = new Diet(rs.getInt("dietID"), rs.getString("type"), rs.getInt("numberOfFeed"));
			diets.add(d); // add entity into collection to arraylist
		}
		return diets;
	}

	// update
	public int update(Diet k) throws ClassNotFoundException, SQLException {
		int result = -1;
		// get connection
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();
		// prepare statement
		String sql = "UPDATE `gowildwildlifepark`.`keeper` SET " + "`name`=?," + "`dateOfBirth`=?," + "`rank`=?"
				+ "WHERE keeperID=?";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, k.getType());
		pstmt.setInt(2, k.getNumberOfFeed());
		// execute statement
		result = pstmt.executeUpdate();
		return result;
	}

	// delete
	public int delete(int id) throws ClassNotFoundException, SQLException {
		int result = -1;
		// get connection
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();
		// prepare statement
		String sql = "DELETE FROM `gowildwildlifepark`.`keeper`" + "WHERE keeperID =?";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, id);

		// execute statement
		result = pstmt.executeUpdate();
		return result;

	}

	public Diet getById(int id) throws SQLException, ClassNotFoundException {
		String sql;
		// 1. get Connection
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();
		// 2. prepare the statement
		sql = "SELECT * FROM `gowildwildlifepark`.`keeper` WHERE keeperID =?";
		PreparedStatement pstmt = conn.prepareStatement(sql);

		pstmt.setInt(1, id);
		ResultSet rs = pstmt.executeQuery();
		Diet Diet = null;
		while (rs.next()) {
			Diet = new Diet(rs.getInt("dietID"), rs.getString("getType"), rs.getInt("numberOfFeed"));
		}
		return Diet;
	}
}