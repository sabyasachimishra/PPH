<%@ page language="java" 
    contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<style>
.name{color : white;}
#main{ background: url("bgg.jpg");width:700px; height : 500px; position : absolute; top:50px; left : 300px; -webkit-border-radius : 75px 0px 75px 0px;}
#logo{ position : absolute; top : 40px; left:20px;width : 150px;height : 100px;}
#tb1{ font-size : 17px;-webkit-border-radius : 10px;position:absolute; top : 250px; left : 210px; background-color : lightgreen;padding : 20px;border : solid 2px;}
#kk{width : 75px;height : 30px; font-size:18px;}
#p9{position : absolute;top:520px;left : 500px;width : 400px;height:200px;}
</style>
<script>
function rg()
{ //document.all.tb1.style.height="200px";
 //document.all.tb1.style.width="200px";
 document.all.tb1.style.fontSize="25px";
 document.all.tb1.style.padding="25px";
 document.all.tb1.style.boxShadow="0px 0px 5px black";
 
 document.all.tb1.style.top="225px";
 document.all.tb1.style.left="195px";
}
</script>
</head>
<body>
<div id="main">
	<h3 class="name" align="center">Welcome to</h3>
	<h1 class="name" align="center">WE CARE</h1>
	<h2 class="name" align="center">Paperless Hospital Service</h2>
	<img src="logo11.png" id="logo"/>
	
		<form action="Servlet/LoginServlet" method="GET">
			
			<table id="tb1" onclick="rg()">
			
			<tr><td>Username</td><td><input type="text" name="un"/></td></tr>
			<tr><td>Password</td><td><input type="password" name="pw"/></td></tr>
			<tr><td></td><td><input id="kk" type="submit" value="Sign In"/></td></tr>
		</table>
		</form>
</div>
<img id="p9" src="logop.png"/>
</body>
</html>