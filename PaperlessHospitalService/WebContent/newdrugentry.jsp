<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
     <style type="text/css">
	 body {
	        
	       
	 }
	 </style>
	 <title></title>
</head>
<body>
<%
		if(session.getAttribute("currentSessionUserfname")==null)
		{
			response.sendRedirect("https://localhost:9443/PaperlessHospitalService/invalidLogin.jsp"); //error page
		}%>
   <u> <h1></h1> </u>
<form action="processnewdrugentry.jsp" method="get">
      
<table>
<tr><td>DRUG ID</td>
<td><input type="text" size="25" name="did" title="Enter your Registration_id here"/></td><tr/>
<tr><td>DRUG name</td>
<td><input type="text"  size="25" name="dname" title="Enter your first name here" /></td><tr/>
<tr><td>COMPANY Name</td>
<td><input type="text"  size="25" name="cname" title="Enter your Middle name here" /></td><tr/>
<tr><td>BATCH name</td>
<td><input type="type" name="bname" size="50"  title="Enter your last name here"/></td><tr/>	     
<tr><td>COMPOSITION</td><td><input type="text" size="25" name="comp" title="Enter your Registration_id here"/></td><tr/>
<table><tr><td>MFD</td><td><input type="text" size="5" name="ad" title="Enter your Registration_id here"/></td>
<td><select name="am">	  
	 <option  value="JAN"> Jan  </option>
	  <option  value="FEB"> feb </option>
	   <option  value="MAR"> mar  </option>
	   <option  value="APR"> apr  </option>
	   <option  value="MAY"> may  </option>
	   <option  value="JUN"> jun  </option>
       <option value="JUL"> jul  </option>
       <option  value="AUG"> aug  </option>
       <option value="SEP"> sep </option>			
	   <option value="OCT"> oct    </option>
	   <option  value="NOV"> Nov  </option>
	   <option  value="DEC"> Dec  </option>
        </select></td>
		<td><input type="text" name="ay" size="2" /></td><tr/></table>
<table><tr><td>EXPIRY DATE</td><td><select name="em">	  
	 <option  value="JAN"> Jan  </option>
	  <option  value="FEB"> feb </option>
	   <option  value="MAR"> mar  </option>
	   <option  value="APR"> apr  </option>
	   <option  value="MAY"> may  </option>
	   <option  value="JUN"> jun  </option>
       <option value="JUL"> jul  </option>
       <option  value="AUG"> aug  </option>
       <option value="SEP"> sep </option>			
	   <option value="OCT"> oct    </option>
	   <option  value="NOV"> Nov  </option>
	   <option  value="DEC"> Dec  </option>
        </select></td>
		<td><input type="text" name="ey" size="2" /></td>	 <tr/></table>
<table><tr><td>PRICE PER UNIT</td><td><input type="text" name="ppu" size="50"  title="Enter your last name here"/></td><tr/>	     
       <tr><td>QUANTITY</td><td><input type="text" name="q" size="50"  title="Enter your last name here"/></td><tr/>
	  <tr><td><input type="submit"  size="5"  name="button" value="submit"/></tr></td>
</table>
</form>
</body>
</html>	
