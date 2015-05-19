package com.bjtct.query.string;

public class SQLConstants {

	public final static String GET_TEAM_BY_TEAM_ID = "SELECT * FROM TEAM WHERE ID=?";
	
	public final static String GET_ALL_TEAMS = "SELECT * FROM TEAM";
	
	public final static String  GET_NEXT_TEAM_MEMBER="SELECT * FROM TEAMMEMBERS WHERE id=? and teamid=?";
	
	public final static String GET_RECORDS_TOTAL_COUNT = "SELECT count(id) FROM TEAMMEMBERS where teamid=?";
	
	public final static String GET_FIRST_RECORD_ID_OF_TEAM="SELECT min(id) FROM TEAMMEMBERS where teamid=?";

}
