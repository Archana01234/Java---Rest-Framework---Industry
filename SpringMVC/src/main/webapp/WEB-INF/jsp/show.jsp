<%@page import="com.dao.StudentDao"%>
<%@page import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="com.bean.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

</head>
<body>

<%
ApplicationContext a= new ClassPathXmlApplicationContext("beans.xml");
StudentDao studentDao =(StudentDao)a.getBean("studentDao");
List<Student> list= studentDao.getallstudent();
%>
<table border="5" width = "100%" cellpadding= "10px" cellspacig="10px">
<tr>
  <th> ID</th>
  <th>FIRST NAME</th>
  <th>LAST NAME</th>
  <th>EMAIL</th>

<th>EDIT</th>
<th>DELETE</th>
</tr>

<% 
for(Student s:list)

{
    	
    
    	
  %>
  <tr>
   <td><%=s.getSid() %></td>
   <td><%=s.getFname() %></td>
   <td><%=s.getLname() %></td>
   <td><%=s.getEmail() %></td>
   
  
   <td>
   <form name = "edit" method= "post" action="edit">
   <input type = "hidden" name="sid" value="<%= s.getSid()%>">
   <input type ="submit" name="action" value="edit" class="btn btn-primary" >
   
   </form>
   </td>
    <td>
   <form name = "delete" method= "post" action="delete">
   <input type = "hidden" name="sid" value="<%= s.getSid()%>">
   <input type ="submit" name="action" value="delete" class="btn btn-danger">
   
   </form>
   </td>
  </tr>
  <%
    }
  %>	
   


</table>
</body>
</html>