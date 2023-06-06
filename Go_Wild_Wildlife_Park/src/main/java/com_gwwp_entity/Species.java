package com_gwwp_entity;

public class Species {
	private int speciesID;
	private String speciesTypes;
	private String speciesGroup;
	private String lifeStyle;
	private String conservationStatus;
	public int getSpeciesID() {
		return speciesID;
	}
	public void setSpeciesID(int speciesID) {
		this.speciesID = speciesID;
	}
	public String getSpeciesTypes() {
		return speciesTypes;
	}
	public void setSpeciesTypes(String speciesTypes) {
		this.speciesTypes = speciesTypes;
	}
	public String getSpeciesGroup() {
		return speciesGroup;
	}
	public void setSpeciesGroup(String speciesGroup) {
		this.speciesGroup = speciesGroup;
	}
	public String getLifeStyle() {
		return lifeStyle;
	}
	public void setLifeStyle(String lifeStyle) {
		this.lifeStyle = lifeStyle;
	}
	public String getConservationStatus() {
		return conservationStatus;
	}
	public void setConservationStatus(String conservationStatus) {
		this.conservationStatus = conservationStatus;
	}
	public Species(String speciesTypes, String speciesGroup, String lifeStyle, String conservationStatus) {
		super();
		this.speciesTypes = speciesTypes;
		this.speciesGroup = speciesGroup;
		this.lifeStyle = lifeStyle;
		this.conservationStatus = conservationStatus;
	}
	public Species(int speciesID, String speciesTypes, String speciesGroup, String lifeStyle,
			String conservationStatus) {
		super();
		this.speciesID = speciesID;
		this.speciesTypes = speciesTypes;
		this.speciesGroup = speciesGroup;
		this.lifeStyle = lifeStyle;
		this.conservationStatus = conservationStatus;
	}
	
	
}
