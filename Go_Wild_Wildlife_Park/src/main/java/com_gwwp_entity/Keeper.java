package com_gwwp_entity;



public class Keeper {
	private int keeperID;
	private String name;
	private String dateOfBirth;
	private String rank;
	
	
	public int getKeeperID() {
		return keeperID;
	}
	public void setKeeperID(int keeperID) {
		this.keeperID = keeperID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getRank() {
		return rank;
	}
	public void setRank(String rank) {
		this.rank = rank;
	}
	public Keeper(String name, String dateOfBirth, String rank) {
//			super();
		this.name = name;
		this.dateOfBirth = dateOfBirth;
		this.rank = rank;
	}
	public Keeper(int keeperID, String name, String dateOfBirth, String rank) {
		super();
		this.keeperID = keeperID;
		this.name = name;
		this.dateOfBirth = dateOfBirth;
		this.rank = rank;
	}	
	
	
	
	
}
