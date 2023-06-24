<%@page import="com.bean.Student"%>
<%@page import="java.io.ObjectInputStream.GetField"%>
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
Student s=(Student)request.getAttribute("s");
if(request.getAttribute("msg")!=null){
	 out.println("<b style= color:blue;>"+request.getAttribute("msg")+"</style></b>");
 }
%>
<form name = "insert"  method = "post" action="update">
<table>
<tr>
<td><input type = "hidden" name="sid" value = "<%=s.getSid()%>">   

</tr>

<tr>
<td> First Name</td>
<td><input type = "text" name = "fname" value = "<%= s.getFname()%>"></td>
</tr>
<tr>
<td> Last Name</td>
<td><input type = "text" name = "lname" value = "<%= s.getLname()%>"></td>
</tr>
<tr>
<td> Email</td>
<td><input type = "text" name = "email" value = "<%= s.getEmail()%>"></td>
</tr>


<tr>

<tr>
<td colspan ="2" align ="center">
<input type = "submit" name="action" value ="update" class="btn btn-primary"> 
</td>
</tr>


</table>

</form>

</body>
</html>