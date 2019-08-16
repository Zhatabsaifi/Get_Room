<%@page import="java.util.HashMap"%>
<%
    HashMap UserDetails = (HashMap) session.getAttribute("UserDetails");
    if (UserDetails != null) {
%>
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
                        <li class="nav-item"><a href="Logout" class="nav-link">Logout</a></li>

                    </ul>
                </div>
            </div>
        </nav>
        <!-- END nav -->
        <section class="ftco-booking">
            <br>
            <div class="container">
                <div class="row align-items-center">
                    <form action="CSearchHotelPro" method="post" class="booking-form">
                        <div class="d-lg-flex align-items-md-end">

                            <div class="form-group mb-3 mb-lg-0 mr-4">
                                <label for="#">Enter City</label>
                                <input type="text" name="city" class="form-control " placeholder="City">
                            </div>
                            <div class="form-group mb-2 mb-lg-0 mr-2">
                                <label for="#">CheckIn Date(MM/DD/YYYY)</label>
                                <input type="text" name="checkindate" id="checkindate" class="form-control checkin_date" placeholder="CheckIn date" required>
                            </div>
                            <div class="form-group mb-2 mb-lg-0 mr-2">
                                <label for="#">CheckOut Date(MM/DD/YYYY)</label>
                                <input type="text" name="checkoutdate" id="checkoutdate" class="form-control checkout_date" placeholder="CheckOut date" required>
                           
                            </div>


                            <div class="form-group">
                                <input type="submit" value="Search Hotel" class="btn btn-primary py-3 px-4">
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </section>

        <br>
          <%
            String m = (String) session.getAttribute("msg");
            if (m != null) {
        %>
        <div class="panel">
            <div class="panel-body bg-light text-center">
                <%=m%>
            </div>
        </div>
        <br>
        <br>
        <%
                session.setAttribute("msg", null);
            }
        %>
        <br>

        <section class="ftco-section ftc-no-pb ftc-no-pt bg-light">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 p-md-5 img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/bg_1.jpg);">

                        <span class="icon-play"></span>

                    </div>
                    <div class="col-md-7 py-5 wrap-about pb-md-5 ftco-animate">
                        <div class="heading-section pt-md-5 pl-md-5 mb-5">
                            <div class="ml-md-0">
                                <span class="subheading">Welcome to GetRooms</span>
                                <h2 class="mb-4">About Us</h2>
                            </div>
                        </div>
                        <div class="pb-md-5">
                            <p>We are India's largest hotel network spread across 230 cities with 8500+ hotels offering standardized and hassle-free stay experiences at an unmatched price.</p>
                            <p>Anyone can compare price of same Room in Different Hotels and can book room online at the best price. </p>
                            <ul class="ftco-social d-flex">
                               <li class="ftco-animate"><a href="https://twitter.com/SaifiZhatab"><span class="icon-twitter"></span></a></li>
                                <li class="ftco-animate"><a href="https://www.facebook.com/zhatab.saifi"><span class="icon-facebook"></span></a></li>
                                <li class="ftco-animate"><a href="https://www.instagram.com/zhatab_saifi/"><span class="icon-instagram"></span></a></li>
                             </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <br>
        <br>

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
        <script type="text/javascript">
            $(function () {
                $('#checkindate').datetimepicker({
                    format: 'DD/MM/YYYY',
                    minDate: new Date()
                });
            });
            $(function () {
                $('#checkoutdate').datetimepicker({
                    format: 'DD/MM/YYYY',
                    minDate: new Date()
                });
            });
        </script>

    </body>
</html>
<%
    } else {
        session.setAttribute("msg", "Plz Login first");
        response.sendRedirect("index.jsp");
    }
%>