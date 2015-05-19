package com.bjtct.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.codec.binary.Base64;

import com.bjtct.connection.JdbcConnection;
import com.bjtct.form.TeamMemberForm;
import com.bjtct.pojo.Team;
import com.bjtct.query.string.SQLConstants;

public class TeamDataDAO {
	
	public static Team getTeam(Long teamId){
		
		Team team = null;
		
		String query = SQLConstants.GET_TEAM_BY_TEAM_ID;
		
		try {
			team = new Team();
		Connection con = JdbcConnection.getConnection();
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setLong(1,teamId);
		
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			team.setId(rs.getLong("id"));
			team.setName(rs.getString("name"));
			team.setDescribe(rs.getString("describe"));
		}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return team;
		
	}
	
	
	public static List<Team>getAllTeams(){
		
		List<Team>teamList = null;
		Team team = null;
		String query = SQLConstants.GET_ALL_TEAMS;
		
		try {
		teamList = new ArrayList<Team>();
		Connection con = JdbcConnection.getConnection();
		PreparedStatement pstmt = con.prepareStatement(query);
		
		
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			team = new Team();
			
			team.setId(rs.getLong("id"));
			team.setName(rs.getString("name"));
			team.setDescribe(rs.getString("describe"));
			team.setLogo(rs.getBlob("logo"));
			team.setTeamphoto(rs.getBlob("teamphoto"));
			teamList.add(team);
		}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return teamList;
		
	}
	
	public static TeamMemberForm getNextTeamMember(Long teamId,Long teamMemberId){
		
		TeamMemberForm teamMember = null;
		
		Team team = null;
		String query = SQLConstants.GET_NEXT_TEAM_MEMBER;
		Connection con = null;
		try {
		
			teamMember = new TeamMemberForm();
			con = JdbcConnection.getConnection();
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setLong(1, teamMemberId);
		pstmt.setLong(2,teamId);
		
		ResultSet rs = pstmt.executeQuery();
		SimpleDateFormat myFormat = new SimpleDateFormat("dd-MMM-yyyy");
		
		
		while(rs.next()) {
						
			teamMember.setId(rs.getLong("id"));
			teamMember.setTeamId(rs.getLong("teamid"));
			teamMember.setmName(rs.getString("mname"));
			teamMember.setSurName(rs.getString("surname"));
			Date d = rs.getDate("dob");
			
			if(null != d){
				
			teamMember.setDob( myFormat.format(d));
			}
			teamMember.setAge(rs.getLong("age"));
			teamMember.setRecidence(rs.getString("recidence"));
			teamMember.setProfession(rs.getString("profession"));
			teamMember.setMeritalStatus(rs.getString("meritalstatus"));
			d=rs.getDate("aniversary");
			if(null!=d){
			teamMember.setAniversary(myFormat.format(d));
			}
			teamMember.setBloodGroup(rs.getString("bloodgroup"));
			teamMember.setSocialInvolveMent(rs.getString("socialinvolvement"));
			teamMember.setContact(rs.getString("contact"));
			teamMember.setPhoto(new String(Base64.encodeBase64(rs.getBlob("photo").getBytes(1, (int)rs.getBlob("photo").length()))));
		}
		
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		
		
		return teamMember;
		
	}
	
	public static Long getTotalRecordsCount(Long teamId){
		Long totalCount = null;
		Connection con = null;
		try {
		con = JdbcConnection.getConnection();
		
		PreparedStatement pstmt = con.prepareStatement(SQLConstants.GET_RECORDS_TOTAL_COUNT);
		pstmt.setLong(1, teamId);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()){
			totalCount = rs.getLong(1);
		}
	
		}catch (Exception e){
			e.printStackTrace();
		}
		
		return totalCount;
	}


	public static Long getFirstRecordId(long teamId) {
		
		Long firstRecordId = null;
		Connection con = null;
		try {
		con = JdbcConnection.getConnection();
		
		PreparedStatement pstmt = con.prepareStatement(SQLConstants.GET_FIRST_RECORD_ID_OF_TEAM);
		pstmt.setLong(1, teamId);
		ResultSet rs = pstmt.executeQuery();
		
		while(null!=rs&&rs.next()){
			firstRecordId = rs.getLong(1);
		}
	
		}catch (Exception e){
			e.printStackTrace();
		}

		
		
		
		return firstRecordId;
	}
	
	
	
	

}
