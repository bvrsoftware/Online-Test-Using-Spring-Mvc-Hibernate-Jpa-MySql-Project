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
<h1 align="center">ALL STUDENT RESULT OF COLLEGE CODE - ${code }</h1>
<table class="table" border="2">
<tr>
<th>S.No.</th>
<th>NAME  </th>
<th>EMAIL  </th>
<th>NUMBER  </th>
<th>DOB </th>
<th>PHOTO  </th>
<th>D.O.Exam </th>
<th>Marks %</th>
</tr>
<c:forEach var="l" items="${list}">
<c:if test="${code==l.collagecode  }">
<tr>
<td>${l.id}</td>
<td>${l.name}  </td>
<td>${l.email}</td>
<td>${l.number}</td>
<td>${l.dob}</td>
<td><img  src="${pageContext.request.contextPath }/static/image/${l.photo}" height="35" width="50"></td>
<c:forEach var="m" items="${stdmark }">
<c:if test="${m.stdid==l.id }">
<td>${m.examDate}</td>
<td>${m.markPrecentage } %</td>
</c:if>
</c:forEach>
</tr>
</c:if>
</c:forEach>
</table>
</body>
</html>