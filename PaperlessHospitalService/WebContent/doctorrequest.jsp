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
String t1=request.getParameter("d1");
    Connection con = null;
Statement stmt = null;
try
   {
        Class.forName("com.ibm.db2.jcc.DB2Driver");
        con = DriverManager.getConnection("jdbc:db2://localhost:50000/PAT_DB", "sairam", "prayas");
  
        String sql;
        sql="select * from SAIRAM.REQUEST_FROM_DOCTOR  where sl_no=(select count(*) from SAIRAM.REQUEST_FROM_DOCTOR)";
        PreparedStatement ps=null;
        //ps.setString(1,t3);
        stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        %>
        <table border="1"><tr><th>Request ID</th><th>Investigation ID</th><th>Patient ID</th><th>Medicine Name</th><th>Medicine Quantity</th><th>Date_Time</th><th>Doctor Id</th><th>Serial No</th></tr>
<%
        while ( rs.next() ) {
            out.println("<tr>\n<td>" + rs.getString(1) + "</td>\n<td>"
        			+ rs.getString(2) + "</td>\n<td>"
            		+ rs.getString(3) + "</td>\n<td>" 
        			+ rs.getString(4) + "</td>\n<td>"
            		+ rs.getString(5) + "</td>\n<td>" 
        			+ rs.getString(6) + "</td>\n<td>"
        			+ rs.getString(7) + "</td>\n<td>"
            		+ rs.getString(8) + "</td></tr>");
         
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

        