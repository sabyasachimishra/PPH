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
<form action="processmodifyrole.jsp" method="get">
<table>
      <tr><td>  User id</td><td> <input type="type" name="uid" size="50"  title="Enter your last name here"/></td></tr><br/>
      <tr><td> CLIENT ID:	</td><td> 
	    <select name="cid">	  
	 <option  value="patient">Patient</option>
	  <option  value="doctor">Doctor</option>
	  <option  value="admittingclerk">Admitting Clerk</option>
	  <option  value="deptadmin">Department Admin</option>
	  <option  value="receptionist">Receptionist</option>
	  <option  value="billingstaff">Billing Staff</option>
	  <option  value="pathologist">Pathologist</option>
	  <option  value="radiologist">Radiologist</option>
	  <option  value="pharmacy">Pharmacy</option>
	  </select></td></tr><br/>
	 	
	   <tr><td><input type="submit"  size="5"  name="button" value="submit"/> </td></tr><br/>
	   </table>
	   </form>
</body>
</html>