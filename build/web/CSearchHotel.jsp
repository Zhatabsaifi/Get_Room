<%@page import="java.util.HashSet"%>
<%@page import="java.util.HashMap"%>
<%
    HashMap UserDetails=(HashMap)session.getAttribute("UserDetails");
    if(UserDetails!=null){ 
    HashSet allHotelDetails=(HashSet)session.getAttribute("allHotelDetails");
    String city=(String)session.getAttribute("city");
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
          <%
        String msg=(String)session.getAttribute("msg");
        if(msg != null){
%>
        <div class="panel panel-warning">
            <div class="panel-heading text-center">
                <h4><%=  msg %></h4>
            </div>
        </div>
<%
        session.setAttribute("msg", null);
    }
%>
<%
    java.util.HashMap date = (java.util.HashMap)session.getAttribute("date");
%>
		<section class="ftco-section ftco-room">
			<div class="container">
			<div class="row">
		<div class="col-md-3">
		<H3>Popular Areas</h3>
		
                <form action="CSearchHotelPro" method="post">
                    <input type="hidden" name="checkindate" value="<%= date.get("in")%>"/>
                    <input type="hidden" name="checkoutdate" value="<%= date.get("out")%>"/>
                    <input type="hidden" name="city" value="Pari Chowk"/>
                    <input style="font-size: 10px;" type="submit" class="btn btn-primary" value='Pari Chowk'/>
                </form>
                <form action ="CSearchHotelPro" method="post">
                    <input type="hidden" name="checkindate" value="<%= date.get("in")%>"/>
                    <input type="hidden" name="checkoutdate" value="<%= date.get("out")%>"/>
                    <input type="hidden" name="city" value="Jagat Farm"/>
                    <input style="font-size: 10px;" type="submit" class="btn btn-primary" value='Jagat Farm'/>
		</form>
		<hr>
		<H3>Facilities</h3>
                <form action="Facility" method="post">
                    <input type="hidden" name="facility" value="Swimming Pool">
                    <input style="font-size: 10px;" type="submit" class="btn btn-primary" value='Swimming Pool'/>
                 </form>
                <form action="Facility" method="post">
                    <input type="hidden" name="facility" value="Pick and drop">
                    <input style="font-size: 10px;" type="submit" class="btn btn-primary" value='Pick and drop'/>
		</form>
		<hr>
		<H3>Price</h3>
		<form action="BookingProcess.jsp" data-toggle="validator" class="form-horizontal">
		<div class="form-group">
										<label for="noroom" class="col-lg-5 control-label"> Price:</label>
										<div class="col-lg-2">
										<select>
										  <option value="1">700 - 800</option>
										  <option value="2">800 - 900</option>
										  <option value="3">900 - 1000</option>
										  <option value="4">1000 - 1500</option>
										  <option value="5">1500 - 2000</option>
										</select>
										</div>
									</div><!--end form group-->
									</form>
		</div>
                            
		<div class="col-md-9">
        <div class="row">
            <%
            java.util.Iterator i=allHotelDetails.iterator();
            while(i.hasNext()){
                java.util.HashMap ud=(java.util.HashMap)i.next();
        %>
                            
        	<div class="col-md-4">
        		<div class="room-wrap ftco-animate">
                            <a href="CSearchRoom1Pro?name=<%=ud.get("hname")%>&city=<%=city%>" method="post" class="img" style="background-image: url(images/room-1.jpg);"></a>
        			<div class="text pt-4 pl-lg-5">
        				<h2><a href="CSearchRoom1Pro?name=<%=ud.get("hname")%>&city=<%=city%>" method="post"><%=ud.get("hname")%></a></h2>
        				
        				<p class="d-flex price-details align-items-center pt-3">
        					<span>Starting From</span>
        					<span class="price"><i class="fa fa-rupee"></i><%=ud.get("price")%><small>/ night</small></span>
        				</p>
						<p>Facilities: <%=ud.get("facilities")%></p>
        				<p><a href="CSearchRoom1Pro?name=<%=ud.get("hname")%>&city=<%=city%>" method="post" class="btn-customize">View Rooms</a></p>
        			</div>
        		</div>
        	</div>
                                        <%  }
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
<%}
else{
        session.setAttribute("msg","No Hotel Found");
        response.sendRedirect("User.jsp");
    }
    
    %>