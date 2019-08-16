<%@page import="java.util.HashSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.HashMap"%>

<%
    HashMap UserDetails = (HashMap) session.getAttribute("UserDetails");
    if (UserDetails != null) {
        HashMap bd = new HashMap();
        String hname = request.getParameter("hname");
        String rt = request.getParameter("rt");
        String price = request.getParameter("price");
        String facilities = request.getParameter("f");
        String rid = request.getParameter("rid");
        if (hname != null) {
            session.setAttribute("hname", hname);
        }
        if (rt != null) {
            session.setAttribute("rt", rt);
        }
        if (price != null) {
            session.setAttribute("price", price);
        }
        if (facilities != null) {
            session.setAttribute("facilities", facilities);
        }
        if (rid != null) {
            session.setAttribute("rid", rid);
        }
%>
<!DOCTYPE html>
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
        <link href="css/bootstrap.min1.css" rel="stylesheet">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link href="css/bootstrap.minp.css" rel="stylesheet">
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
        <section class="ftco-section ftco-services">
            <div class="container">
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
                <div class="row">
                    <div class="col-lg-7">

                        <div class="third js-fullheight">
                            <section class="js-fullheight">
                                <div class="slider-item js-fullheight" style="background-image: url(images/room-1.jpg);">
                                    <div class="overlay"></div>
                                </div>

                            </section>
                        </div>
                        <br>
                        <br>
                        <div style="font-size:20px;">
                            <p> <%=(String) session.getAttribute("hname")%>, <%=(String) session.getAttribute("rt")%></p>
                            <p class="d-flex price-details align-items-center pt-3">
                            <p>Price:  
                                <span class="price"><i class="fa fa-rupee"></i><%=(String) session.getAttribute("price")%><small>/ Day</small></span></p>
                            </p>	

                        </div>
                    </div>

                    <div class="col-lg-5">
                        <div class="panel panel-default">
                            <div class="panel-heading text-center">
                                <h3>Booking Details</h3>
                            </div>
                            <div class="panel-body">
                                <form action="BookRoomPro" data-toggle="validator" class="form-horizontal">
                                    <div class="form-group">
                                        <label for="cid" class="col-lg-5 control-label">CheckIn Date:(MM/DD/YYYY)</label>
                                        <div class="col-lg-7">
                                            <input type="text" name="checkindate"class="form-control checkin_date" placeholder="Check-in date" required>
                                        </div>
                                    </div><!--end form group-->
                                    <div class="form-group">
                                        <label for="cod" class="col-lg-5 control-label">CheckOut Date:(MM/DD/YYYY)</label>
                                        <div class="col-lg-7">
                                            <input type="text" name="checkoutdate" class="form-control checkout_date" placeholder="Check-out date" required>
                                        </div>
                                    </div><!--end form group-->
                                    <div class="form-group">
                                        <label for="noroom" class="col-lg-5 control-label"> No. of Rooms:</label>
                                        <div class="col-lg-2">
                                            <select name="nor">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                            </select>
                                        </div>
                                    </div><!--end form group-->
                                    <div class="form-group">
                                        <label for="noguests" class="col-lg-5 control-label"> No. of Guests:</label>
                                        <div class="col-lg-2">
                                            <select name="nog">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                            </select>
                                        </div>
                                        <div class="col-lg-5">Max 5 Guests/Room</div>

                                    </div><!--end form group-->

                                    <div class="form-group">
                                        <label for="price" class="col-lg-4 control-label">Room Price:</label>
                                        <div class="col-lg-7">

                                            <label id="price" name="rprice" class=" control-label"><i class="fa fa-inr"></i> <%=(String) session.getAttribute("price")%>/Day (Inclusive of all Taxes)</label>
                                        </div>

                                    </div><!--end form group-->
                                    <div class="form-group">
                                        <div class="col-lg-5">
                                        </div>

                                        <div class="col-lg-5">
                                            <input type="hidden" name="price" value="<%=(String) session.getAttribute("price")%>"/> 
                                            <input type="hidden" name="rid" value="<%=(String) session.getAttribute("rid")%>"/>   
                                            <input type="submit" style="font-size:12px;"class="btn btn-primary" value='Proceed to Book'/>
                                        </div>
                                    </div><!--end form group-->
                                    <div class="form-group">
                                        <label for="note">Note: Address will be Given After Making the Payment.</label>
                                    </div><!--end form group-->
                                </form>
                            </div>
                        </div>
                        <hr>
                        <h1>Hotel Rules</h1>
                        <p>* Check in after 12:00 PM</p>
                        <p>* Check out before 11:00 AM</p>
                        <p>* Guests can check in using any local or outstation ID proof (PAN card not accepted).</p>
                        <hr>
                        <h1>Facilties</h1>
                        <p>* AC, TV, Geyser</p>
                        <p>* Swimming Pool</p>
                        <p>* Pick and Drop</p>
                        <hr>
                        <h1>Places of Interest</h1>
                        <p>* Nearest Market</p>
                        <p>* Nearest Railway Station</p>
                        <p>* Bus Stop</p>

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
<%} else {
        session.setAttribute("msg", "No Room Found");
        response.sendRedirect("User.jsp");
    }

%>