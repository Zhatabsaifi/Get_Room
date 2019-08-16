<!DOCTYPE html>
<html lang="en">
  <head>
    <title>GetRooms</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i" rel="stylesheet">
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
	        	<li class="nav-item"><a href="AddHotel.jsp" class="nav-link">Add Hotel</a></li>
	        	<li class="nav-item"><a href="SearchHotel.jsp" class="nav-link">Search Hotel</a></li>
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
            	<div class="notice-table col-md-12 pull-left">
            		<h4 class="text-center">Hotel Details</h4><hr/>
                	<table id="mydata" class=" table table-striped table-bordered hover" cellspacing="0" width="100%">
                    	<thead>
                          <tr>
                              <th>Hotel Name</th>
                              <th>Owner Name</th>
                              <th>Address</th>
                              <th>Email</th>
                              <th>Phone</th>
                              <th>Status</th>
                          </tr>
                      	</thead>
                      	<tfoot>
                          <tr>
                              <th>Hotel Name</th>
                              <th>Owner Name</th>
                              <th>Address</th>
                              <th>Email</th>
                              <th>Phone</th>
                              <th>Status</th>
                          </tr>
                      	</tfoot>
                      	<tbody>
                       
                            <tr>
                                <td></td>
                              <td></td>
                              <td></td>
                              <td></td>
                              <td></td>
                              <td></td>
                            </tr>
                       
                          
                      	</tbody>
                  	</table>
              	</div>
            </div>
			</div>
		</section>
		<section>
			<div class="container">
				
			<form action="profile.jsp" method='post' data-toggle="validator" enctype='multipart/form-data'  class="form-horizontal">
								
								<div class="form-group">
								<div class="row">
									<div class="col-lg-3">
									</div>
									<div class="col-lg-7">
										<input type="email" name="email" class="form-control" id="email" placeholder="Enter Hotel Name" required/>
									</div>
									<input type="submit" class="btn btn-primary" value='Search'/>
									</div>
									
								</div><!--end form group-->
								
							</form>
            
         </div>
        
		</section>
		<section class="ftco-section ftco-services">
		<div class="container">
	
            	<form action="profile.jsp" method='post' data-toggle="validator" enctype='multipart/form-data'  class="form-horizontal">
								
								<div class="form-group">
								<div class="row">
									<label for="email" class="col-lg-3 control-label" style="text-align:right;font-size:25px;"><b>Email :</b></label>
									<div class="col-lg-9">
										<input type="email" name="email" class="form-control" id="email" placeholder="Enter your email" required/>
									</div>
									</div>
									
								</div><!--end form group-->
								<div class="form-group">
								<div class="row">
									<label for="name" class="col-lg-3 control-label"style="text-align:right;font-size:25px;"><b>Name :</b></label>
									<div class="col-lg-9">
										<input type="text" name="name" class="form-control" pattern="^[_A-Z a-z]{1,}$" id="name" placeholder="Enter your name" required/>
									</div>
									</div>
								</div><!--end form group-->
								<div class="form-group">
								<div class="row">
									<label for="phone" class="col-lg-3 control-label"style="text-align:right;font-size:25px;"><b>Phone :</b></label>
									<div class="col-lg-9">
										<input type="text" name='phone' class="form-control" pattern="^[_0-9]{1,}$" maxlength="10" minlength="10" id="phone" placeholder="Enter your phone" required/>
									</div>
									</div>
								</div><!--end form group-->
								<div class="form-group">
								<div class="row">
									<label for="gender" class="col-lg-3 control-label"style="text-align:right;font-size:25px;"><b>Gender :</b></label>
									<div class="col-lg-9">
										<input type="radio" id="gender"name="gender" value="male" style="text-align:right;font-size:25px;"checked/><span style="text-align:right;font-size:25px;">Male </span>
										<input type="radio" id="gender"name="gender" value="female"/><span style="text-align:right;font-size:25px;">Female </span>
									</div>
									</div>
								</div><!--end form group-->
								<div class="form-group">
								<div class="row">
									<label for="dob" class="col-lg-3 control-label"style="text-align:right;font-size:25px;"><b>Date of Birth :</b></label>
									<div class="col-lg-9">
										<input type="text" name="dob" class="form-control" id="dob" placeholder="dd/MM/YYYY" required />
									
									</div>
									</div>
								</div><!--end form group-->
								<div class="form-group">
								<div class="row">
									<label for="state" class="col-lg-3 control-label"style="text-align:right;font-size:25px;"><b>State :</b></label>
									<div class="col-lg-9">
										<select name="state" class="form-control" id="listBox" onchange='selct_district(this.value)'>
										</select>
									</div>
									</div>
								</div><!--end form group-->
								<div class="form-group">
								<div class="row">
									<label for="city" class="col-lg-3 control-label"style="text-align:right;font-size:25px;"><b>City :</b></label>
									<div class="col-lg-9">
										<select class="form-control" id='secondlist'>	
										</select>
									</div>
									</div>
								</div><!--end form group-->
								<div class="form-group">
								<div class="row">
									<label for="area" class="col-lg-3 control-label"style="text-align:right;font-size:25px;"><b>Area :</b></label>
									<div class="col-lg-9">
										
										<input type="text" name="area" class="form-control" id="area" placeholder="Enter your Area" required/>
									</div>
									</div>
								</div><!--end form group-->
								<div class="form-group">
								<div class="row">
									<label for="photo" class="col-lg-3 control-label"style="text-align:right;font-size:25px;"><b>Photo :</b></label>
									<div class="col-lg-9">
										<input type="file" name="photo" class="form-control" id="photo" />
										
									</div>
									</div>
								</div><!--end form group-->
								<div class="form-group">
								<div class="row">
									<label for="pass" class="col-lg-3 control-label"style="text-align:right;font-size:25px;"><b>Password :</b></label>
									<div class="col-lg-9">
										<input type="password" name="password" class="form-control" id="pass" placeholder="Enter your password" required/>
									</div>
									</div>
								</div><!--end form group-->
								<div class="form-group">
								<div class="row">
								<div class="col-lg-3">
								</div>
									<div class="col-lg-1">
										<input type="submit" class="btn btn-primary" value='Update'/></span>
									</div>
									<div class="col-lg-1">
										<input type="submit" class="btn btn-primary" value='Delete'/></span>
									</div>
									<div class="col-lg-1">
										<input type="submit" class="btn btn-primary" value='Reset'/></span>
									</div>
								</div>
								</div>
							</form>
			</div>
		</section>
  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script type="text/javaScript" src='js/state.js' ></script>
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