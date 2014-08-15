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


 
	String t1=request.getParameter("51");
	String t2=request.getParameter("52");
	String t3=request.getParameter("53");
	String t4=request.getParameter("54");
	String t5=request.getParameter("55");
	String t6=request.getParameter("56");
	String t7=request.getParameter("57");
	String t8=request.getParameter("58");
	String t9=request.getParameter("59");
	String t10=request.getParameter("60");
	String t11=request.getParameter("61");
	String t12=request.getParameter("62");
	String t13=request.getParameter("63");
	String t14=request.getParameter("64");
	String t15=request.getParameter("65");
	String t16=request.getParameter("66");
	
	 DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
	   //get current date time with Date()
	   Date date = new Date();
	   
       String dt=dateFormat.format(date);
	
	
   try
   {
        Class.forName("com.ibm.db2.jcc.DB2Driver");
        con = DriverManager.getConnection("jdbc:db2://localhost:50000/PAT_DB", "sairam", "prayas");
      
        String sql;
        sql="insert into SAIRAM.FEEDBACK values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        ps = con.prepareStatement(sql);
        stmt = con.createStatement();
       
       
        ps.setString(1, t1);
        ps.setString(2, t2);
        ps.setString(3, t3);
        ps.setString(4, t4);
		ps.setString(5, t5);
		ps.setString(6, t6);
        ps.setString(7, t7);
        ps.setString(8, t8);
        ps.setString(9, t9);
        ps.setString(10, t10);
        ps.setString(11, t11);
        ps.setString(12, t12);
        ps.setString(13, t13);
        ps.setString(14, t14);
        ps.setString(15, dt);
        ps.setString(16, t15);
        ps.setString(17, t16);
        ps.executeUpdate();
        out.println("Successful");
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