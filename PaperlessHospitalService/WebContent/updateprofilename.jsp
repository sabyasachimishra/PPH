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

 	String t1=request.getParameter("firstname");
	
	String t3=request.getParameter("lastname");
	try
   {
        Class.forName("com.ibm.db2.jcc.DB2Driver");
        con = DriverManager.getConnection("jdbc:db2://localhost:50000/LOGINDB", "sairam", "prayas");
  
        String sql;
       sql="UPDATE SAIRAM.LOGIN SET FNAME='"+t1+"',LNAME='"+t3+"' WHERE USERID='"+session.getAttribute("currentSessionUserId")+"'";
       stmt = con.createStatement();
       PreparedStatement ps = null;
       ps = con.prepareStatement(sql);
       ps.executeUpdate();
       out.println("Name Updated");
    
    } catch (SQLException sqle) {
        out.println(sqle.getMessage());
    } catch (Exception e) {
        out.println(e.getMessage());
    } finally {
        try {
            if ( con != null ) {
                con.close();
            }
        } catch (SQLException sqle) {
            out.println(sqle.getMessage());
        }
    }
%>

</body>
</html>

        