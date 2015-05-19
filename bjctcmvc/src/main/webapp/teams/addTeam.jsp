<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-"8" />
<title>BJTCT - ADD TEAM</title>
<link href="../css/stylesheet.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>

<script src="../script/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="../script/html5.js" type="text/javascript"></script>


</head>

<body>
<input type="hidden" id="teamId" value="${teamId}">
<input type="hidden" id="totalRecordCount" value="${totalRecordsCount}">
<input type ="hidden" id="firstRecordId" value="${firstRecordId}">
<!-- /******** Wrapper Outer ********/ --> 
<div id="wrapper">
	<header>
    	<figure>
        	<a href="../index.jsp">
        		<img src="../images/bjtct_logo.png" width="100" />
            </a>
        </figure>
        
        <hgroup>
        	<a href="../index.jsp">
            	<img src="../images/logoTxt.png" height="80" />
        		<!--<h1>Bangalore Jain</h1>
            	<h1>Tennis Cricket Trust</h1>-->
            </a>
        </hgroup>
        
        <aside>
        	<article>
            	<hgroup>
                	<h2>Contact Us Now</h2>
                    <h3>+91 9341226446</h3>
                </hgroup>
                <figure>
                	<img src="../images/phone_icon_blue.png" />
                </figure>
            </article>
            <div class="clear"></div>
            <nav id="nav">
            	<ul>
                	<li>
                    	<a href="../index.jsp">Home</a>
                        <span>|</span>
                        <a href="../pages/aboutus.html">About Us</a>
                        <span>|</span>
                        <a href="../pages/teamstatistics.html">Team Statistics</a>
                        <span>|</span>
                        <a href="../pages/contactus.html">Contact Us</a>
                    </li>
                </ul>
            </nav>
        </aside>
    </header>
	<!-- /******** Header Section End ********/ -->
    
    <!-- /******** About Us Page Content Section  ********/ -->
	<div class="timdtls-section" id="subMenuQuickLinks">
		<form action="/team/addTeam" method="GET">
			<table>
				<tr>
					<th>Team Name :</th>
					<td><input class="" type="text" placeholder="TeamName" name="name"></td>
				</tr>
				<tr>
					<th>Upload Team Logo :</th>
					<td><input class="" type="file" value="Upload" name="logo"><img src=""></td>
				</tr>
				<tr>
					<th>Description :</th>
					<td><textarea placeholder="Description" name="desc"></textarea></td>
				</tr>
				<tr>
					<th>Photo</th>
					<td><input type="file" placeholder="upload photo" name="photo"></td>
				</tr>
			</table>
			<div>
				<input type="Submit" value="Submit">
				<input type="Reset">
			</div>
		</form>
	</div>
    <!-- /******** About Us Page Content Section End ********/ -->
    
    <!-- /******** About Us Page Contact Section ********/ -->
    <section id="footer">
    	<article>
        	<p>Team Activities, Match Schedules and Sports Equipments.</p>
            <p class="copyright">&copy; 2014 design by <u>BANGALORE JAIN TENNIS CRICKET TRUST.</u>  All Rights Reserved.</p>
        </article>
    </section>
    <!-- /******** About Us Page Contact Section End ********/ -->
</div>
<!-- /******** Wrapper Outer End ********/ --> 
</body>
</html>
