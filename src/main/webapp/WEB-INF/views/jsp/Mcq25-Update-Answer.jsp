<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>

            <h3 align="center">NEW QUESTION </h3>
            <hr>
                    <f:form modelAttribute="ans25" action="${pageContext.request.contextPath }/Mcq25-Update-Answer-Submit" method="post" class="form-horizontal">
                      <!-- Title -->
                      <f:hidden path="id"  class="form-control" id="title"/>
                      <div class="form-group">
                        <label class="control-label col-lg-2" for="title">Your Answer</label>
                        <div class="col-lg-7">
                          <input type="text" name="anwser"  class="form-control" value="${ans25.anwser }" id="title"/>
                        </div>
                      </div>
                     <!-- Buttons -->
                      <div class="form-group">
                        <!-- Buttons -->
                        <div class="col-lg-offset-2 col-lg-9">
                          <button type="submit" class="btn btn-primary">Save</button>
                          <input type="reset" class="btn btn-default"/>
                        </div>
                      </div>
                    </f:form>