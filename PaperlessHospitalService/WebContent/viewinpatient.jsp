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
HEALTH RECORD<br/><hr/>
<form action="processviewinpatient.jsp" method="get">
PATIIENT ID: <input type="text"  size="25" name="id" title="Ener The Patient Id" />	 <br/>
Select Record Type To View:
 <select name="viewtype">	  
	 <option  value="BED_ID">BED ID</option>
	  <option  value="DEPT_ID">DEPARTMENT ID</option>
	   <option  value="DOCTOR_ID">DOCTOR ID</option>
	   
 </select><br/>
<br/>


		
<input type="submit"  size="5"  name="button" value="submit"/> 

</form>

</body>

</html>