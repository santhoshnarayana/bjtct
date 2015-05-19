
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-"8" />
<title>BJTCT - Home</title>
<link href="../css/stylesheet.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>

<script src="../script/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="../script/html5.js" type="text/javascript"></script>
</head>

<body>
<!-- /******** Wrapper Outer ********/ --> 
<div id="wrapper">
	<header>
    	<figure>
        	<a href="../team/home.sec">
        		<img src="../images/bjtct_logo.png" width="100" />
            </a>
        </figure>
        
        <hgroup>
        	<a href="../team/home.sec">
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
                    	<a href="../index.html" class="current">Home</a>
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
    
	<!-- /******** Banner Section ********/ -->    
    <section id="banner">
    
    </section>
    <!-- /******** Banner Section End ********/ -->
    
	<!-- /******** Team Logo Section ********/ -->    
    <section id="teamLogos">
	<ul>
	
		<% int i=1;  %>
		<%  out.println("<li>");   %>
		<c:forEach items="${teamFormList}" var="item">
			
			<a href="getTeamPage.sec?teamId=${item.id}"><img src="data:image/png;base64,${item.logo}" /></a>
			<%i++;
			if((i-1)%6==0) out.println("</li><li>");
			
			%>
		</c:forEach>
		<a href="addTeam.sec"><img src="../images/add.jpg" /></a>
		</ul>
       <!-- <ul>
            <li>
			
            	<a href="getTeamPage.sec?teamId=1"><img src="data:image/jpeg;base64,${pic}" /></a>
            	<a href="team/getTeamPage.sec?teamId=2"><img src="images/cgLogo.png" /></a>
            	<a href="team/getTeamPage.sec?teamId=3"><img src="images/dreamsLogo.png" /></a>
            	<a href="team/getTeamPage.sec?teamId=4"><img src="images/elStarLogo.png" /></a>
            	<a href="team/getTeamPage.sec?teamId=5"><img src="images/eliteLogo.png" /></a>
            	<a href="team/getTeamPage.sec?teamId=6"><img src="images/emccLogo.png" /></a>
            </li>
            <li>
            	<a href="teams/express.html"><img src="images/expressLogo.png" /></a>
            	<a href="teams/falcons.html"><img src="images/falconsLogo.png" /></a>
            	<a href="teams/jcc.html"><img src="images/jccLogo.png" /></a>
            	<a href="teams/masterblaster.html"><img src="images/mbLogo.png" /></a>
            	<a href="teams/maxXI.html"><img src="images/maxLogo.png" /></a>
            	<a href="teams/passion.html"><img src="images/passionLogo.png" /></a>
            </li>
            <li>
            	<a href="teams/royalcc.html"><img src="images/royalLogo.png" /></a>
            	<a href="teams/rsk.html"><img src="images/rskLogo.png" /></a>
            	<a href="teams/sapphire.html"><img src="images/sapphireLogo.png" /></a>
            	<a href="teams/trendy.html"><img src="images/trendyLogo.png" /></a>
            	<a href="#" style="position:relative;"><span>View Team Info</span></a>
            	<a href="#" style="position:relative;"><span>View Players Info</span></a>
            </li>
        </ul> -->
    </section>
    <!-- /******** Team Logo Section End ********/ -->
    
    <!-- /******** Home Page Content Section ********/ -->
    <section id="content">
    	<article>
        	<div>
        		<h1>Welcome to BJTCT Website</h1>
            
            	<p>Bangalore Jain Tennis Ball Cricket Trust is a Jain cricket trust started 15 Years back with 14 teams and  Player strength of 252 Players.</p>
            	<p>Today the Trust is grown to 16 Teams with 320 Players coming from different parts of the city. Professional Cricket is been played regularly and includes activities such as  booking the Ground , maintaining Score Records & Team Uniforms for each playing team.</p>
            	<p>A lot of discipline is been maintained by all the team members on and off the field. Tournaments are conducted through out the year and a roaster is maintained.</p>
				<p style="margin-bottom: 0px;">BJTC Trust is been handled by a group of Committee and Sub Committee members.</p>
        	</div>
        <aside>
        	<p>Motto of the Trust is to make every member play cricket and also to involve them in different social activities too and make the bond between each other even stronger.</p>
            <p style="margin-bottom: 0px;">Aim of BJTCT is to strive towards making a name to recon in the years to come and grow bigger with each passing year.</p>
        </aside>
        </article>
    </section>
    <!-- /******** Home Page Content Section End ********/ -->
    
    <!-- /******** Home Page Contact Section ********/ -->
    <section id="contact">
    	<article>
        	<div align="center"><img src="../images/cntShpIcon.png" /></div>
            
            <div class="contact">
            	<div class="contactAdd">
                	<img src="../images/cntCircle.png" class="crc" />
                    <h2>Visit Our Office</h2>
                    <p># 5, 2nd Floor, 5th Cross, R T Street, Bangalore - 560 053</p>
                </div>
                <div class="contactEmail">
                	<img src="../images/cntCircle.png" class="crc" />
                    <h2>Mail Us Today</h2>
                    <p><a href="mailto:bjtct2014@gmail.com">bjtct2014@gmail.com</a></p>
                </div>
            </div>
            
            <div align="center">
            	<a href="https://www.google.co.in/maps/place/Rangaswamy+Temple+St,+Anchepet,+Chickpete,+Bengaluru,+Karnataka+560053/@12.9701987,77.5790618,17z/data=!3m1!4b1!4m2!3m1!1s0x3bae1609626622bd:0xa6dab3a3e8b6d095" target="_blank"><img src="../images/getDirectionBtn.png" /></a>
            </div>
        </article>
    </section>
    <!-- /******** Home Page Contact Section End ********/ -->
    
    <!-- /******** Home Page Contact Section ********/ -->
    <section id="footer">
    	<article>
        	<p>Team Activities, Match Schedules and Sports Equipments.</p>
            <p class="copyright">&copy; 2014 design by <u>BANGALORE JAIN TENNIS CRICKET TRUST.</u>  All Rights Reserved.</p>
        </article>
    </section>
    <!-- /******** Home Page Contact Section End ********/ -->
</div>
<!-- /******** Wrapper Outer End ********/ --> 
</body>
</html>
