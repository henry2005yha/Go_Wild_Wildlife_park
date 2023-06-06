package com_gwwp_entity;

public class Animal {
	private int animalID;
	private String name;
	private String gender;   
	private String arrivalYear;
	private int keeperID;
	private int enclosureID;
	private int dietID;
	private int speciesID;
	
	
	private String K_Name;
	private int totalAnimal;
	public int getAnimalID() {
		return animalID;
	}
	public void setAnimalID(int animalID) {
		this.animalID = animalID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getArrivalYear() {
		return arrivalYear;
	}
	public void setArrivalYear(String arrivalYear) {
		this.arrivalYear = arrivalYear;
	}
	public int getKeeperID() {
		return keeperID;
	}
	public void setKeeperID(int keeperID) {
		this.keeperID = keeperID;
	}
	public int getEnclosureID() {
		return enclosureID;
	}
	public void setEnclosureID(int enclosureID) {
		this.enclosureID = enclosureID;
	}
	public int getDietID() {
		return dietID;
	}
	public void setDietID(int dietID) {
		this.dietID = dietID;
	}
	public int getSpeciesID() {
		return speciesID;
	}
	public void setSpeciesID(int speciesID) {
		this.speciesID = speciesID;
	}
	public String getK_Name() {
		return K_Name;
	}
	public void setK_Name(String k_Name) {
		K_Name = k_Name;
	}
	public int getTotalAnimal() {
		return totalAnimal;
	}
	public Animal(int animalID, String name, String gender, String arrivalYear, int keeperID, String k_Name) {
		super();
		this.animalID = animalID;
		this.name = name;
		this.gender = gender;
		this.arrivalYear = arrivalYear;
		this.keeperID = keeperID;
		K_Name = k_Name;
	}
	public Animal(String name, String gender, String arrivalYear, int keeperID, int enclosureID, int dietID,
			int speciesID) {
		super();
		this.name = name;
		this.gender = gender;
		this.arrivalYear = arrivalYear;
		this.keeperID = keeperID;
		this.enclosureID = enclosureID;
		this.dietID = dietID;
		this.speciesID = speciesID;
	}
	public void setTotalAnimal(int totalAnimal) {
		this.totalAnimal = totalAnimal;
	}
	public Animal(int animalID, String name, String gender, String arrivalYear, int keeperID, int enclosureID,
			int dietID, int speciesID) {
		super();
		this.animalID = animalID;
		this.name = name;
		this.gender = gender;
		this.arrivalYear = arrivalYear;
		this.keeperID = keeperID;
		this.enclosureID = enclosureID;
		this.dietID = dietID;
		this.speciesID = speciesID;
	}
	public Animal(String k_Name, int totalAnimal) {
		super();
		K_Name = k_Name;
		this.totalAnimal = totalAnimal;
	}
	public Animal(int totalAnimal) {
		super();
		this.totalAnimal = totalAnimal;
	}

	
	
	}
