<%@page import="java.util.HashSet"%>
<%@page import="java.util.HashMap"%>
<%@page  errorPage="Error.jsp" %>
<%
    HashMap UserDetails=(HashMap)session.getAttribute("UserDetails");
    if(UserDetails!=null){ 
        HashSet allRoomDetails=(HashSet)session.getAttribute("allRoomDetails");
        String hname=(String)session.getAttribute("hname");
%>
<html lang="en">
  <head>
    <title>GetRooms</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/aos.css">
    <link rel="stylesheet" href="css/ionicons.min.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.jsp">GetRooms</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">

                        <li class="nav-item active"><a href="User.jsp" class="nav-link">Search Hotel</a></li>


                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Profile
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="CViewProfile.jsp">View Profile</a>
                                <a class="dropdown-item" href="CEditProfile.jsp">Update Profile</a>
                                <a class="dropdown-item" href="CViewBooking.jsp">View Bookings</a>

                        </li>
                        <li class="nav-item"><a href="index.jsp" class="nav-link">Logout</a></li>

                    </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->

    <section class="ftco-booking">
    	<div class="container">
		</div>
		</section>
		<section class="ftco-section ftco-room bg-light">
			<div class="container">
				<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate text-center">
          	<span class="subheading">Rooms</span>
            <h2 class="mb-4">Book A Room</h2>
             </div>
        </div>
        <div class="row">
               <%
            java.util.Iterator i=allRoomDetails.iterator();
            while(i.hasNext()){
            java.util.HashMap ud=(java.util.HashMap)i.next();
        %>
        
          
        	<div class="col-md-4">
                 		<div class="room-wrap ftco-animate">
                                    <a href="BookRoom.jsp?rid=<%=ud.get("rid")%>&hname=<%=hname%>&price=<%=ud.get("priceperroomperday")%>&rt=<%=ud.get("rt")%>&f=<%=ud.get("facilities")%>" method="post" class="img" style="background-image: url(images/room-1.jpg);"></a>
        			<div class="text pt-4 pl-lg-5">
        				<h2><a href="BookRoom.jsp?rid=<%=ud.get("rid")%>&hname=<%=hname%>&price=<%=ud.get("priceperroomperday")%>&rt=<%=ud.get("rt")%>&f=<%=ud.get("facilities")%>" method="post" ><%=ud.get("rt")%></a></h2>
        				<p class="d-flex price-details align-items-center pt-3">
        					<span>Price</span>
        					<span class="price"><i class="fa fa-rupee"></i><%=ud.get("priceperroomperday")%><small>/ night</small></span>
        				</p>
						<p>Facilities: <%=ud.get("facilities")%>
        				<p><a href="BookRoom.jsp?rid=<%=ud.get("rid")%>&hname=<%=hname%>&price=<%=ud.get("priceperroomperday")%>&rt=<%=ud.get("rt")%>&f=<%=ud.get("facilities")%>"  method="post" class="btn-customize">Reserve A Room</a></p>
        			</div>
        		</div>
        	</div>
                                        <%
                    }
                    %>
      
                </div>
        
        
    </div>			
</section>
   <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
          <div class="row mb-5 d-flex">
                    <div class="col-md">
                        <div class="ftco-footer-widget mb-4">
                            <h2 class="ftco-heading-2">About GetRooms</h2>
                            <p>We are India's largest hotel network spread across 230 cities with 8500+ hotels offering standardized and hassle-free stay experiences at an unmatched price.</p>
                            <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
                                <li class="ftco-animate"><a href="https://twitter.com/SaifiZhatab"><span class="icon-twitter"></span></a></li>
                                <li class="ftco-animate"><a href="https://www.facebook.com/zhatab.saifi"><span class="icon-facebook"></span></a></li>
                                <li class="ftco-animate"><a href="https://www.instagram.com/zhatab_saifi/"><span class="icon-instagram"></span></a></li>
                            </ul>
                        </div>
                    </div>


                    <div class="col-md">
                        <div class="ftco-footer-widget mb-4">
                            <h2 class="ftco-heading-2">Have a Question?</h2>
                            <div class="block-23 mb-3">
                                <ul>
                                    <li><span class="icon icon-map-marker"></span><span class="text">Main Bazar Dadri,GB Nagar,UP-203207</span></li>
                                    <li><a href="#"><span class="icon icon-phone"></span><span class="text">8010311757</span></a></li>
                                    <li><a href="#"><span class="icon icon-envelope"></span><span class="text">zhatabsaifi@gmail.com</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | GetRooms</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
</footer>

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>
<%}else{
        session.setAttribute("msg","No Room Found");
        response.sendRedirect("User.jsp");
    }

%>