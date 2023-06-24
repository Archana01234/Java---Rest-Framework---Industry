<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<style type="text/css">
tr,td{
padding: 10px;
}

</style>
</head>
<body>
<%
 if(request.getAttribute("msg")!=null){
	 out.println("<b style= color:blue;>"+request.getAttribute("msg")+"</style></b>");
 }
%>
<form name = "insert"  method = "post" action="insert">
<table>

<tr>
<td> First Name</td>
<td><input type = "text" name = "fname"></td>
</tr>
<tr>
<td> Last Name</td>
<td><input type = "text" name = "lname"></td>
</tr>
<tr>
<td> Email</td>
<td><input type = "text" name = "email"></td>
</tr>


<tr>
<td colspan ="2" align ="center">
<input type = "submit" name="action" value ="INSERT" class="btn btn-primary"> 
</td>
</tr>


</table>

</form>

</body>
</html>