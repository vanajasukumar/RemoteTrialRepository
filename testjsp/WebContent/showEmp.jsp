<%@page language="java" import ="java.sql.*" %> 
<%@page language="java" import ="java.util.*" %> 
<%@page language="java" import ="java.text.*" %>  
  
 <% String name=request.getParameter("empid");
  response.getWriter().println(name); 
 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver").newInstance();  
 Connection con = DriverManager.getConnection("jdbc:odbc:vanajadsn", "vanaja", "vanaja");  
 Statement stmt = con.createStatement();%>
 
<% ResultSet rst=stmt.executeQuery("select * from Employee where Empid="+ "'"+ name+ "'");
ResultSetMetaData md=rst.getMetaData();

while(rst.next()){
 	
 	response.getWriter().println(rst.getInt(1) + "," + rst.getString(2) + rst.getString(3) + ","+ rst.getDate(4) + "," + rst.getFloat(5));}
 	 	
%>