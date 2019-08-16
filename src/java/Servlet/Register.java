package Servlet;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
@MultipartConfig
public class Register extends HttpServlet {
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
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String gender = request.getParameter("gender");
            String state = request.getParameter("state");
            String city = request.getParameter("city");
            String area = request.getParameter("area");
            String pass = request.getParameter("password");
            Part p = request.getPart("photo");
            InputStream is=null;
            if(p != null){
                is = p.getInputStream();
            }
            HashMap userDetail = new HashMap();
            userDetail.put("name", name);
            userDetail.put("email", email);
            userDetail.put("phone", phone);
            userDetail.put("pass", pass);
            userDetail.put("photo", is);
            String m = db.register(userDetail);
            if(m.equals("Done")){
                int id = db.getId(email);
                if(id != 0){
                    userDetail.put("uid",String.valueOf(id));
                    session.setAttribute("UserDetails", userDetail);
                    response.sendRedirect("User.jsp");
                }else{
                     session.setAttribute("msg", "Registration Failed! Please try Again.");
                    response.sendRedirect("SignInSignup.jsp");
                }
            }else if(m.equals("Already")){
                session.setAttribute("msg", "Email already exist!");
                response.sendRedirect("SignInSignup.jsp");
            }else{
                session.setAttribute("msg", "Registration Failed! Please try Again.");
                response.sendRedirect("SignInSignup.jsp");
            }
        } catch (Exception ex) {
                session.setAttribute("msg",  session.getAttribute("msg")+"Exception "+ex);
                response.sendRedirect("SignInSignup.jsp");
            }
    }
}
