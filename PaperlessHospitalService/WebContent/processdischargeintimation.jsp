<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page language="java" import="java.util.*,java.text.*,java.util.Date,java.sql.*, java.io.*" %>
<%
    Connection con = null;
Statement stmt = null;
ResultSet rs = null;
PreparedStatement ps = null;


    String t1=request.getParameter("patid");
	
	String t2=request.getParameter("insid");
	String t3=request.getParameter("mid");
	String t4=request.getParameter("date");
	String t5=request.getParameter("month");
	String t6=request.getParameter("year");
	String dd=t4+"/"+t5+"/"+t6;
	 DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
	   //get current date time with Date()
	   Date date = new Date();
	   
       String dt=dateFormat.format(date);
	
	
   try
   {
        Class.forName("com.ibm.db2.jcc.DB2Driver");
        con = DriverManager.getConnection("jdbc:db2://localhost:50000/PAT_DB", "sairam", "prayas");
  
        String sql;
        sql="insert into discharge_intimation values(?,?,?,?,?)";
        ps = con.prepareStatement(sql);
        stmt = con.createStatement();
       
        ps.setString(1, t2);
        ps.setString(2, t1);
        ps.setString(3, dd);
        ps.setString(4, t3);
        ps.setString(5, dt);
		
        ps.executeUpdate();
        out.println("Goodbye!");
} 
   
   catch(SQLException se){
	      //Handle errors for JDBC
	      se.printStackTrace();
	   }catch(Exception e){
	      //Handle errors for Class.forName
	      e.printStackTrace();
	   }finally {
	        try {
	            if(rs != null)
	                rs.close();
	            if(stmt != null)
	                stmt.close();
	            if(ps != null)
	                ps.close();
	            if(con != null)
	                con.close();
	        } catch (SQLException e) {}
	   }
	 
	   
%>
</body>
</html>