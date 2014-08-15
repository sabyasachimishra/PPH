<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
tr{background-color:lightgreen; text-align:center;}
td{background-color:#cff;}
</style>
<title>JDBC Example for People Table</title>
</head>
<body>
<%@ page language="java" import="java.sql.*, java.io.*" %>
<%
		 Statement statement=null;
		Class.forName("com.ibm.db2.jcc.DB2Driver");
    	Connection con = DriverManager.getConnection("jdbc:db2://localhost:50000/PAT_DB", "sairam", "prayas");
		String t0=request.getParameter("recordtype");
    	String t1=request.getParameter("id");
    	
	if(t0.equals("COMPLAINT"))	
	{
		try
   {
		String  sql="SELECT PATIENT_ID,COMPLAINT FROM SAIRAM.HEALTH_RECORD INNER JOIN SAIRAM."+t0+" ON RECORD_ID=REC_ID where PATIENT_ID='"+t1+"'";
        statement=con.createStatement();
        ResultSet rs = statement.executeQuery(sql);
  
%>
        <table><tr><th>ID</th><th>COMPLAINT</th>
<%
        while ( rs.next() ) {
            out.println("<tr>\n<td>" + rs.getString(1) + "</td>");
            out.println("<td>" + rs.getString(2) + "</td>\n</tr>");
			  
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
<%
}
	else if(t0.equals("INVESTIGATION"))	
	{
		out.println(t0);
		try
   {
		String  sql="SELECT PATIENT_ID,INVESTIGATION,RESULT FROM SAIRAM.HEALTH_RECORD INNER JOIN SAIRAM."+t0+" ON RECORD_ID=REC_ID where PATIENT_ID='"+t1+"'";
		 statement=con.createStatement();
        ResultSet rs = statement.executeQuery(sql);
  
%>
        <table border="1"><tr><th>ID</th><th>INVESTIGATION</th><th>INVESTIGATION Result</th></r>
<%
        while ( rs.next() ) {
            out.println("<tr>\n<td>" + rs.getString(1) + "</td>");
            out.println("<td>" + rs.getString(2) + "</td>");
            out.println("<td>" + rs.getString(3) + "</td>\n</tr>");
			  
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
<%
}
	else if(t0.equals("IMMUNIZATION_DONE"))	
	{
		 response.sendRedirect("http://172.162.152.1:9999/PaperlessHospitalService/viewimmudone.jsp");
		
}
	else if(t0.equals("OPERATION_DONE"))	
	{
		response.sendRedirect("http://172.162.152.1:9999/PaperlessHospitalService/viewoperdone.jsp");
}
	else if(t0.equals("PRESCRIPTION"))	
	{
		try
   {
		String  sql="SELECT PATIENT_ID,DRUG_ID,QUANTITY FROM SAIRAM.HEALTH_RECORD INNER JOIN SAIRAM."+t0+" ON RECORD_ID=REC_ID where PATIENT_ID='"+t1+"'";
		 statement=con.createStatement();
        ResultSet rs = statement.executeQuery(sql);
  
%>
        <table><tr><th>ID</th><th>PRESCRIPTION</th>
<%
        while ( rs.next() ) {
            out.println("<tr>\n<td>" + rs.getString(1) + "</td>");
            out.println("<td>" + rs.getString(2) + "</td>\n</tr>");
			  
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
<%
}

else if(t0.equals("ISSUE_DRUG"))	
{
	try
{
	String  sql="SELECT PATIENT_ID,DRUG_ID FROM SAIRAM.HEALTH_RECORD INNER JOIN SAIRAM."+t0+" ON RECORD_ID=REC_ID where PATIENT_ID='"+t1+"'";
	 statement=con.createStatement();
    ResultSet rs = statement.executeQuery(sql);

%>
    <table border="1"><tr><th>ID</th><th>ISSUED_DRUG</th>
<%
    while ( rs.next() ) {
        out.println("<tr>\n<td>" + rs.getString(1) + "</td>");
        out.println("<td>" + rs.getString(2) + "</td>\n</tr>");
		  
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
<%
}
else
	out.println(t0);
out.println("NOT FOUND");

%>
</body>
</html>
