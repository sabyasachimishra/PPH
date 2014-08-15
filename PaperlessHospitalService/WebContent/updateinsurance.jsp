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
<form action="processupdateinsurance.jsp" method="get">
      <table><tr><td>INSURANCE ID</td><td>
	  <input type="text" size="25" name="insid" title="Enter INSURANCE_id here"/></td><tr/>
      <tr><td>INSURANCE NAME</td><td>
	  <input type="text" size="25" name="insname" title="Enter INSURANCE_NAME here"/></td><tr/>
      <tr><td>INSURANCE DETAILS</td></tr>
	  </table><table><tr><td><textarea rows="5" cols="32" name="insdet" title="Enter INSURANCE_DETAILS here"></textarea></td></tr></table><table>
      
      <tr><td>PATIENT ID</td><td>
	  <input type="text" size="25" name="patid" title="Enter PATIENT_id here"/></td><tr/>
	 <tr><td><input type="submit"  size="5"  name="button" value="submit"/></td></tr></table> 
</form>
</body>
</html>