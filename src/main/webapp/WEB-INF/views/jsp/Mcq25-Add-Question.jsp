<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>

            <h3 align="center">NEW QUESTION </h3>
            <hr>
                    <f:form modelAttribute="mcq25" action="${pageContext.request.contextPath }/Mcq25-Add-Question-Submit" method="post" class="form-horizontal">
                      <!-- Title -->
                      <f:hidden path="id"  class="form-control" id="title"/>
                      <div class="form-group">
                        <label class="control-label col-lg-2" for="title">Your Question</label>
                        <div class="col-lg-7">
                          <textarea name="question"  class="form-control" id="title">${mcq25.question }</textarea>
                        </div>
                      </div>
                      <c:choose>
                      <c:when test="${mcq25.id==0 }">
                      
                      <div class="form-group">
                        <label class="control-label col-lg-2" for="title">Option 1</label>
                        <div class="col-lg-7">
                          <input type="text" name="option1"  class="form-control" id="title">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-lg-2" for="title">Option 2</label>
                        <div class="col-lg-7">
                           <input type="text" name="option2"  class="form-control" id="title">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-lg-2" for="title">Option 3</label>
                        <div class="col-lg-7">
                           <input type="text" name="option3"  class="form-control"  id="title">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-lg-2" for="title">Option 4</label>
                        <div class="col-lg-7">
                          <input type="text" name="option4"  class="form-control"  id="title">
                        </div>
                      </div>
                     </c:when>
                     <c:otherwise>
                      <div class="form-group">
                        <label class="control-label col-lg-2" for="title">Choose Correct Answer Id</label>
                        <div class="col-lg-7">
                     <select name="corrtAns" class="form-control">
                     <option>Select Correct Answer ID </option>
                     <c:forEach var="a" items="${mcq25.anwser25 }">
                     <option>${a.id }</option>
                     </c:forEach>
                     </select>
                     </div>
                     </div>
                     </c:otherwise> 
                      </c:choose>
                      <!-- Buttons -->
                      <div class="form-group">
                        <!-- Buttons -->
                        <div class="col-lg-offset-2 col-lg-9">
                          <button type="submit" class="btn btn-primary">Save</button>
                          <input type="reset" class="btn btn-default"/>
                        </div>
                      </div>
                    </f:form>