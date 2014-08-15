<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PRESCRIPTION</title>
</head>
<body>
<form action="processprescription.jsp" method="get">
PRESCRIPTION ID<input type="text" size="25" name="pid" title="Enter presciption_id here"/><br/>
RECORD ID<input type="text" size="25" name="recid" title="Enter RECORD_id here"/><br/>
PATIENT ID<input type="text" size="25" name="patid" title="Enter PATIENT_id here"/><br/>
PATIENT NAME<input type="text" size="25" name="pname" title="Enter PATIENT NAME here"/><br/>
AGE<input type="text" size="25" name="age" title="Enter age here"/><br/>
DOCTOR ID<input type="text" size="25" name="docid" title="Enter DOCTOR_id here"/><br/>


<div style="position:relative;width:1100px;height=800px;margin-left:auto;margin-right:auto;margin-top:100px;">
	<div id="left" style="float:left;width:300px;height:320px;background-color:lightgreen">
	
	<table border="5">
	<tr><th>DRUG NAME</th></tr>
	<tr>
	<td>
	<ol>
	<li><input  type="textbox" name="med1" /></li>
	<li> <input type="textbox" name="med2" /></li>
	<li> <input type="textbox" name="med3" /></li>
	<li> <input type="textbox" name="med4" /></li>
	<li> <input type="textbox" name="med5" /></li>
	<li> <input type="textbox" name="med6" /></li>
	<li> <input type="textbox" name="med7" /></li>
	<li> <input type="textbox" name="med8" /></li>
	<li> <input type="textbox" name="med9" /></li>
	<li> <input type="textbox" name="med10" /></li>
	</ol>
	</td>
	</tr >
	</table>
	</div>

<div id="middle" style="margin-left:200px; margin-top:10px;width:500px;height:320px;background-color:lightgreen">
<table border="5"  cellspacing="0" cellpadding="0">
<tr><th>QUANTITY</th></tr>
<tr>
<td>
<ol>
<li> <input type="text" name="quan1" size="6" /></li>
<li> <input type="text" name="quan2" size="6" /></li>
<li> <input type="text" name="quan3" size="6" /></li>
<li> <input type="text" name="quan4" size="6" /></li>
<li> <input type="text" name="quan5" size="6" /></li>
<li> <input type="text" name="quan6" size="6" /></li>
<li> <input type="text" name="quan7" size="6" /></li>
<li> <input type="text" name="quan8" size="6" /></li>
<li> <input type="text" name="quan9" size="6" /></li>
<li> <input type="text" name="quan10"size="6" /></li>
</ol>
</td>
</tr>
</table>
</div>
<div id="rightnav" style="position:absolute;left :600px;top:0px; float:right;left-margin:auto;width:140px;height:320px;background-color:lightgreen;">
<table border="5">
<tr><th>DOSES</th></tr>
<tr>
<td>
<ol>
<li> <input type="textbox" name="dose1"size="6" /></li>
<li> <input type="textbox" name="dose2"size="6" /></li>
<li> <input type="textbox" name="dose3"size="6" /></li>
<li> <input type="textbox" name="dose4"size="6" /></li>
<li> <input type="textbox" name="dose5"size="6" /></li>
<li> <input type="textbox" name="dose6"size="6" /></li>
<li> <input type="textbox" name="dose7"size="6" /></li>
<li> <input type="textbox" name="dose8"size="6" /></li>
<li> <input type="textbox" name="dose9"size="6" /></li>
<li> <input type="textbox" name="dose10"size="6" /></li>
</ol>
</td>
</tr>

</table>
</div>
</div>
<input type="submit"  size="5"  name="button" value="UPDATE"/>
</form>
</body>
</html>