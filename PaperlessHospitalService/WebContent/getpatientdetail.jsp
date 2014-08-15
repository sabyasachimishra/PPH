<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
tr{background-color:lightgreen; text-align:center;}
td{background-color:#cff;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page language="java" import="java.util.*,java.text.*,java.util.Date,java.sql.*, java.io.*" %>
<%
    Connection con = null;
Statement stmt = null;

 	String t1=request.getParameter("firstname");
	String t2=request.getParameter("middlename");
	String t3=request.getParameter("lastname");
	String t4=request.getParameter("date");
	String t5=request.getParameter("month");
	String t6=request.getParameter("year");
	String dob=t4+"/"+t5+"/"+t6;

	try
   {
        Class.forName("com.ibm.db2.jcc.DB2Driver");
        con = DriverManager.getConnection("jdbc:db2://localhost:50000/PAT_DB", "sairam", "prayas");
  
        String sql;
        sql="SELECT PATIENT_ID FROM SAIRAM.REGISTRATION INNER JOIN SAIRAM.PATIENT ON REGISTRATION_ID=REG_ID where FIRST_NAME='"+t1+"' and MIDDLE_NAME='"+t2+"' and LAST_NAME='"+t3+"' and DOB='"+dob+"'";
        PreparedStatement ps=null;
        //ps.setString(1,t3);
        stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        %>
        <table id="tb1"><tr><th>PATIENT ID</th>
<%
        while ( rs.next() ) {
            out.println("<tr>\n<td>" + rs.getString(1) + "</td></tr>");
         
        }
        rs.close();
    } catch (IOException ioe) {
        out.println(ioe.getMessage());
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
</tr>
</table>
</body>
</html>

        