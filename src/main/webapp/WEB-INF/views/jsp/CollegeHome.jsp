<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
            <h1>${sms }</h1><br><br>
           <table class="table" border="2">
           <tr>
           <th><a href="${pageContext.request.contextPath }/StudentInsertPage" class="btn btn-primary">Student Insert</a></th>
           <th> <a href="${pageContext.request.contextPath }/CollegeStudents" class="btn btn-primary">ALL Student </a></th>
           <th><a href="${pageContext.request.contextPath }/Mcq25-Add-Question" class="btn btn-primary">Insert Mcq25 Question</a></th>
           <th><a href="${pageContext.request.contextPath }/Mcq25-CollegeTable-Question" class="btn btn-primary">ALL Mcq25 Question </a></th>
            <th><a href="${pageContext.request.contextPath }/Mcq25studentResult" class="btn btn-primary">Results </a></th>
           </tr>
           </table>