<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Student</title>
</head>
<body>
<h1 align="center">ALL &nbsp;ADMINS</h1>
<table class="table" border="2">
<tr>
<th>S.No.</th>
<th>NAME  </th>
<th>EMAIL  </th>
<th>NUMBER  </th>
<th>PASSWORD </th>
<th>STATUS </th>
<th>EDIT </th>
</tr>
<c:forEach var="l" items="${list}">
<tr>
<td>${l.id}</td>
<td>${l.name}  </td>
<td>${l.email}</td>
<td>${l.number}</td>
<td>${l.password}</td>
<td>${l.status}</td>
<td><a href="AdminUpdate/${l.id }" >Edit</a></td>
</tr>
</c:forEach>
</table>
</body>
</html>