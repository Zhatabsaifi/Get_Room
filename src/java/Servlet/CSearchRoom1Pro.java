package Servlet;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class CSearchRoom1Pro extends HttpServlet {
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
            String name = request.getParameter("name");
            String city = request.getParameter("city");
            int x = db.getHotelId(name, city);
            if(x > 0){
                java.util.HashSet allRoomDetails = db.searchRoom(x);
                if(!allRoomDetails.isEmpty()){
                    session.setAttribute("allRoomDetails",allRoomDetails);
                   session.setAttribute("hid", x);
                    session.setAttribute("hname", name);
                    response.sendRedirect("CSearchRoom1.jsp");
                }else{
                        session.setAttribute("msg","No data found!");
                        response.sendRedirect("User.jsp");
                }
            }else{
                session.setAttribute("msg","Not Found Please try Again!");
                response.sendRedirect("CSearchHotel.jsp");
            }
        }catch(Exception ex){
            
        }
    }
}
