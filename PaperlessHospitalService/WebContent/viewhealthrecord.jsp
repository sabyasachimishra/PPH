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
<form action="healthrecord.jsp" method="get">
<table id="tbl">
<tr><td>Select Record Type To View</td>
 <td><select name="recordtype">	  
	 <option  value="COMPLAINT">COMPLAINT</option>
	  <option  value="INVESTIGATION">INVESTIGATION</option>
	   <option  value="IMMUNIZATION_DONE">IMMUNIZATION</option>
	    <option  value="OPERATION_DONE">OPERATION</option> 
	   <option  value="PRESCRIPTION">PRESCRIPTION</option>
	   <option  value="ISSUE_DRUG">ISSUED DRUG</option>
 </select></td><tr/>
<tr><td>ID</td> <td><input type="text"  size="17" name="id" value="Ener The Patient Id" onclick="if(this.value=='Ener The Patient Id'){this.value='';}" /></td><tr/>

		
<tr><td><input type="submit"  size="5"  name="button" value="submit"/></td></tr> 
</table>
</form>

</body>

</html>