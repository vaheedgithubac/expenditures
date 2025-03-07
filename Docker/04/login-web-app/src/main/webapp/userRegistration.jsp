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
    
    // String db_host        = System.getenv("DB_HOST");         
    // String db_username    = System.getenv("DB_USERNAME");    
    // String db_password    = System.getenv("DB_PASSWORD");     
    // String db_port        = System.getenv("DB_PORT");         
    // String db_name        = System.getenv("DB_NAME");         

    //String connection_url  = "jdbc:mysql://" + System.getenv("DB_HOST") + ":" + System.getenv("DB_PORT") + "/" + System.getenv("DB_NAME") + "?useSSL=false";
    String connection_url  = "jdbc:mysql://" + db_host + ":" + db_port + "/" + db_name + "?useSSL=false";

    // Class.forName(dbDriver);
    // Class.forName("com.mysql.jdbc.Driver");
    // Connection con = DriverManager.getConnection(connection_url, "db_username", "db_password");


    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://mysql:3306/devopsclass?useSSL=false", "login", "login");
 

    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into USER(first_name, last_name, email, username, password, regdate) values ('" + firstName + "','" + lastName + "','" + email + "','" + userName + "','" + password + "', CURDATE())");
    if (i > 0) {
        response.sendRedirect("welcome.jsp");
       
    } else {
        response.sendRedirect("index.jsp");
    }
%>
