package Servlet;
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
public class EditBooking extends HttpServlet {
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
            int bid = Integer.parseInt(request.getParameter("bid"));
            ResultSet rs = db.bookingDetail(bid);
            if(rs.next()){
              HashMap h=new HashMap();
                        h.put("hid", (Integer)rs.getInt("hid"));
                         h.put("rid", (Integer)rs.getInt("rid"));
                          h.put("cid", (Integer)rs.getInt("cid"));
                           h.put("checkindate", (java.sql.Date)rs.getDate("checkindate"));
                            h.put("checkoutdate", (java.sql.Date)rs.getDate("checkoutdate"));
                             h.put("nor", (Integer)rs.getInt("noofrooms"));
                              h.put("nog", (Integer)rs.getInt("noofguests"));
                              h.put("nod", 1);
                                h.put("tc", (Integer)rs.getInt("totalcharges"));
                                session.setAttribute("bookingdetails",h);
                                response.sendRedirect("BookingProcess.jsp");
            }
        }catch(Exception ex){
            session.setAttribute("msg","nnnn"+ex+"-->"+request.getParameter("bid"));
            response.sendRedirect("CViewBooking.jsp");
        }
    }
}
