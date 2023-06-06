package com_gwwp_dao;

import java.sql.*;
import java.util.*;

import com_gwwp.DBManager;
import com_gwwp_entity.Species;

public class SpeciesManager {
	public int insert(Species e) throws ClassNotFoundException, SQLException{
		int result = -1;
		
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();
		
		String sql = "INSERT INTO `gowildwildlifepark`.`species` (`speciesTypes`, `speciesGroup`, `lifeStyle`, `conservationStatus`) VALUES (?,?,?,?);";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		//insert
		
		pstmt.setString(1, e.getSpeciesTypes());
		pstmt.setString(2, e.getSpeciesGroup());
		pstmt.setString(3, e.getLifeStyle());
		pstmt.setString(4, e.getConservationStatus());
		
		result = pstmt.executeUpdate();
		return result;
	}
		public ArrayList<Species> fetchAll() throws ClassNotFoundException, SQLException {
			// select all
			ArrayList<Species> Speciess = new ArrayList<Species>();
			Species e;
			
			DBManager dbMgr = new DBManager();
			Connection conn = dbMgr.getConnection();
			
			String sql = "SELECT * FROM species";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				e = new Species(rs.getInt("speciesID"), rs.getString("speciesTypes"), rs.getString("speciesGroup"), rs.getString("lifeStyle"), rs.getString("conservationStatus"));
				Speciess.add(e); // add entity into collection to arraylist
			}
			return Speciess;
		}
	}


