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


 
	String t1=request.getParameter("firstname");
	String t2=request.getParameter("lastname");
	String t3=request.getParameter("address");
	String t4=request.getParameter("city");
	String t5=request.getParameter("state");
	String t6=request.getParameter("country");
	String t7=request.getParameter("telecode");
	String t8=request.getParameter("teleno");
	String t9=request.getParameter("faxno");
	String t10=request.getParameter("mob");
	String t11=request.getParameter("email");
	String t12=request.getParameter("specialist");
	String t13=request.getParameter("doctor");
	String t14=request.getParameter("day");
	String t15=request.getParameter("month");
	String t16=request.getParameter("year");
	String t17=t14+'/'+t15+'/'+t16;
	String t18='('+t7+')'+t8;
	out.println(t14);
	 DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
	   //get current date time with Date()
	   Date date = new Date();
	   
       String dt=dateFormat.format(date);
	
	
   try
   {
        Class.forName("com.ibm.db2.jcc.DB2Driver");
        con = DriverManager.getConnection("jdbc:db2://localhost:50000/PAT_DB", "sairam", "prayas");
      
        String sql;
        sql="insert into SAIRAM.APPOINTMENT values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        ps = con.prepareStatement(sql);
        stmt = con.createStatement();
       
       
        ps.setString(1, t1);
        ps.setString(2, t2);
        ps.setString(3, t3);
        ps.setString(4, t4);
		ps.setString(5, t5);
		ps.setString(6, t6);
        ps.setString(7, t18);
        ps.setString(8, t9);
        ps.setString(9, t10);
        ps.setString(10, t11);
        ps.setString(11, t12);
        ps.setString(12, t13);
        ps.setString(13, t17);
        ps.setString(14, dt);
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