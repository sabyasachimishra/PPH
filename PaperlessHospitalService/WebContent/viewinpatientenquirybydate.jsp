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
<form action="inpatientenquirybydate.jsp" method="get">

Date: <input type="text"  size="25" name="date" title="Ener The Date" />	 <br/>
 <select name="month">	  
	 <option  value="01"> Jan  </option>
	  <option  value="02"> feb </option>
	   <option  value="03"> mar  </option>
	   <option  value="04"> apr  </option>
	   <option  value="05"> may  </option>
	   <option  value="06"> jun  </option>
       <option value="07"> jul  </option>
       <option  value="08"> aug  </option>
       <option value="09"> sept  </option>			
	   <option value="10"> oct    </option>
	   <option  value="11"> Nov  </option>
	   <option  value="12"> Dec  </option>
        </select>
		<input type="text" name="year" size="2" /><br/>
<input type="submit"  size="5"  name="button" value="submit"/> 

</form>

</body>

</html>