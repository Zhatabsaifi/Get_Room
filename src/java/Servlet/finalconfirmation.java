package Servlet;
import com.mysql.jdbc.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.HashMap;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class finalconfirmation extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
          HttpSession session = request.getSession();
            ServletContext application = getServletContext();
       try{
            HashMap BookingDetails=(HashMap)session.getAttribute("bookingdetails");
            if(BookingDetails != null){
                int nor = (int) BookingDetails.get("nor");
                int rid = (int) BookingDetails.get("rid");
                DataBase.DbConnection db = (DataBase.DbConnection) application.getAttribute("db");
                if(db==null){
                  db=new DataBase.DbConnection(); 
                application.setAttribute("db", db);
                }
                HashMap rd=(HashMap) session.getAttribute("bookingdetails");
                String d1= (String) rd.get("checkindate"),d2 = (String) rd.get("checkoutdate");
                    java.text.SimpleDateFormat sdf1=new java.text.SimpleDateFormat("MM/dd/yyyy");
                    java.util.Date dt1=sdf1.parse(d1);
                java.sql.Date in=new java.sql.Date(dt1.getTime());
                    java.util.Date dt2=sdf1.parse(d2);
                java.sql.Date out=new java.sql.Date(dt2.getTime());
                db.addBooking((int)rd.get("hid"), (int)rd.get("rid"),(int)rd.get("cid"),in,out,(int)rd.get("nor"),(int) rd.get("nog"),(int) rd.get("tc"));
                int availableroom = db.availablerooms(rid);
                String check = db.updateRoomNo(availableroom-nor, rid);
                if(check.equalsIgnoreCase("Done")){
                     session.setAttribute("msg", "Room Booked Successfully");
                        response.sendRedirect("User.jsp");
                }else{
                     session.setAttribute("msg", "Room Booking failed! Please book again");
                    response.sendRedirect("CSearchHotel.jsp");
                }
            }
       }catch(Exception ex){
           session.setAttribute("msg", "Exception: "+ex);
           response.sendRedirect("BookingProcess.jsp");
       }
    }
}
