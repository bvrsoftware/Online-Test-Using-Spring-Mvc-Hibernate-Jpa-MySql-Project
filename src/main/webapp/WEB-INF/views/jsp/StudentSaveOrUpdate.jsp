<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
            
            <h3 align="center">STUDENT REGISTRATION</h3>
            <hr>
            <div class="col-lg-3"></div>
            <div class="col-lg-6">
                    <f:form modelAttribute="data" action="${pageContext.request.contextPath}/student-submit" method="post" class="form-horizontal">
                    <f:hidden path="id" />
                    <f:hidden path="date" />
                    <f:hidden path="status" />
                    <f:hidden path="photo" />
                      <!-- Title -->
                      <div class="form-group">
                        <label class="control-label col-lg-3" for="title">Name</label>
                        <div class="col-lg-7">
                          <f:input path="name"  class="form-control" id="title"/>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-lg-3" for="title">Email</label>
                        <div class="col-lg-7">
                          <f:input path="email"  class="form-control" id="title"/>
                        </div>
                      </div>
                      <!-- Content -->
                      <div class="form-group">
                        <label class="control-label col-lg-3" for="content">D.O.B</label>
                        <div class="col-lg-7">
                          <f:input type="date" path="dob" class="form-control" id="content"/>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-lg-3" for="content">Mobile</label>
                        <div class="col-lg-7">
                          <f:input path="number" class="form-control" id="content"/>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-lg-3" for="content">College Name </label>
                        <div class="col-lg-7">
                          <f:select path="collagename" class="form-control" id="content">
                         <c:forEach var="l" items="${list}">
                          <f:option value="${l.collegename }">${l.collegename }</f:option>
                          </c:forEach>
                          </f:select>
                        </div>
                        </div>
                      <div class="form-group">
                        <label class="control-label col-lg-3" for="content">College Code</label>
                        <div class="col-lg-7">
                          <f:select path="collagecode" class="form-control" id="content">
                          <c:forEach var="l" items="${list}">
                          <f:option value="${l.collegecode }">${l.collegecode }</f:option>
                          </c:forEach>
                          </f:select>
                        </div>
                      </div>
                      <!-- Buttons -->
                      <div class="form-group">
                        <!-- Buttons -->
                        <div class="col-lg-offset-3 col-lg-9">
                          <button type="submit" class="btn btn-primary">Save</button>
                          <input type="reset" class="btn btn-default"/>
                        </div>
                      </div>
                    </f:form>
                    </div>
                    <div class="col-lg-3"></div>