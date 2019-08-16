package Servlet;
import com.mysql.jdbc.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class CancelBooking extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
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
           String che= db.deleteBooking(bid);
           if(che.equals("Yes")){
               session.setAttribute("msg","Booking cancel successfully.");
               response.sendRedirect("User.jsp");
           }else{
               session.setAttribute("msg","Booking Cancelled Failed ");
               response.sendRedirect("CViewBooking.jsp");
           }
           
        }catch(Exception ex){
              session.setAttribute("msg","Booking cancelled failed! Please try again."+ex);
                response.sendRedirect("CViewBooking.jsp");
        }
    }
}
