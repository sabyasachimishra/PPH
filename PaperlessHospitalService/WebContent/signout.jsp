<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>

h4{position  :absolute;top : 200px; left : 550px;font-size : 20px;}
p{position  :absolute;top : 175px; left : 650px;font-size : 20px;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>

<BODY onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">
    <SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>
<%session.removeAttribute("currentSessionUserfname");session.removeAttribute("currentSessionUserlname");%></p>

<h4 align="center">You are Successfully Loged Out</h4>
<p align="center"><a href="LoginPage.jsp">Log In</a></p>
</body>
</html>