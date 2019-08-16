package Servlet;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Contact extends HttpServlet {
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
            String n=request.getParameter("name");
            String e = request.getParameter("email");
            String sub  = request.getParameter("sub");
            String m  = request.getParameter("msg");
            String fun=db.contact(n, e, sub, m);
            if(fun.equals("Done")) response.sendRedirect("contact.jsp");
            else{
                session.setAttribute("msg", "Failed message send !");
                response.sendRedirect("contact.jsp");
            }
       }catch(Exception ex){
           session.setAttribute("msg", "Exception "+ex);
           response.sendRedirect("contact.jsp");
       }
    }
}
