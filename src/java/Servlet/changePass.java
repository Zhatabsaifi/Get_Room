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
public class changePass extends HttpServlet {
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
            HashMap userd = (HashMap) session.getAttribute("UserDetails");
            String email = (String) userd.get("email");
            String op=request.getParameter("password");
            String np=request.getParameter("newpassword");
            String cnp=request.getParameter("confirmpassword");
            String pass=db.getPassword(email);
            if(pass.equals(op)){
                if(np.equals(cnp)){
                    String ch = db.setPassword(email, np);
                    if(ch.equals("Done")){
                         session.setAttribute("msg","Successfully update Password.");
                        response.sendRedirect("CViewProfile.jsp");
                    }else{
                        session.setAttribute("msg", "Update Failed.Please try Again!");
                            response.sendRedirect("ChangePassword.jsp");
                    }
                }else{
                    session.setAttribute("msg", "Password mismatch!");
                    response.sendRedirect("ChangePassword.jsp");
                }
            }else{
                session.setAttribute("msg", "Wrong Old Password!");
                    response.sendRedirect("ChangePassword.jsp");
            }
        }catch(Exception ex){
            session.setAttribute("msg", "Exception "+ex);
            response.sendRedirect("ChangePassword.jsp");
        }
    }
}
