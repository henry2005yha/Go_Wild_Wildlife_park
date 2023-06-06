package com_gwwp_dao;

import java.sql.*;
import java.util.*;

import com_gwwp.DBManager;
import com_gwwp_entity.Keeper;

public class KeeperManager {
	public int insert(Keeper k) throws ClassNotFoundException, SQLException {
		int result = -1;

		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();

		String sql = "INSERT INTO `gowildwildlifepark`.`keeper` (`name`, `dateOfBirth`, `rank`) " + "VALUES (?,?,?);";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		// insert
		pstmt.setString(1, k.getName());
		pstmt.setString(2, k.getDateOfBirth());
		pstmt.setString(3, k.getRank());

		result = pstmt.executeUpdate();
		return result;
	}

	public ArrayList<Keeper> fetchAll() throws ClassNotFoundException, SQLException {
		// select all
		ArrayList<Keeper> keepers = new ArrayList<Keeper>();
		Keeper k;

		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();

		String sql = "SELECT * FROM keeper";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();

		while (rs.next()) {
			k = new Keeper(rs.getInt("keeperID"), rs.getString("name"), rs.getString("dateOfBirth"),
					rs.getString("rank"));
			keepers.add(k); // add entity into collection to arraylist
		}
		return keepers;
	}

	// update
	public int update(Keeper k) throws ClassNotFoundException, SQLException {
		int result = -1;
		// get connection
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();
		// prepare statement
		String sql = "UPDATE `gowildwildlifepark`.`keeper` SET " + "`name`=?," + "`dateOfBirth`=?," + "`rank`=?"
				+ "WHERE keeperID=?";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, k.getName());
		pstmt.setString(2, k.getDateOfBirth());
		pstmt.setString(3, k.getRank());
		pstmt.setInt(4, k.getKeeperID());
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

	public Keeper getById(int id) throws SQLException,ClassNotFoundException {
	String sql ;
	//1. get Connection
	DBManager dbMgr = new DBManager();
	Connection conn = dbMgr.getConnection();
	//2. prepare the statement
	 sql = "SELECT * FROM `gowildwildlifepark`.`keeper` WHERE keeperID =?" ;
	 PreparedStatement pstmt = conn.prepareStatement(sql);

	 pstmt.setInt(1,id);
	 ResultSet rs = pstmt.executeQuery();
	 Keeper keeper = null;
	 while(rs.next()) {
	 keeper = new Keeper
	(rs.getInt("keeperID"),
	 rs.getString("name"),
	 rs.getString("dateOfBirth"),
	 rs.getString("rank"));
	 }
	 return keeper;
	}
}