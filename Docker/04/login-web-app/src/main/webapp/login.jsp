<%@ page import="java.sql.*"%>
<%
    String userName = request.getParameter("userName");    
    String password = request.getParameter("password");
    
    // Class.forName("com.mysql.jdbc.Driver");
    // Connection con = DriverManager.getConnection("jdbc:mysql://3.108.236.194:3306/devopsclass?useSSL=false", "ranjit", "Sunday@2019");
    

    //String dbDriver      = System.getenv("dbDriver"); 
    //String connectionUrl = System.getenv("dbConnectionUrl"); 

    String db_host        = System.getenv("DB_HOST");           
    String db_username    = System.getenv("DB_USERNAME");      
    String db_password    = System.getenv("DB_PASSWORD");       
    String db_port        = System.getenv("DB_PORT");            
    String db_name        = System.getenv("DB_NAME");          

    //String connection_url  = "jdbc:mysql://" + System.getenv("DB_HOST") + ":" + System.getenv("DB_PORT") + "/" + System.getenv("DB_NAME") + "?useSSL=false";
    String connection_url  = "jdbc:mysql://" + db_host + ":" + db_port + "/" + db_name + "?useSSL=false";

    //Class.forName(dbDriver);
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection(connection_url, "db_username", "db_password");

    
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from USER where username='" + userName + "' and password='" +password + "'");
    if (rs.next()) {
        session.setAttribute("userid", userName);
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>
