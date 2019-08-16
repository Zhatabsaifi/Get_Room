package Servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.joda.time.DateTime;
import org.joda.time.Days;
public class CSearchHotelPro extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
            ServletContext application = getServletContext();
        try {
            String city=request.getParameter("city");
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
               if((Days.daysBetween(date1, date2).getDays())>=0){
                DataBase.DbConnection db = (DataBase.DbConnection) application.getAttribute("db");
                    if(db==null){
                    db=new DataBase.DbConnection(); 
                    application.setAttribute("db", db);
                    }
                    java.util.HashSet allHotelDetails=db.searchHotel(city);
                    if(!allHotelDetails.isEmpty()){
                        java.util.HashMap date= new java.util.HashMap<String,String>();
                        date.put("in", d1); date.put("out", d2);
                        session.setAttribute("date",date);
                        session.setAttribute("allHotelDetails",allHotelDetails);
                        session.setAttribute("city", city);
                        response.sendRedirect("CSearchHotel.jsp");
                     }else{
                        session.setAttribute("msg","No data found!");
                        response.sendRedirect("CSearchHotel.jsp");
                    }
                }
                else
                {
                    session.setAttribute("msg","Please Enter valid checkout date");
                    response.sendRedirect("User.jsp");
               }
            }
            else{
                session.setAttribute("msg","Please Enter valid checkin and checkout date");
                response.sendRedirect("User.jsp");
            }
        }catch(Exception ex){
                 session.setAttribute("msg","Exception "+ex);
                response.sendRedirect("User.jsp");
        }
    }
}
