<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
		if(session.getAttribute("currentSessionUserfname")==null)
		{
			response.sendRedirect("https://localhost:9443/PaperlessHospitalService/invalidLogin.jsp"); //error page
		}%>
<form action="processmanageinpatient.jsp" method="get">
<table>
     <tr><td> PATIENT ID</td><td><input type="text" size="25" name="patid" title="Enter PATIENT_id here"/></td></tr><br/>
     <tr><td>  BED ID</td><td><input type="text" size="25" name="bid" title="Enter BED_id here"/></td></tr><br/>
     <tr><td> DEPARTMENT ID</td><td><input type="text" size="25" name="did" title="Enter DEPARTMENT_id here"/></td></tr><br/>
      <tr><td>DOCTOR ID</td><td><input type="text" size="25" name="docid" title="Enter DOCTOR_id here"/></td></tr><br/>
       <tr><td><input type="submit"  size="5"  name="button" value="submit"/> </td></tr>
</table>
</form>
</body>
</html>