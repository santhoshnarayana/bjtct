package com.bjtct.pojo;

import java.io.File;
import java.sql.Blob;

public class Team {
	private Long id;
	private String name;
	private Blob logo;
	private String describe;
	private Blob teamphoto;
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	public Blob getLogo() {
		return logo;
	}
	public void setLogo(Blob logo) {
		this.logo = logo;
	}
	public Blob getTeamphoto() {
		return teamphoto;
	}
	public void setTeamphoto(Blob teamphoto) {
		this.teamphoto = teamphoto;
	}
	

}
