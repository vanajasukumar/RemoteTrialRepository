<%@page language="java" import ="java.sql.*" %>  
 <%  
 String name=request.getParameter("count");  
 String buffer="<div>";  
 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver").newInstance();  
 Connection con = DriverManager.getConnection("jdbc:odbc:vanajadsn", "vanaja", "vanaja");  
 Statement stmt = con.createStatement();  
 ResultSet rs = stmt.executeQuery("select StateName from MyStateList where StateName LIKE '"+name+"%'");  
   while(rs.next()){
   buffer=buffer+rs.getString(1)+"<br>";  
   }  
 buffer=buffer+"</div>";  
 response.getWriter().println(buffer);  
 %>