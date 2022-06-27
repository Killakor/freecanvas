package com.project.model;

public class UploadFile {
	
	private int number;
	private String filename;
	private String unique;
	
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getUnique() {
		return unique;
	}
	public void setUnique(String unique) {
		this.unique = unique;
	}
	public String getFullName() {
		return String.format("%s_%s", unique, filename);
	}
			
}
