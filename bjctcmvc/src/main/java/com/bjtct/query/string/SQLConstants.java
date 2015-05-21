package com.bjtct.query.string;

/**
 * All query constants for the application
 * 
 * Note: # symbol will be replacing with the value dynamically 
 * in the business logic
 * 
 * @author santhosh.narayana
 */

public class SQLConstants {

    public final static String GET_TEAM_BY_TEAM_ID         = "SELECT * FROM TEAM WHERE ID=?";

    public final static String GET_ALL_TEAMS               = "SELECT * FROM TEAM";

    public final static String GET_NEXT_TEAM_MEMBER        = "SELECT * FROM TEAMMEMBERS WHERE id=? and teamid=?";

    public final static String GET_RECORDS_TOTAL_COUNT     = "SELECT count(id) FROM TEAMMEMBERS where teamid=?";

    public final static String GET_FIRST_RECORD_ID_OF_TEAM = "SELECT min(id) FROM TEAMMEMBERS where teamid=?";

    public final static String GET_RANKING_BY_TAB_NAME     = "SELECT * FROM #_ranking ORDER BY rank";

    public final static String GET_SEASON_AT_GLANCE     = "SELECT * FROM # ORDER BY date";
    
    public final static String GET_RESULTS = "SELECT * FROM #";
}
