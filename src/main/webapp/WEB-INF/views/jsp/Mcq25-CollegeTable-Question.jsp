  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
        <div class="row">
          <div class="col-lg-12">
         <h4> Note:- Update correct option id by question option id .</h4><br>
            <section class="panel">
              <header class="panel-heading">
                Subject Question Table (Total 25)
                <span style="margin-left: 67%"><a class="btn btn-primary" href="${pageContext.request.contextPath }/Mcq25-Add-Question"><i class="icon_plus_alt2"></i> New Question</a></span>
                </header>
              <table class="table table-bordered">
                <tbody>
                  <tr>
                    <th>Q.No</th>
                    <th>Question</th>
                    <th>correct option id </th>
                    <th>Options(ID:-Answer/MCQ) </th>
                    <th>Post Date</th>
                    <th>Action</th>
                  </tr>
                   <c:forEach var="t" items="${mcq25 }" varStatus="inner">
                   <c:if test="${code==t.collegeCode }">
                    <tr>
                    <td>${inner.index+1 }</td>
                    <td>${t.question }</td>
                    <th>${t.corrtAns } </th>
                    <td>
                    <c:forEach var="a" items="${t.anwser25 }" >
                   ${a.id} :- ${a.anwser } <a class="tooltips" data-original-title="Edit Option" href="${pageContext.request.contextPath }/Mcq25-Update-Answer?id=${a.id }"><i class="icon_pencil"></i></a><br>
                    </c:forEach>
                    </td>
                    <td>${t.date }</td>
                    <td>
                      <div class="toggle" >
                        <a class="btn btn-success tooltips" data-original-title="Edit Correct Option Id and Question" href="${pageContext.request.contextPath }/Mcq25-Edit-Question?id=${t.id }"><i class="icon_pencil"></i></a>
                        <a class="btn btn-danger tooltips" data-original-title="Delete" href="${pageContext.request.contextPath }/Mcq25-Delete-Question?id=${t.id }"><i class="icon_close_alt2"></i></a>
                      </div>
                    </td>
                  </tr>
                  </c:if>
                  </c:forEach> 
                </tbody>
              </table>
            </section>
          </div>
        </div>
     