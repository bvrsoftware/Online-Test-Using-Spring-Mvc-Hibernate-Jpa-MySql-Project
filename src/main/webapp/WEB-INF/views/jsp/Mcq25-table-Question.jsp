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
                  </tr>
                   <c:forEach var="t" items="${mcq25 }" varStatus="inner">
                    <tr>
                    <td>${inner.index+1 }</td>
                    <td>${t.question }</td>
                    <th>${t.corrtAns } </th>
                    <td>
                    <c:forEach var="a" items="${t.anwser25 }" >
                   ${a.id} :- ${a.anwser } <br>
                    </c:forEach>
                    </td>
                    <td>${t.date }</td>
                  </tr>
                  </c:forEach> 
                </tbody>
              </table>
            </section>
          </div>
        </div>
     