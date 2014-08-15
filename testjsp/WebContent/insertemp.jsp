<%@page language="java" import ="java.sql.*" %> 
<%@page language="java" import ="java.util.*" %> 
<%@page language="java" import ="java.text.*" %>  
  
 <% String name=request.getParameter("empname");
  response.getWriter().println(name); 
 String desc=request.getParameter("empdesc");
 response.getWriter().println(desc);
 float salary=Float.valueOf(request.getParameter("empsalary"));
 response.getWriter().println(salary);
  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver").newInstance();  
 Connection con = DriverManager.getConnection("jdbc:odbc:vanajadsn", "vanaja", "vanaja");  
 Statement stmt = con.createStatement();  %>
 


<% int i = stmt.executeUpdate("insert into Employee (Emp_name,DESCRIPTION,Emp_dateofjoin,Emp_sal) values(" +"'" +name+ "'," +"'" +desc + "'," + "Getdate()" +","+ salary +")");
 response.getWriter().println(i + "No of Rows intserted");    
 %>