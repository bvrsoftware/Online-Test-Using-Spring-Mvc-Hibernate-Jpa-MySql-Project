<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
            <div style="color: green;"><h2>${sms }</h2></div>
            <h3 align="center">ADMIN LOGIN</h3>
            <hr>
            <div class="row">
            <div class="col-lg-4"></div>
            <div class="col-lg-5">
                    <form action="${pageContext.request.contextPath}/admin-login-submit" method="post" class="form-horizontal">
                      <!-- Title -->
                      <div class="form-group">
                        <label class="control-label col-lg-2" for="title">Username</label>
                        <div class="col-sm-7">
                          <input type="text" name="user"  class="form-control" id="title"/>
                        </div>
                      </div>
                      <!-- Content -->
                      <div class="form-group">
                        <label class="control-label col-lg-2" for="content">Password </label>
                        <div class="col-sm-7">
                          <input type="password" name="pass" class="form-control" id="content"/>
                        </div>
                       </div>
                       <div class="col-lg-offset-2 col-lg-9">
                          <button type="submit" class="btn btn-primary">LOGIN</button>
                          <input type="reset" class="btn btn-danger" value="CANCEL"/>
                        </div>
                      </form>
                      <br><br><br><a href="#online-test-forget-pass" style="margin-left: 29%">forget Password</a><br>
                   </div>  
                   <div class="col-lg-3"></div>
                   </div>