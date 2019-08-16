package Servlet;
import java.io.*;
import java.net.PasswordAuthentication;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.websocket.Session;
public class forgetPassword extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
            ServletContext application = getServletContext();
       try{
           DataBase.DbConnection db = (DataBase.DbConnection) application.getAttribute("db");
            if(db==null){
              db=new DataBase.DbConnection(); 
            application.setAttribute("db", db);
            }  
            String email = request.getParameter("email");
            String pass = db.forgetPass(email);
            if(pass != null){
                final String SEmail="sendmailincapp@gmail.com";
                final String SPass = "Zhatab1757#";
                final String REmail = email;
                final String Sub = "Your Password is here from Get_Room!";
                final String Body = "Your email Id: "+email+" and Password: "+pass+"";
                 Properties props=new Properties();
                 props.put("mail.smtp.host","smtp.gmail.com");
                 props.put("mail.smtp.socketFactory.port","465");
                 props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
                 props.put("mail.smtp.auth","true");
                 props.put("mail.smtp.port","465");
                 javax.mail.Session sess=javax.mail.Session.getInstance(props, new javax.mail.Authenticator(){
                                                                protected javax.mail.PasswordAuthentication getPasswordAuthentication(){
                                                                        return new javax.mail.PasswordAuthentication(SEmail,SPass);
                                                                  }
                                                             }
                 );
                 Message message = new MimeMessage(sess);
                 message.setFrom(new InternetAddress(SEmail));
                  message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(REmail));
                 message.setSubject(Sub);
                 message.setContent(Body,"text/html");
                 Transport.send(message);
                 session.setAttribute("msg", "Mail Send Successfully");
                 response.sendRedirect("SignInSignup.jsp");
            }else{
                session.setAttribute("msg", "Please enter valid email Id");
                response.sendRedirect("ForgetPassword.jsp");
            }
       }catch(Exception ex){
           session.setAttribute("msg", "Exception: "+ex);
           response.sendRedirect("ForgetPassword.jsp");
       }
    }
}
