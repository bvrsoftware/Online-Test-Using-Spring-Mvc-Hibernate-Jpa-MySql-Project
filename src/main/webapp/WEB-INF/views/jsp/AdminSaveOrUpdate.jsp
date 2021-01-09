<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
            
            <h3 align="center">ADMIN REGISTRATION</h3>
            <hr>
            <div class="col-lg-3"></div>
            <div class="col-lg-6">
                    <f:form modelAttribute="data" action="${pageContext.request.contextPath }/admin-submit" method="post" class="form-horizontal">
                    <f:hidden path="id"  />
                    <f:hidden path="status"  />
                      <!-- Title -->
                      <div class="form-group">
                        <label class="control-label col-lg-3" for="title">Name</label>
                        <div class="col-lg-7">
                          <f:input path="name"  class="form-control" id="title"/>
                        </div>
                      </div>
                      <!-- Content -->
                      <div class="form-group">
                        <label class="control-label col-lg-3" for="content">Number </label>
                        <div class="col-lg-7">
                          <f:input path="number" class="form-control" id="content"/>
                        </div>
                      </div>
                        <div class="form-group">
                        <label class="control-label col-lg-3" for="content">Email </label>
                        <div class="col-lg-7">
                          <f:input path="email" class="form-control" id="content"/>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-lg-3" for="content">Password</label>
                        <div class="col-lg-7">
                          <f:input path="password" class="form-control" id="content"/>
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