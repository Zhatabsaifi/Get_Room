package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.HashSet;
import java.sql.ResultSet;
import java.util.HashMap;

public final class hhh_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
 
    HashMap UserDetails=(HashMap)session.getAttribute("UserDetails");
    if(UserDetails!=null)
    {
        HashMap BookingDetails=(HashMap)session.getAttribute("h");
        if(BookingDetails!=null)
        {
        

      out.write("\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("  <head>\r\n");
      out.write("    <title>GetRooms</title>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("    \r\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700\" rel=\"stylesheet\">\r\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i\" rel=\"stylesheet\">\r\n");
      out.write("\t\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css\">\r\n");
      out.write("    <link href='https://fonts.googleapis.com/css?family=Open+Sans:600' rel='stylesheet' type='text/css'>\r\n");
      out.write("    <link href=\"css/bootstrap-glyphicons.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/open-iconic-bootstrap.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/animate.css\">\r\n");
      out.write("    <link href=\"css/bootstrap.min1.css\" rel=\"stylesheet\" />\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/owl.carousel.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/owl.theme.default.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/magnific-popup.css\">\r\n");
      out.write("\r\n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/aos.css\">\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/ionicons.min.css\">\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap-datepicker.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/jquery.timepicker.css\">\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/flaticon.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/icomoon.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.css\">\r\n");
      out.write("\t\r\n");
      out.write("  </head>\r\n");
      out.write("  <body>\r\n");
      out.write("    \r\n");
      out.write("\t  <nav class=\"navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light\" id=\"ftco-navbar\">\r\n");
      out.write("\t    <div class=\"container\">\r\n");
      out.write("\t      <a class=\"navbar-brand\" href=\"index.jsp\">GetRooms</a>\r\n");
      out.write("\t      <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#ftco-nav\" aria-controls=\"ftco-nav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("\t        <span class=\"oi oi-menu\"></span> Menu\r\n");
      out.write("\t      </button>\r\n");
      out.write("\r\n");
      out.write("\t      <div class=\"collapse navbar-collapse\" id=\"ftco-nav\">\r\n");
      out.write("\t        <ul class=\"navbar-nav ml-auto\">\r\n");
      out.write("\t\t   \r\n");
      out.write("\t        \t<li class=\"nav-item active\"><a href=\"index.jsp\" class=\"nav-link\">Home</a></li>\r\n");
      out.write("\t        \t<li class=\"nav-item dropdown\">\r\n");
      out.write("        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("          Cities\r\n");
      out.write("        </a>\r\n");
      out.write("        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\r\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\">Delhi</a>\r\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\">Greater Noida</a>\r\n");
      out.write("          <div class=\"dropdown-divider\"></div>\r\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\">More Cities</a>\r\n");
      out.write("        </div>\r\n");
      out.write("      </li>\t\t\t\t\r\n");
      out.write("\t        \r\n");
      out.write("\t  <li class=\"nav-item dropdown\">\r\n");
      out.write("\t\t\t\t\t<a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("\t\t\t\t\t  Profile\r\n");
      out.write("\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t<div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\r\n");
      out.write("\t\t\t\t\t  <a class=\"dropdown-item\" href=\"CViewProfile.jsp\">View Profile</a>\r\n");
      out.write("\t\t\t\t\t  <a class=\"dropdown-item\" href=\"CEditProfile.jsp\">Update Profile</a>\r\n");
      out.write("\t\t\t\t\t  <a class=\"dropdown-item\" href=\"CViewBooking.jsp\">View Bookings</a>\r\n");
      out.write("\t\t\t\t\t \r\n");
      out.write("\t\t\t\t  </li>\r\n");
      out.write("\t\t\t\t<li class=\"nav-item\"><a href=\"contact.jsp\" class=\"nav-link\">Contact</a></li>\r\n");
      out.write("\t\t\t\t<li class=\"nav-item\"><a href=\"index.jsp\" class=\"nav-link\">Logout</a></li>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t        </ul>\r\n");
      out.write("\t      </div>\r\n");
      out.write("\t    </div>\r\n");
      out.write("\t  </nav>\r\n");
      out.write("    <!-- END nav -->\r\n");
      out.write("\t <section class=\"ftco-booking\">\r\n");
      out.write("    \t<div class=\"container\">\r\n");
      out.write("    \t\t\r\n");
      out.write("    \t</div>\r\n");
      out.write("    </section>\r\n");
      out.write("\t\t<section class=\"ftco-section ftco-services\">\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t<div class=\"col-lg-6\">\r\n");
      out.write("\t\t\t\t\t<div class=\"panel panel-default\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"panel-heading text-center\">\r\n");
      out.write("\t\t\t\t\t\t\t<h3>Guest Details</h3>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"panel-body\">\r\n");
      out.write("\t\t\t\t\t\t</br>\r\n");
      out.write("\t\t\t\t\t\t</br>\r\n");
      out.write("\t\t\t\t\t\t\t<form action=\"\" data-toggle=\"validator\" class=\"form-horizontal\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<label for=\"name\" class=\"col-lg-3 control-label\">Name:</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"col-lg-9\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"name\"name=\"name\" class=\"form-control\" id=\"name\" placeholder=\"Enter your name\" required/>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div><!--end form group-->\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<label for=\"phone\" class=\"col-lg-3 control-label\">Phone:</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"col-lg-9\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name='phone' class=\"form-control\" pattern=\"^[_0-9]{1,}$\" maxlength=\"10\" minlength=\"10\" id=\"phone\" placeholder=\"Enter your phone\" required/>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div><!--end form group-->\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<label for=\"email\" class=\"col-lg-3 control-label\">Email:</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"col-lg-9\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"email\" name=\"email\" class=\"form-control\" id=\"email\" placeholder=\"Enter your email\" required/>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div><!--end form group-->\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"panel panel-default\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"panel-heading text-center\">\r\n");
      out.write("\t\t\t\t\t\t\t<h3>Booking Details</h3>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"panel-body\">\r\n");
      out.write("\t\t\t\t\t\t</br>\r\n");
      out.write("\t\t\t\t\t\t</br>\r\n");
      out.write("\t\t\t\t\t\t\t<form action=\"BookRoom.jsp\" data-toggle=\"validator\" class=\"form-horizontal\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<label for=\"dob\" class=\"col-lg-3 control-label\">CheckIn Date:</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"col-lg-9\">\r\n");
      out.write("\t\t    \t\t\t\t\t<input type=\"text\" class=\"form-control checkin_date\" placeholder=\"Check-in date\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div><!--end form group-->\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<label for=\"dob\" class=\"col-lg-3 control-label\">CheckOut Date:</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"col-lg-9\">\r\n");
      out.write("\t\t    \t\t\t\t\t<input type=\"text\" class=\"form-control checkin_date\" placeholder=\"Check-in date\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div><!--end form group-->\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"panel panel-default\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"panel-body\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<label for=\"dob\" class=\"col-lg-10 control-label\">Room Type, Number Of Guest, No.of rooms, No. of Nights / Days </label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"col-lg-2\">\r\n");
      out.write("\t\t    \t\t\t\t\t<input type=\"submit\" style=\"font-size:12px;\"class=\"btn btn-primary\" value='Edit'/>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div><!--end form group-->\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-lg-6\">\r\n");
      out.write("\t\t\t\t\t<div class=\"panel panel-default\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"panel-heading text-center\">\r\n");
      out.write("\t\t\t\t\t\t\t<h3>Payment Details</h3>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"panel-body\">\r\n");
      out.write("\t\t\t\t\t\t</br>\r\n");
      out.write("\t\t\t\t\t\t</br>\r\n");
      out.write("\t\t\t\t\t\t\t<form action=\"\" data-toggle=\"validator\" class=\"form-horizontal\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<label for=\"Bamount\" class=\"col-lg-5 control-label\">Booking Amount:</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"col-lg-5\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"Bamount\"name=\"Bamount\" class=\"form-control\" id=\"Bamount\" placeholder=\"\" required/>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div><!--end form group-->\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<label for=\"discount\" class=\"col-lg-5 control-label\">Discount:</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"col-lg-5\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"discount\"name=\"discount\" class=\"form-control\" id=\"discount\" placeholder=\"\" required/>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div><!--end form group-->\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<label for=\"pamount\" class=\"col-lg-5 control-label\">Payable Amount:</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"col-lg-5\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"pamount\" name=\"pamount\" class=\"form-control\" id=\"pamount\" placeholder=\"\" required/>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div><!--end form group-->\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"col-lg-5\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"col-lg-5\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"submit\" style=\"font-size:12px;\"class=\"btn btn-primary\" value='Pay Now'/>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"submit\" style=\"font-size:12px;\"class=\"btn btn-primary\" value='Pay at Hotel'/>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div><!--end form group-->\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("</section>\r\n");
      out.write("   <footer class=\"ftco-footer ftco-bg-dark ftco-section\">\r\n");
      out.write("      <div class=\"container\">\r\n");
      out.write("        <div class=\"row mb-5 d-flex\">\r\n");
      out.write("          <div class=\"col-md\">\r\n");
      out.write("            <div class=\"ftco-footer-widget mb-4\">\r\n");
      out.write("              <h2 class=\"ftco-heading-2\">About GetRooms</h2>\r\n");
      out.write("              <p>We are India's largest hotel network spread across 230 cities with 8500+ hotels offering standardized and hassle-free stay experiences at an unmatched price.</p>\r\n");
      out.write("              <ul class=\"ftco-footer-social list-unstyled float-md-left float-lft mt-3\">\r\n");
      out.write("                <li class=\"ftco-animate\"><a href=\"#\"><span class=\"icon-twitter\"></span></a></li>\r\n");
      out.write("                <li class=\"ftco-animate\"><a href=\"#\"><span class=\"icon-facebook\"></span></a></li>\r\n");
      out.write("                <li class=\"ftco-animate\"><a href=\"#\"><span class=\"icon-instagram\"></span></a></li>\r\n");
      out.write("              </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"col-md\">\r\n");
      out.write("            <div class=\"ftco-footer-widget mb-4\">\r\n");
      out.write("            \t<h2 class=\"ftco-heading-2\">Have a Questions?</h2>\r\n");
      out.write("            \t<div class=\"block-23 mb-3\">\r\n");
      out.write("\t              <ul>\r\n");
      out.write("\t                <li><span class=\"icon icon-map-marker\"></span><span class=\"text\">503 Om Tower Commercial Belt Greater Noida</span></li>\r\n");
      out.write("\t                <li><a href=\"#\"><span class=\"icon icon-phone\"></span><span class=\"text\">9811272051</span></a></li>\r\n");
      out.write("\t                <li><a href=\"#\"><span class=\"icon icon-envelope\"></span><span class=\"text\">info@incapp.in</span></a></li>\r\n");
      out.write("\t              </ul>\r\n");
      out.write("\t            </div>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("          <div class=\"col-md-12 text-center\">\r\n");
      out.write("\r\n");
      out.write("            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\r\n");
      out.write("  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | GetRooms</a>\r\n");
      out.write("  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("</footer>\r\n");
      out.write("  <!-- loader -->\r\n");
      out.write("  <div id=\"ftco-loader\" class=\"show fullscreen\"><svg class=\"circular\" width=\"48px\" height=\"48px\"><circle class=\"path-bg\" cx=\"24\" cy=\"24\" r=\"22\" fill=\"none\" stroke-width=\"4\" stroke=\"#eeeeee\"/><circle class=\"path\" cx=\"24\" cy=\"24\" r=\"22\" fill=\"none\" stroke-width=\"4\" stroke-miterlimit=\"10\" stroke=\"#F96D00\"/></svg></div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  <script src=\"js/jquery.min.js\"></script>\r\n");
      out.write("  <script src=\"js/jquery-migrate-3.0.1.min.js\"></script>\r\n");
      out.write("  <script src=\"js/popper.min.js\"></script>\r\n");
      out.write("  <script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("  <script src=\"js/jquery.easing.1.3.js\"></script>\r\n");
      out.write("  <script src=\"js/jquery.waypoints.min.js\"></script>\r\n");
      out.write("  <script src=\"js/jquery.stellar.min.js\"></script>\r\n");
      out.write("  <script src=\"js/owl.carousel.min.js\"></script>\r\n");
      out.write("  <script src=\"js/jquery.magnific-popup.min.js\"></script>\r\n");
      out.write("  <script src=\"js/aos.js\"></script>\r\n");
      out.write("  <script src=\"js/script.js\"></script>\r\n");
      out.write("  <script src=\"js/jquery.animateNumber.min.js\"></script>\r\n");
      out.write("  <script src=\"js/bootstrap-datepicker.js\"></script>\r\n");
      out.write("  <script src=\"js/jquery.timepicker.min.js\"></script>\r\n");
      out.write("  <script src=\"js/scrollax.min.js\"></script>\r\n");
      out.write("  <script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false\"></script>\r\n");
      out.write("  <script src=\"js/google-map.js\"></script>\r\n");
      out.write("  <script src=\"js/main.js\"></script>\r\n");
      out.write("<script type=\"text/javaScript\" src='js/state.js' ></script>\r\n");
      out.write("    \r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
}}else{
        session.setAttribute("msg","No Room Found");
        response.sendRedirect("User.jsp");
    }


    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
