package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.mysql.jdbc.Statement;
import java.sql.ResultSet;
import java.util.HashMap;

public final class CViewBooking_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\r\n");

    HashMap userdetail = (HashMap)session.getAttribute("UserDetails");
    if(userdetail!= null){

      out.write("\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("  <head>\r\n");
      out.write("    <title>GetRooms</title>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700\" rel=\"stylesheet\">\r\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i\" rel=\"stylesheet\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css\">\r\n");
      out.write("    <link href='https://fonts.googleapis.com/css?family=Open+Sans:600' rel='stylesheet' type='text/css'>\r\n");
      out.write("    <link href=\"css/bootstrap-glyphicons.css\" rel=\"stylesheet\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/open-iconic-bootstrap.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/animate.css\">\r\n");
      out.write("    <link href=\"css/bootstrap.min1.css\" rel=\"stylesheet\" />\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/owl.carousel.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/owl.theme.default.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/magnific-popup.css\">\r\n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/aos.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/ionicons.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap-datepicker.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/jquery.timepicker.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/flaticon.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/icomoon.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.css\">\r\n");
      out.write("\t\r\n");
      out.write("  </head>\r\n");
      out.write("  <body>\r\n");
      out.write("    \r\n");
      out.write("\t  <nav class=\"navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light\" id=\"ftco-navbar\">\r\n");
      out.write("\t    <div class=\"container\">\r\n");
      out.write("\t      <a class=\"navbar-brand\" href=\"User.jsp\">GetRooms</a>\r\n");
      out.write("\t      <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#ftco-nav\" aria-controls=\"ftco-nav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("\t        <span class=\"oi oi-menu\"></span> Menu\r\n");
      out.write("\t      </button>\r\n");
      out.write("\r\n");
      out.write("\t      <div class=\"collapse navbar-collapse\" id=\"ftco-nav\">\r\n");
      out.write("\t        <ul class=\"navbar-nav ml-auto\">\r\n");
      out.write("\r\n");
      out.write("                        <li class=\"nav-item active\"><a href=\"User.jsp\" class=\"nav-link\">Search Hotel</a></li>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                        <li class=\"nav-item dropdown\">\r\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("                                Profile\r\n");
      out.write("                            </a>\r\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\r\n");
      out.write("                                <a class=\"dropdown-item\" href=\"CViewProfile.jsp\">View Profile</a>\r\n");
      out.write("                                <a class=\"dropdown-item\" href=\"CEditProfile.jsp\">Update Profile</a>\r\n");
      out.write("                                <a class=\"dropdown-item\" href=\"CViewBooking.jsp\">View Bookings</a>\r\n");
      out.write("\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"nav-item\"><a href=\"index.jsp\" class=\"nav-link\">Logout</a></li>\r\n");
      out.write("\r\n");
      out.write("                    </ul>\r\n");
      out.write("\t      </div>\r\n");
      out.write("\t    </div>\r\n");
      out.write("\t  </nav>\r\n");
      out.write("    <!-- END nav -->\r\n");
      out.write("    \r\n");
      out.write("\t <section class=\"ftco-booking\">\r\n");
      out.write("    \t<div class=\"container\">\r\n");
      out.write("    \t\t\r\n");
      out.write("    \t</div>\r\n");
      out.write("    </section>\r\n");
      out.write("      ");

                    String m = (String) session.getAttribute("msg");
                    if (m != null) {
                
      out.write("\r\n");
      out.write("                <div class=\"panel\">\r\n");
      out.write("                    <div class=\"panel-body bg-warning text-center\">\r\n");
      out.write("                        ");
      out.print(m);
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <br>\r\n");
      out.write("                <br>\r\n");
      out.write("                ");

                        session.setAttribute("msg", null);
                    }
                
      out.write("\r\n");
      out.write("                \r\n");
      out.write("                \r\n");

    int uid = Integer.parseInt((String)userdetail.get("uid"));
     DataBase.DbConnection db = (DataBase.DbConnection) application.getAttribute("db");
    if(db==null){
      db=new DataBase.DbConnection(); 
        application.setAttribute("db", db);
    }
    ResultSet rs = db.booking(uid); 
    if(rs != null){
        if(rs.next()){

      out.write("\r\n");
      out.write("                <section class=\"ftco-section ftco-services\">\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("\t<div class=\"row\">\r\n");
      out.write("            \t<div class=\"notice-table col-md-12 pull-left\">\r\n");
      out.write("            \t\t<h1 class=\"text-center\">Booking Details</h1><hr/>\r\n");
      out.write("                \t<table id=\"mydata\" class=\" table table-striped table-bordered hover\" cellspacing=\"0\" width=\"100%\">\r\n");
      out.write("                    \t<thead>\r\n");
      out.write("                          <tr>\r\n");
      out.write("                              <th>Booking ID</th>\r\n");
      out.write("\t\t\t\t\t\t\t  <th>Customer ID</th>\r\n");
      out.write("\t\t\t\t\t\t\t  <th>Hotel Details</th>\r\n");
      out.write("\t\t\t\t\t\t\t  <th>Room Type</th>\r\n");
      out.write("                              <th>Check In Date & Time</th>\r\n");
      out.write("                              <th>Check Out Date & Time</th>\r\n");
      out.write("                              <th>BreakFast Included</th>\r\n");
      out.write("                              <th>No.of Guests</th>\r\n");
      out.write("\t\t\t\t\t\t\t <th>No.of Rooms</th>\r\n");
      out.write("\t\t\t\t\t\t\t <th>Total Charges</th>\r\n");
      out.write("                              <th>Status</th>\r\n");
      out.write("\t\t\t\t\t\t\t  <th></th>\r\n");
      out.write("\t\t\t\t\t\t\t  <th></th>\r\n");
      out.write("                          </tr>\r\n");
      out.write("                      \t</thead>\r\n");
      out.write("                      \t\r\n");
      out.write("                      \t<tbody>\r\n");
      out.write("                       \r\n");
      out.write("                            <tr>\r\n");
      out.write("                                     <td>");
      out.print(  (Integer)rs.getInt("bid")    );
      out.write("</td>\r\n");
      out.write("                              <td>");
      out.print(  (Integer)rs.getInt("cid")    );
      out.write("</td>\r\n");
      out.write("                              \r\n");
      out.write("                              ");

                                  ResultSet hoteldetails = db.hotelDetail((Integer)rs.getInt("hid"));
                                  if(hoteldetails.next()){
                              
      out.write("\r\n");
      out.write("                             <td>");
      out.print(    (String)hoteldetails.getString("name"));
      out.write(" <br>Address: </td>\r\n");
      out.write("                             ");
 }   
      out.write("\r\n");
      out.write("                             \r\n");
      out.write("                             ");

                                 ResultSet roomdetails= db.roomDetail((Integer)rs.getInt("rid"));
                                 if(roomdetails.next()){
                             
      out.write("\r\n");
      out.write("                            <td>");
      out.print( (String)roomdetails.getString("type"));
      out.write("</td>\r\n");
      out.write("                            ");
  }   
      out.write("\r\n");
      out.write("                            \r\n");
      out.write("                              \r\n");
      out.write("                              <td>");
      out.print((java.sql.Date)rs.getDate("checkindate"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t<td> ");
      out.print( (java.sql.Date)rs.getDate("checkoutdate"));
      out.write("</td>\r\n");
      out.write("                                ");
  String breakfast = (String)rs.getString("breakfastincluded");   
                                        if(breakfast != null){
                                
      out.write("\r\n");
      out.write("                              <td>Yes</td>\r\n");
      out.write("                              ");

                                    }else{
                              
      out.write("\r\n");
      out.write("                              <td>No</td>\r\n");
      out.write("                              ");

                                }
                              
      out.write("\r\n");
      out.write("                              <td>");
      out.print(  (Integer)rs.getInt("noofguests")    );
      out.write("</td>\r\n");
      out.write("                              <td>");
      out.print(  (Integer)rs.getInt("noofrooms")    );
      out.write("</td>\r\n");
      out.write("                              <td>");
      out.print(  (Integer)rs.getInt("totalcharges")    );
      out.write("</td>\r\n");
      out.write("                              <td>Payment Done / Pending</td>\r\n");
      out.write("\t\t\t\t\t\t \r\n");
      out.write("                              <td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"submit\" class=\"btn btn-primary\" value='Pay Now'/>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<br>\r\n");
      out.write("                                                                        <form action=\"BookingProcess.jsp\"><input type=\"submit\" class=\"btn btn-primary\" value='Edit'/></form>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<br>\r\n");
      out.write("                                                                        <form action=\"CancelBooking\" method=\"post\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"submit\" class=\"btn btn-primary\" value='Cancel booking'/>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                       \r\n");
      out.write("                          \r\n");
      out.write("                      \t</tbody>\r\n");
      out.write("                  \t</table>\r\n");
      out.write("              \t</div>\r\n");
      out.write("            </div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</section>\r\n");
      out.write("\t\t<section>\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("            \r\n");
      out.write("         </div>\r\n");
      out.write("        \r\n");
      out.write("\t\t\r\n");
      out.write("</section>\r\n");
      out.write("    ");

                }else{
                    session.setAttribute("msg","Sorry No booking");
                     response.sendRedirect("User.jsp");
                }
        }else{
            session.setAttribute("msg","No booking");
               response.sendRedirect("User.jsp");
        }
    
      out.write("\r\n");
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
      out.write("<script type=\"text/javaScript\" src='js/state.js' ></script>   \r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");

    }else{
        session.setAttribute("msg", "Please login frist");
        response.sendRedirect("index.jsp");
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
