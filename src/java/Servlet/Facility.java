package Servlet;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Facility extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
          ServletContext application = getServletContext();
        try {
            String fa=request.getParameter("facility");
            DataBase.DbConnection db = (DataBase.DbConnection) application.getAttribute("db");
            if(db==null){
              db=new DataBase.DbConnection(); 
            application.setAttribute("db", db);
            }
            String city = (String) session.getAttribute("city");
            java.util.HashSet allHotelDetails= db.facility(fa,city);
            if(!allHotelDetails.isEmpty()){
                java.util.HashMap date= new java.util.HashMap<String,String>();
                session.setAttribute("allHotelDetails",allHotelDetails);
                response.sendRedirect("CSearchHotel.jsp");
             }else{
                session.setAttribute("msg","No data found!");
                response.sendRedirect("CSearchHotel.jsp");
            }
        }catch(Exception ex){
            session.setAttribute("msg","Exception "+ex);
                response.sendRedirect("CSearchHotel.jsp");
        }
    }
}
