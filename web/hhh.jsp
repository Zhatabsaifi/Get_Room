<%@page import="java.util.HashSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.HashMap"%>

<% 
    HashMap UserDetails=(HashMap)session.getAttribute("UserDetails");
    if(UserDetails!=null)
    {
        HashMap BookingDetails=(HashMap)session.getAttribute("h");
        if(BookingDetails!=null)
        {
        
%>
<html lang="en">
  <head>
    <title>GetRooms</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i" rel="stylesheet">
	
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:600' rel='stylesheet' type='text/css'>
    <link href="css/bootstrap-glyphicons.css" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link href="css/bootstrap.min1.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link href="css/bootstrap.min.css" rel="stylesheet">
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
		   
	        	<li class="nav-item active"><a href="index.jsp" class="nav-link">Home</a></li>
	        	<li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Cities
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Delhi</a>
          <a class="dropdown-item" href="#">Greater Noida</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">More Cities</a>
        </div>
      </li>				
	        
	  <li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					  Profile
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					  <a class="dropdown-item" href="CViewProfile.jsp">View Profile</a>
					  <a class="dropdown-item" href="CEditProfile.jsp">Update Profile</a>
					  <a class="dropdown-item" href="CViewBooking.jsp">View Bookings</a>
					 
				  </li>
				<li class="nav-item"><a href="contact.jsp" class="nav-link">Contact</a></li>
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
		<section class="ftco-section ftco-services">
<div class="container">
			
			
			<div class="row">
			<div class="col-lg-6">
					<div class="panel panel-default">
						<div class="panel-heading text-center">
							<h3>Guest Details</h3>
						</div>
						<div class="panel-body">
						</br>
						</br>
							<form action="" data-toggle="validator" class="form-horizontal">
								<div class="form-group">
									<label for="name" class="col-lg-3 control-label">Name:</label>
									<div class="col-lg-9">
										<input type="name"name="name" class="form-control" id="name" placeholder="Enter your name" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="phone" class="col-lg-3 control-label">Phone:</label>
									<div class="col-lg-9">
										<input type="text" name='phone' class="form-control" pattern="^[_0-9]{1,}$" maxlength="10" minlength="10" id="phone" placeholder="Enter your phone" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="email" class="col-lg-3 control-label">Email:</label>
									<div class="col-lg-9">
										<input type="email" name="email" class="form-control" id="email" placeholder="Enter your email" required/>
									</div>
								</div><!--end form group-->
								
							</form>
						</div>
						
					</div>
					<div class="panel panel-default">
						<div class="panel-heading text-center">
							<h3>Booking Details</h3>
						</div>
						<div class="panel-body">
						</br>
						</br>
							<form action="BookRoom.jsp" data-toggle="validator" class="form-horizontal">
								<div class="form-group">
									<label for="dob" class="col-lg-3 control-label">CheckIn Date:</label>
									<div class="col-lg-9">
		    					<input type="text" class="form-control checkin_date" placeholder="Check-in date">
									
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="dob" class="col-lg-3 control-label">CheckOut Date:</label>
									<div class="col-lg-9">
		    					<input type="text" class="form-control checkin_date" placeholder="Check-in date">
									
									</div>
								</div><!--end form group-->
								<div class="panel panel-default">
								<div class="panel-body">
								<div class="form-group">
									<label for="dob" class="col-lg-10 control-label">Room Type, Number Of Guest, No.of rooms, No. of Nights / Days </label>
									<div class="col-lg-2">
		    					<input type="submit" style="font-size:12px;"class="btn btn-primary" value='Edit'/>
									
									</div>
								</div><!--end form group-->
								</div>
								</div>
								
							</form>
						</div>
						
					</div>
					</div>
					
							
							<div class="col-lg-6">
					<div class="panel panel-default">
						<div class="panel-heading text-center">
							<h3>Payment Details</h3>
						</div>
						<div class="panel-body">
						</br>
						</br>
							<form action="" data-toggle="validator" class="form-horizontal">
								<div class="form-group">
									<label for="Bamount" class="col-lg-5 control-label">Booking Amount:</label>
									<div class="col-lg-5">
										<input type="Bamount"name="Bamount" class="form-control" id="Bamount" placeholder="" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="discount" class="col-lg-5 control-label">Discount:</label>
									<div class="col-lg-5">
										<input type="discount"name="discount" class="form-control" id="discount" placeholder="" required/>
										</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="pamount" class="col-lg-5 control-label">Payable Amount:</label>
									<div class="col-lg-5">
										<input type="pamount" name="pamount" class="form-control" id="pamount" placeholder="" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
								<div class="col-lg-5">
									</div>
									<div class="col-lg-5">
									
										<input type="submit" style="font-size:12px;"class="btn btn-primary" value='Pay Now'/>
										<input type="submit" style="font-size:12px;"class="btn btn-primary" value='Pay at Hotel'/>
									</div>
								</div><!--end form group-->
								
							</form>
						</div>
						
					</div>
					
					
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
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
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
  <script src="js/script.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
<script type="text/javaScript" src='js/state.js' ></script>
    
  </body>
</html>
<%}}else{
        session.setAttribute("msg","No Room Found");
        response.sendRedirect("User.jsp");
    }

%>