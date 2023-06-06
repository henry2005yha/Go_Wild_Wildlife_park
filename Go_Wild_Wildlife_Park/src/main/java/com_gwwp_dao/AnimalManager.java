package com_gwwp_dao;

import java.sql.*;
import java.util.*;

import com_gwwp.DBManager;
import com_gwwp_entity.Animal;

public class AnimalManager {
	public int insert(Animal e) throws ClassNotFoundException, SQLException{
		int result = -1;
		
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();
		
		String sql = "INSERT INTO `gowildwildlifepark`.`animal` (`name`, `gender`, `arrivalYear`, `keeperID`, `enclosureID`, `dietID`, `speciesID`) VALUES (?,?,?,?,?,?,?);";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		//insert
		
		pstmt.setString(1, e.getName());
		pstmt.setString(2, e.getGender());
		pstmt.setString(3, e.getArrivalYear());
		pstmt.setInt(4, e.getKeeperID());
		pstmt.setInt(5, e.getEnclosureID());
		pstmt.setInt(6, e.getDietID());
		pstmt.setInt(7, e.getSpeciesID());
		
		result = pstmt.executeUpdate();
		return result;
	}
		public ArrayList<Animal> fetchAll() throws ClassNotFoundException, SQLException {
			// select all
			ArrayList<Animal> Animals = new ArrayList<Animal>();
			Animal e;
			
			DBManager dbMgr = new DBManager();
			Connection conn = dbMgr.getConnection();
			
			String sql = "SELECT * FROM animal";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			
			while (rs.next()) {
				
				String AY= rs.getString("arrivalYear").substring(0,4);
				e = new Animal(rs.getInt("animalID"), 
						rs.getString("name"), 
						rs.getString("gender"),
						AY, 
						rs.getInt("keeperID"), 
						rs.getInt("enclosureID"), 
						rs.getInt("dietID"), 
						rs.getInt("speciesID"));
				Animals.add(e); // add entity into collection to arraylist  
			}
			return Animals;
		}
		//Report 1
		public ArrayList<Animal> fetchJohnorMarry()throws ClassNotFoundException, SQLException{ //select all
			ArrayList<Animal> animal = new ArrayList<Animal>();
			Animal animalInfo;
			// get connection
			DBManager dbMgr = new DBManager();
			Connection conn = dbMgr.getConnection();

			// query
			String sql = "SELECT * FROM gowildwildlifepark.report;";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();


			while (rs.next()) {
				animalInfo = new Animal(
					
						
						rs.getInt("A_ID"),
						rs.getString("A_Name"),
						rs.getString("A_Gender"),
						rs.getString("A_Arrived"),
						rs.getInt("K_ID"),
						rs.getString("K_Name"));
				animal.add(animalInfo); //add entity into collection to arraylist
			}

			return animal;

		}
		
		public ArrayList<Animal> fetchTotalAnimal()throws ClassNotFoundException, SQLException{ //select all
			ArrayList<Animal> animals = new ArrayList<Animal>();
			Animal animalinfobytotal;
			// get connection
			DBManager dbMgr = new DBManager();
			Connection conn = dbMgr.getConnection();

			// query
			String sql = "SELECT count(animal.A_ID) AS total_animal\r\n"
					+ "FROM animal";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();


			while (rs.next()) {
				animalinfobytotal = new Animal(
						
						rs.getInt("totalAnimal"));
						
				animals.add(animalinfobytotal); //add entity into collection to arraylist
			}

			return animals;

		}
		
		public ArrayList<Animal> fetchAnimalGroupByKeeper()throws ClassNotFoundException, SQLException{ //select all
			ArrayList<Animal> animals = new ArrayList<Animal>();
			Animal animalinfobykeeper;
			// get connection
			DBManager dbMgr = new DBManager();
			Connection conn = dbMgr.getConnection();

			// query
			String sql = "select count(animal.animalID) as NO_of_animal, keeper.name "
					+ "from keeper inner join animal "
					+ "on keeper.keeperID = animal.keeperID "
					+ "group by keeper.name "
					+ "order by keeper.name asc; ";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();


			while (rs.next()) {
				animalinfobykeeper = new Animal(
						
						rs.getString("Name"),
						rs.getInt("NO_of_animal"));
						
				animals.add(animalinfobykeeper); //add entity into collection to arraylist
			}

			return animals;


	}
}


