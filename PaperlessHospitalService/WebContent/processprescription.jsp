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

    
    String t1=request.getParameter("pid");
	String t2=request.getParameter("recid");
	String t3=request.getParameter("patid");
	String t4=request.getParameter("pname");
	String t5=request.getParameter("age");
	String t6=request.getParameter("docid");
	String t7=request.getParameter("med1");
	String t8=request.getParameter("med2");
	String t9=request.getParameter("med3");
	String t10=request.getParameter("med4");
	String t11=request.getParameter("med5");
	String t12=request.getParameter("med6");
	String t13=request.getParameter("med7");
	String t14=request.getParameter("med8");
	String t15=request.getParameter("med9");
	String t16=request.getParameter("med10");
	String t17=request.getParameter("quan1");
	String t18=request.getParameter("quan2");
	String t19=request.getParameter("quan3");
	String t20=request.getParameter("quan4");
	String t21=request.getParameter("quan5");
	String t22=request.getParameter("quan6");
	String t23=request.getParameter("quan7");
	String t24=request.getParameter("quan8");
	String t25=request.getParameter("quan9");
	String t26=request.getParameter("quan10");
	String t27=request.getParameter("dose1");
	String t28=request.getParameter("dose2");
	String t29=request.getParameter("dose3");
	String t30=request.getParameter("dose4");
	String t31=request.getParameter("dose5");
	String t32=request.getParameter("dose6");
	String t33=request.getParameter("dose7");
	String t34=request.getParameter("dose8");
	String t35=request.getParameter("dose9");
	String t36=request.getParameter("dose10");
	
	
	
   try
   {
        Class.forName("com.ibm.db2.jcc.DB2Driver");
        con = DriverManager.getConnection("jdbc:db2://localhost:9999/PAT_DB", "sairam", "prayas");
  
        String sql;
        sql="insert into prescription values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
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
        ps.setString(15, t15);
        ps.setString(16, t16);
        ps.setString(17, t17);
        ps.setString(18, t18);
        ps.setString(19, t19);
        ps.setString(20, t20);
        ps.setString(21, t21);
        ps.setString(22, t22);
        ps.setString(23, t23);
        ps.setString(24, t24);
        ps.setString(25, t25);
        ps.setString(26, t26);
        ps.setString(27, t27);
        ps.setString(28, t28);
        ps.setString(29, t29);
        ps.setString(30, t30);
        ps.setString(31, t31);
        ps.setString(32, t32);
        ps.setString(33, t33);
        ps.setString(34, t34);
        ps.setString(35, t35);
        ps.setString(36, t36);
	    ps.executeUpdate();
	    out.println("sucessfully updated \n");
        
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