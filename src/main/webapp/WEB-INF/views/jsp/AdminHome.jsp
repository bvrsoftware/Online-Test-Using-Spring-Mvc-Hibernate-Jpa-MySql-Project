<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
           <h1>${sms }</h1><br><br>
           <table class="table" border="2">
           <tr>
           <th><a href="${pageContext.request.contextPath }/AdminInsertPage" class="btn btn-primary">Admin Insert</a></th>
           <th><a href="${pageContext.request.contextPath }/CollegeInsertPage" class="btn btn-primary">College Insert</a></th>
           <th><a href="${pageContext.request.contextPath }/StudentInsertPage" class="btn btn-primary">Student Insert</a></th>
          <th> <a href="${pageContext.request.contextPath }/Admins" class="btn btn-primary">ALL Admin</a></th>
           <th><a href="${pageContext.request.contextPath }/Colleges" class="btn btn-primary">ALL College </a></th>
          <th> <a href="${pageContext.request.contextPath }/Students" class="btn btn-primary">ALL Student </a></th>
           </tr>
           </table>
           <table class="table" border="2">
           <tr>
            <th> <a href="${pageContext.request.contextPath }/Mcq25-table-Question" class="btn btn-primary">ALL Mcq25 Question </a></th>
           </tr>
           </table>