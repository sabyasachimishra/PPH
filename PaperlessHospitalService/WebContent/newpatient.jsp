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

//out.println(request.getParameter("reg_id"));
    String t0=request.getParameter("reg_id");
	//String t1=request.getParameter("datetime");
	String t2=request.getParameter("firstname");
	String t3=request.getParameter("middlename");
	String t4=request.getParameter("lastname");
	String t5=request.getParameter("gender");
	String t6=request.getParameter("date");
	String t7=request.getParameter("month");
	String t8=request.getParameter("year");
	int t9=Integer.parseInt(request.getParameter("age"));
	String t10=request.getParameter("occupation");
	String t11=request.getParameter("marital_status");
	String t12=request.getParameter("p.appartmentnumber");
	String t13=request.getParameter("p.streetnumber");
	String t14=request.getParameter("p.streetname");
	String t15=request.getParameter("p.city");
	String t16=request.getParameter("p.state");
	String t17=request.getParameter("p.country");
	String t18=request.getParameter("p.postcode");
	String t19=request.getParameter("p.contactno");
	String t20=request.getParameter("p.emailaddress");
	String t21=request.getParameter("r.appartmentnumber");
	String t22=request.getParameter("r.streetnumber");
	String t23=request.getParameter("r.streetname");
	String t24=request.getParameter("r.city");
	String t25=request.getParameter("r.state");
	String t26=request.getParameter("r.country");
	String t27=request.getParameter("r.postcode");
	String t28=request.getParameter("r.contactno");
	String t29=request.getParameter("r.emailaddress");
	String t30=request.getParameter("o.appartmentnumber");
	String t31=request.getParameter("o.streetnumber");
	String t32=request.getParameter("o.streetname");
	String t33=request.getParameter("o.city");
	String t34=request.getParameter("o.state");
	String t35=request.getParameter("o.country");
	String t36=request.getParameter("o.postcode");
	String t37=request.getParameter("o.contactno");
	String t38=request.getParameter("o.emailaddress");
	String t39=request.getParameter("bloodgroup");
	int t40=Integer.parseInt(request.getParameter("weight"));
	int t41=Integer.parseInt(request.getParameter("height"));
	String t42=request.getParameter("reference");
	String dob=t6+"/"+t7+"/"+t8;
	//out.println(dob);
	//out.println(t0+'\n');
	//out.println(t0+t2+t3+t4+t5+t6+t7+t8+t9+t10+t11+t12+t13+t14+t15+t16+t17+t18+t19+t20+t21+t22+t23+t24+t25+t26+t27+t28+t29+t30+t31+t32+t33+t34+t35+t36+t37+t38+t39+t40+t41+t42);
	 DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
	   //get current date time with Date()
	   Date date = new Date();
	   
       String t1=dateFormat.format(date);
	
	
   try
   {
        Class.forName("com.ibm.db2.jcc.DB2Driver");
        con = DriverManager.getConnection("jdbc:db2://localhost:50000/PAT_DB", "sairam", "prayas");
  
        String sql;
        sql="insert into SAIRAM.REGISTRATION values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        ps = con.prepareStatement(sql);
        stmt = con.createStatement();
       
        ps.setString(1, t0);
        ps.setString(2, t1);
        ps.setString(3, t2);
        ps.setString(4, t3);
        ps.setString(5, t4);
		ps.setString(6, t5);
		ps.setString(7, dob);
        ps.setInt(8, t9);
        ps.setString(9, t10);
        ps.setString(10, t11);
        ps.setString(11, t12);
        ps.setString(12, t13);
        ps.setString(13, t14);
        ps.setString(14, t15);
        ps.setString(15, t16);
        ps.setString(16, t17);
        ps.setString(17, t18);
		ps.setString(18, t19);
        ps.setString(19, t20);
        ps.setString(20, t21);
        ps.setString(21, t22);
        ps.setString(22, t23);
        ps.setString(23, t24);
        ps.setString(24, t25);
        ps.setString(25, t26);
        ps.setString(26, t27);
        ps.setString(27, t28);
        ps.setString(28, t29);
        ps.setString(29, t30);
        ps.setString(30, t31);
        ps.setString(31, t32);
        ps.setString(32, t33);
        ps.setString(33, t34);
        ps.setString(34, t35);
        ps.setString(35, t36);
        ps.setString(36, t37);
        ps.setString(37, t38);
        ps.setString(38, t39);
        ps.setInt(39,40);
        ps.setInt(40, t41);
        ps.setString(41, t42);
        ps.executeUpdate();
        out.println("Form Submitted");
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