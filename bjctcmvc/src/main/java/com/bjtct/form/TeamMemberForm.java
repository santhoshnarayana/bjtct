package com.bjtct.form;

import java.io.Serializable;
import java.sql.Blob;
import java.util.Date;

import javax.xml.bind.annotation.XmlRootElement;


@XmlRootElement
public class TeamMemberForm implements Serializable {
	
	private Long id;
	private Long teamId;
	private String mName;
	private String surName;
	private String dob;
	private Long age;
	private String recidence;
	private String profession;
	private String meritalStatus;
	private String aniversary;
	private String bloodGroup;
	private String socialInvolveMent;
	private String contact;
	private String photo;
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
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public Long getAge() {
		return age;
	}
	public void setAge(Long age) {
		this.age = age;
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
	public String getAniversary() {
		return aniversary;
	}
	public void setAniversary(String aniversary) {
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
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
	
		
	
}
