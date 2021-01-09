<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Colleges</title>
</head>
<body>
<h1 align="center">ALL COLLEGE</h1>
<table class="table" border="2">
<tr>
<th>S.No.</th>
<th>NAME  </th>
<th>EMAIL  </th>
<th>NUMBER  </th>
<th>C.Name  </th>
<th>C.Code </th>
<th>PHOTO  </th>
<th>ADDRESS  </th>
<th>PASSWORD </th>
<th>D.O.R </th>
<th>STATUS </th>
<th>EDIT </th>
<th>DELETE </th>
</tr>
<c:forEach var="l" items="${list}">
<tr>
<td>${l.id}</td>
<td>${l.name}  </td>
<td>${l.email}</td>
<td>${l.number}</td>
<td>${l.collegename}</td>
<td>${l.collegecode}</td>
<td><img  src="${pageContext.request.contextPath }/static/image/${l.photo}" height="35" width="50"></td>
<td>${l.address}</td>
<td>${l.password}</td>
<td>${l.date}</td>
<td>${l.status}</td>
<td><a href="${pageContext.request.contextPath}/CollegeUpdatePage/${l.id }" >Edit</a></td>
<td><a href="${pageContext.request.contextPath}/CollegeDeletePage/${l.id }" >Delete</a></td>
</tr>
</c:forEach>
</table>
</body>
</html>