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
import org.joda.time.DateTime;
import org.joda.time.Days;
public class BookRoomPro extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
            ServletContext application = getServletContext();
        try {
            DataBase.DbConnection db = (DataBase.DbConnection) application.getAttribute("db");
            if(db==null){
              db=new DataBase.DbConnection(); 
                application.setAttribute("db", db);
            }
            HashMap UserDetails = (HashMap) session.getAttribute("UserDetails");
             int cid=Integer.parseInt((String)UserDetails.get("uid"));
                int hid=(Integer)session.getAttribute("hid");
                int rid=Integer.parseInt(request.getParameter("rid"));
                String d1=request.getParameter("checkindate");
                String d2=request.getParameter("checkoutdate");   
                    java.text.SimpleDateFormat sdf1=new java.text.SimpleDateFormat("MM/dd/yyyy");
                    java.util.Date dt1=sdf1.parse(d1);
                java.sql.Date checkindate=new java.sql.Date(dt1.getTime());
                    java.util.Date dt2=sdf1.parse(d2);
                    java.util.Date dt3=new java.util.Date();
                String strDate= sdf1.format(dt3);  
                java.util.Date curDate=sdf1.parse(strDate);
                java.sql.Date checkoutdate=new java.sql.Date(dt2.getTime());
                DateTime date1 = new DateTime(dt1);
                DateTime date2 = new DateTime(dt2);
                DateTime date3 = new DateTime(curDate);
                if((Days.daysBetween(date3,date1).getDays())>=0 && (Days.daysBetween(date3,date2).getDays())>=0)
                {
                    int nod=Days.daysBetween(date1, date2).getDays();
                    int nor=Integer.parseInt(request.getParameter("nor"));
                    int nog=Integer.parseInt(request.getParameter("nog"));
                    int availableroom = db.availablerooms(rid);
                    if(availableroom < nor){
                        session.setAttribute("msg","Only "+availableroom+"Rooms are available.");
                            response.sendRedirect("BookRooms.jsp");
                    }
                    int totalamount=0;
                  if(nod==0){
                      totalamount = Integer.parseInt(request.getParameter("price"))*nor;
                  }else if(nod>=0){
                      totalamount = Integer.parseInt(request.getParameter("price"))*nor*nod;
                  }else{
                      session.setAttribute("msg","Please enter valid date");
                      response.sendRedirect("BookingProcess.jsp");
                  }
                      HashMap h=new HashMap();
                        h.put("hid", hid);
                         h.put("rid", rid);
                          h.put("cid", cid);
                           h.put("checkindate", d1);
                            h.put("checkoutdate", d2);
                             h.put("nor", nor);
                              h.put("nog", nog);
                              h.put("nod", nod+1);
                                h.put("tc", totalamount);
                                session.setAttribute("bookingdetails",h);
                                response.sendRedirect("BookingProcess.jsp");
              }
        }catch(Exception ex){
             session.setAttribute("msg","Exception :"+ex);
             response.sendRedirect("BookRoom.jsp");
        }
    }
}
