<%@ page import="java.sql.*"%>
<!--<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> -->
<%
    String userName  = request.getParameter("userName");    
    String password  = request.getParameter("password");
    String firstName = request.getParameter("firstName");
    String lastName  = request.getParameter("lastName");
    String email     = request.getParameter("email");

    
    //String dbDriver      = System.getenv("dbDriver"); 
    //String connectionUrl = System.getenv("dbConnectionUrl");
    
    String db_host        = System.getenv("DB_HOST");         
    String db_username    = System.getenv("DB_USERNAME");    
    String db_password    = System.getenv("DB_PASSWORD");     
    String db_port        = System.getenv("DB_PORT");         
    String db_name        = System.getenv("DB_NAME");         

    String connection_url  = "jdbc:mysql://" + System.getenv("DB_HOST") + ":" + System.getenv("DB_PORT") + "/" + System.getenv("DB_NAME") + "?useSSL=false";

    //Class.forName(dbDriver);
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection(connection_url, "db_username", "db_password");




   // Class.forName("com.mysql.jdbc.Driver");
   // Connection con = DriverManager.getConnection("jdbc:mysql://3.108.236.194:3306/devopsclass?useSSL=false", "ranjit", "Sunday@2019");
 



    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into USER(first_name, last_name, email, username, password, regdate) values ('" + firstName + "','" + lastName + "','" + email + "','" + userName + "','" + password + "', CURDATE())");
    if (i > 0) {
        response.sendRedirect("welcome.jsp");
       
    } else {
        response.sendRedirect("index.jsp");
    }
%>
