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

   String t1=request.getParameter("insid");
	

	try
   {
        Class.forName("com.ibm.db2.jcc.DB2Driver");
        con = DriverManager.getConnection("jdbc:db2://localhost:50000/PAT_DB", "sairam", "prayas");
  
        String sql;
        sql="SELECT * FROM SAIRAM.DISCHARGE_INTIMATION where INTIMATION_ID='"+t1+"'";
        //ps.setString(1,t3);
        stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        %>
        <table><tr><th>INTIMATION_ID</th><th>RECORD_ID</th><th>DISCHARGE_DATE</th><th>MEDICAL_ID</th><th>DATE_TIME</th></tr>
<%
        while ( rs.next() ) {
            out.println("<tr>\n<td>" + rs.getString(1) + "</td> <td>" + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4) + " </td><td> " + rs.getString(5) + "</td></tr>");
         
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
</table>
</body>
</html>