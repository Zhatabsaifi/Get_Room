<%@page import="java.util.HashMap"%>
<%@page import="java.sql.ResultSet"%>
<%
     
    String email=request.getParameter("email");
   System.out.println(email);
    String password=request.getParameter("password");
  try{
     
     DataBase.DbConnection db=(DataBase.DbConnection)application.getAttribute("db");
    if(db==null){
   
        db=new DataBase.DbConnection(); 
        application.setAttribute("db", db);
    }

    ResultSet rs=db.login(email, password);
      
    if(rs.next()){
        HashMap h=new HashMap();
        h.put("uid",rs.getString(1));
        h.put("name",rs.getString(2));
        h.put("email",rs.getString(3));
        h.put("phone",rs.getString(4));
        
       
        session.setAttribute("UserDetails",h);
        response.sendRedirect("User.jsp");
    }else{
        session.setAttribute("msg","Login Failed!");
        response.sendRedirect("User.jsp");
    }
  }
  catch(Exception ex){
      session.setAttribute("msg","Exception "+ex);
        response.sendRedirect("User.jsp");
  }
    %>
    