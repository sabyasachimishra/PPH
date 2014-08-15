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
<form action="processdischargeintimation.jsp" method="get">
<table>
      <tr><td>PATIENT ID</td><td><input type="text" size="25" name="patid" title="Enter PATIENT_id here"/></td></tr><br/>
	 <tr><td> INTIMATION ID</td><td><input type="text" size="25" name="insid" title="Enter INTIMATION_id here"/></td></tr><br/>
	<tr><td>  MED ID</td><td><input type="text" size="25" name="mid" title="Enter MEDICAL here"/></td></tr><br/>
	</table><table>
<tr><td> DISCHARGE DATE</td><td><input type="text" name="date" size="2" /></td><td>
         <select name="month">	  
	 <option  value="Jan"> Jan  </option>
	  <option  value="feb"> feb </option>
	   <option  value="mar"> mar  </option>
	   <option  value="apr"> apr  </option>
	   <option  value="may"> may  </option>
	   <option  value=" jun"> jun  </option>
       <option value=" jul "> jul  </option>
       <option  value="aug"> aug  </option>
       <option value="sept"> sept  </option>			
	   <option value="oct"> oct    </option>
	   <option  value="Nov"> Nov  </option>
	   <option  value="Dec"> Dec  </option>
        </select></td><td>
		<input type="text" name="year" size="5" /></td></tr><br/>
 <tr><td><input type="submit"  size="5"  name="button" value="submit"/></td></tr> 
 </table>
</form>
</body>
</html>