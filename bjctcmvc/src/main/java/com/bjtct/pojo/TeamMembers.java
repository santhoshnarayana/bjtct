package com.bjtct.pojo;

import java.io.Serializable;
import java.sql.Blob;
import java.util.Date;

import javax.xml.bind.annotation.XmlRootElement;


@XmlRootElement
public class TeamMembers implements Serializable {
	
	private Long id;
	private Long teamId;
	private String mName;
	private String surName;
	private Date dob;
	private Long age;
	private String recidence;
	private String profession;
	private String meritalStatus;
	private Date aniversary;
	private String bloodGroup;
	private String socialInvolveMent;
	private String contact;
	private Blob photo;
	
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getTeamId() {
		return teamId;
	}
	public void setTeamId(Long teamId) {
		this.teamId = teamId;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getSurName() {
		return surName;
	}
	public void setSurName(String surName) {
		this.surName = surName;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getRecidence() {
		return recidence;
	}
	public void setRecidence(String recidence) {
		this.recidence = recidence;
	}
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	public String getMeritalStatus() {
		return meritalStatus;
	}
	public void setMeritalStatus(String meritalStatus) {
		this.meritalStatus = meritalStatus;
	}
	public Long getAge() {
		return age;
	}
	public void setAge(Long age) {
		this.age = age;
	}
	public Date getAniversary() {
		return aniversary;
	}
	public void setAniversary(Date aniversary) {
		this.aniversary = aniversary;
	}
	public String getBloodGroup() {
		return bloodGroup;
	}
	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}
	public String getSocialInvolveMent() {
		return socialInvolveMent;
	}
	public void setSocialInvolveMent(String socialInvolveMent) {
		this.socialInvolveMent = socialInvolveMent;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public Blob getPhoto() {
		return photo;
	}
	public void setPhoto(Blob photo) {
		this.photo = photo;
	}
	
	
}
