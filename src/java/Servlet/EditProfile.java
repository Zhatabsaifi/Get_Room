package Servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class EditProfile extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
       ServletContext application = getServletContext();
        try {
             HashMap h=(HashMap)session.getAttribute("UserDetails");
            DataBase.DbConnection db = (DataBase.DbConnection) application.getAttribute("db");
            if(db==null){
              db=new DataBase.DbConnection(); 
                application.setAttribute("db", db);
            }
            String e = request.getParameter("email");
            String p = request.getParameter("phone");
            String n = request.getParameter("name");
            String id = (String) h.get("uid");
            String ch = db.update(n, e, p, id);
            if(ch.equals("Done")){
                session.setAttribute("msg", "Profile update successful.");
                h.put("email", e); h.put("phone", p); h.put("name", n);  
                session.setAttribute("UserDetails", h);
                response.sendRedirect("CViewProfile.jsp");
            }else{
                session.setAttribute("msg", "Failed profile Update! Please try again");
                response.sendRedirect("CViewProfile.jsp");
            }
        }catch(Exception ex){
            session.setAttribute("msg", "Exception "+ex);
            response.sendRedirect("CEditProfile.jsp");
        }
    }
}
