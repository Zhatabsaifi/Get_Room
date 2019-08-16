<%@page import="org.joda.time.Days"%>
<%@page import="org.joda.time.DateTime"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.HashMap"%>
<!DOCTYPE html>
<%
    HashMap userdetail = (HashMap)session.getAttribute("UserDetails");
    if(userdetail!= null){
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
	      <a class="navbar-brand" href="User.jsp">GetRooms</a>
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
                    String m = (String) session.getAttribute("msg");
                    if (m != null) {
                %>
                <div class="panel">
                    <div class="panel-body bg-warning text-center">
                        <%=m%>
                    </div>
                </div>
                <br>
                <br>
                <%
                        session.setAttribute("msg", null);
                    }
                %>
                
                <h1 class="text-center">Booking Details</h1><hr/>
<%
    int uid = Integer.parseInt((String)userdetail.get("uid"));
     DataBase.DbConnection db = (DataBase.DbConnection) application.getAttribute("db");
    if(db==null){
      db=new DataBase.DbConnection(); 
        application.setAttribute("db", db);
    }
     java.text.SimpleDateFormat sdf1=new java.text.SimpleDateFormat("MM/dd/yyyy");
      java.util.Date dt3=new java.util.Date();
                String strDate= sdf1.format(dt3);  
                java.util.Date curDate=sdf1.parse(strDate);
       DateTime date3 = new DateTime(curDate);
    int nodatafound=0;
    ResultSet rs = db.booking(uid);
        while(rs.next()){ nodatafound=1;
                java.sql.Date cin = (java.sql.Date)rs.getDate("checkindate");
          java.util.Date utilDate = new java.util.Date(cin.getTime());
        DateTime date1 = new DateTime(utilDate);
        if((Days.daysBetween(date3,date1).getDays())>=0){
            nodatafound=1;
%>
                <section class="ftco-section ftco-services">
<div class="container">
	<div class="row">
            	<div class="notice-table col-md-12 pull-left">
            		
                	<table id="mydata" class=" table table-striped table-bordered hover" cellspacing="0" width="100%">
                    	<thead>
                          <tr>
                              <th>Booking ID</th>
							  <th>Customer ID</th>
							  <th>Hotel Details</th>
							  <th>Room Type</th>
                              <th>Check In Date & Time</th>
                              <th>Check Out Date & Time</th>
                              <th>BreakFast Included</th>
                              <th>No.of Guests</th>
							 <th>No.of Rooms</th>
							 <th>Total Charges</th>
                              <th>Status</th>
							  <th></th>
							  <th></th>
                          </tr>
                      	</thead>
                      	
                      	<tbody>
                       
                            <tr>
                                     <td><%=  (Integer)rs.getInt("bid")    %></td>
                              <td><%=  (Integer)rs.getInt("cid")    %></td>
                              
                              <%
                                  ResultSet hhhh= db.hotelDetail((Integer)rs.getInt("hid"));
                                  if(hhhh.next()){
                              %>
                             <td><%= (String)hhhh.getString("name")%><br><b>Address:</b> <%= (String)hhhh.getString("address")%><br><b>Phone</b> No.: <%= (String)hhhh.getString("phone")%></td>
                             <%
                                 }
                             %>
                             
                             <%
                                 ResultSet roomdetails= db.roomDetail((Integer)rs.getInt("rid"));
                                 if(roomdetails.next()){
                             %>
                            <td><%= (String)roomdetails.getString("type")%></td>
                            <%  }   %>
                            
                              
                              <td><%=(java.sql.Date)rs.getDate("checkindate")%></td>
				<td> <%= (java.sql.Date)rs.getDate("checkoutdate")%></td>
                                <%  String breakfast = (String)rs.getString("breakfastincluded");   
                                        if(breakfast != null){
                                %>
                              <td>Yes</td>
                              <%
                                    }else{
                              %>
                              <td>No</td>
                              <%
                                }
                              %>
                              <td><%=  (Integer)rs.getInt("noofguests")    %></td>
                              <td><%=  (Integer)rs.getInt("noofrooms")    %></td>
                              <td><%=  (Integer)rs.getInt("totalcharges")    %></td>
                              <td>Payment Done / Pending</td>
						 
                              <td>
									
                                                                        <form action="CancelBooking" method="post">
                                                                            <input type="hidden" name="bid" value="+<%=(Integer)rs.getInt("bid")%>">
									<input type="submit" class="btn btn-primary" value='Cancel booking'/>
									</form>
									</td>
                            </tr>
                       
                          
                      	</tbody>
                  	</table>
              	</div>
            </div>
			</div>
		</section>
		<section>
			<div class="container">
				
			
            
         </div>
        
		
</section>
    <%
                } }
                if(nodatafound==0){
                    session.setAttribute("msg","No booking present");
                      response.sendRedirect("User.jsp");
            }
    %>
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
<%
    }else{
        session.setAttribute("msg", "Please login frist");
        response.sendRedirect("index.jsp");
    }
%>