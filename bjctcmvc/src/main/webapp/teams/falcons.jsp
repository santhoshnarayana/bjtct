<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-"8" />
<title>BJTCT - FALCONS</title>
<link href="../css/stylesheet.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>

<script src="../script/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="../script/html5.js" type="text/javascript"></script>
<script src="../script/common.js"></script>
</head>

<body><input type="hidden" id="teamId" value="${teamId}">
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
    
    
    <!-- /******** Sub menu quick links ********/ -->
    
    <section id="subMenuQuickLinks">
        <div id="teamHdr">
            <p>Bangalore Jain Tennis Cricket Trust <b style="color: #b41b00; font-size: 1em; margin: 0 8px;">/</b> Falcons</p>
        </div>
       <div id="teamPageSubMenu">
        	<a href="getTeamPage.sec?teamId=1">Aviators</a>
            <span>|</span>
            <a href="getTeamPage.sec?teamId=2">Cool guys</a>
            <span>|</span>
            <a href="getTeamPage.sec?teamId=3">Dreams</a>
            <span>|</span>
            <a href="getTeamPage.sec?teamId=4">XI Star</a>
            <span>|</span>
            <a href="getTeamPage.sec?teamId=5">Elite</a>
            <span>|</span>
            <a href="getTeamPage.sec?teamId=6">EMCC</a>
            <span>|</span>
            <a href="getTeamPage.sec?teamId=7">Express</a>
            <span>|</span>
            <!-- <a href="getTeamPage.sec?teamId=8">Falcons</a>
            <span>|</span> -->
            <a href="getTeamPage.sec?teamId=9">JCC</a>
            <span>|</span>
            <a href="getTeamPage.sec?teamId=10">Master Blaster</a>
            <span>|</span>
            <a href="getTeamPage.sec?teamId=11">Max XI</a>
            <span>|</span>
            <a href="getTeamPage.sec?teamId=12">Passion</a>
            <span>|</span>
            <a href="getTeamPage.sec?teamId=13">Royal CC</a>
            <span>|</span>
            <a href="getTeamPage.sec?teamId=14">RSK</a>
            <span>|</span>
            <a href="getTeamPage.sec?teamId=15">Sapphire</a>
            <span>|</span>
            <a href="getTeamPage.sec?teamId=16">Trendy</a>
        </div>
    </section>
    
    <!-- /******** Sub menu quick links End ********/ -->
    
    
	<!-- /******** Banner Section ********/ -->    
    <!--section id="banner">
    Banner Image
    </section-->
    <!-- /******** Banner Section End ********/ -->
    
    <!-- /******** About Us Page Content Section ********/ -->
    <section id="innerTeamPageContent">
    	<article style="min-height:200px;">
               <h1>About Us</h1>  
					${describe}
        </article>
        <aside>
        	<hgroup>
            	<h1 id="headName">Hemanth Porwal</h1>
                <h3>Falcons</h3>
            </hgroup>
            <div id="playersProfile">
            	<div id="">
				<img id="playersPho" src="">
                	<!--<img src="../images/players/hemanthporwal.jpg" /> -->
                </div>
                <div id="PlayersInfo">
                    <p>
                        <b>Name:</b>
                        <span id="pname"></span>
                    </p>
                    <p>
                        <b>Surname / Family Name:</b>
                        <span id="surname"></span>
                    </p>
                    <p>
                        <b>DOB:</b>
                        <span id="dob"></span>
                    </p>
                    <p>
                        <b>Age:</b>
                        <span id="age"></span>
                    </p>
                    <p>
                        <b>Residential Area:</b>
                        <span id="residential-area">Kumarapark</span>
                    </p>
                    <p>
                        <b>Profession:</b>
                        <span id="profesion"></span>
                    </p>
                    <p>
                        <b>Marital Status:</b>
                        <span id="merital-status"></span>
                    </p>
                    <p>
                        <b>Anniversary:</b>
                        <span id="aniversary"></span>
                    </p>
                    <p>
                        <b>Blood Group:</b>
                        <span id="blood-group"></span>
                    </p>
                    <p>
                        <b>Social Involvement:</b>
                        <span id="social-involvement">Yes</span>
                    </p>
                    <p>
                        <b>Contact:</b>
                        <!--span><strong>Mob</strong> - 9341226446</span>
                        <div class="PPEmail"><span><strong>Email</strong> - <a href="mailto:hemanthporwal@gmail.com">hemanthporwal@gmail.com</a></span></div-->
                        <span><a class="PPEmail" href="" id="contact"></a></span>
                    </p>
                </div>
                <div id="navigationPP">
                    <a href="#" id="prev-record"><img src="../images/prev.png" /></a>
                    <img src="../images/spacer.gif" width="40" />
                    <a href="#" id="next-record"><img src="../images/nxt.png" /></a>
                </div>
            </div>
        </aside>
    </section>
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
