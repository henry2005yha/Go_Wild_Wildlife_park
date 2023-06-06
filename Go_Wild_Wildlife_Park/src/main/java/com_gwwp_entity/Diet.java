package com_gwwp_entity;

public class Diet {
	private int dietID;
	private String type;
	private int numberOfFeed;

	
	
	public int getDietID() {
		return dietID;
	}
	public void setDietID(int dietID) {
		this.dietID = dietID;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getNumberOfFeed() {
		return numberOfFeed;
	}
	public void setNumberOfFeed(int numberOfFeed) {
		this.numberOfFeed = numberOfFeed;
	}
	public Diet(String type, int numberOfFeed) {
		super();
		this.type = type;
		this.numberOfFeed = numberOfFeed;
	}
	public Diet(int dietID, String type, int numberOfFeed) {
		super();
		this.dietID = dietID;
		this.type = type;
		this.numberOfFeed = numberOfFeed;
	}
	
	
	
}
