  <link href="${pageContext.request.contextPath}/static/bootstrap3/css/elegant-icons-style.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/static/bootstrap3/css/font-awesome.min.css" rel="stylesheet">
  <!-- Custom styles -->
  <link href="${pageContext.request.contextPath}/static/bootstrap3/css/style.css" rel="stylesheet">
      <%
      int id=0;
      if(session.getAttribute("Aid")!=null)
      {
    	  id=Integer.parseInt(session.getAttribute("Aid").toString());  
      }
      else if(session.getAttribute("Cid")!=null)
      {
    	  id=Integer.parseInt(session.getAttribute("Cid").toString());
      }
      else if(session.getAttribute("Sid")!=null)
      {
    	  id=Integer.parseInt(session.getAttribute("Sid").toString());
      }
      if(id!=0)
         {
    	   %>
    	    <header class="header dark-bg">
      

      <!--logo start-->
      <a href="${pageContext.request.contextPath}/" class="logo">Online <span class="lite">Test</span></a>
      <!--logo end-->
    	   
    	<div class="top-nav notification-row">
        <!-- notificatoin dropdown start-->
        <ul class="nav pull-right top-menu">

        
          <%
          String name="";
          String photo;
          if(session.getAttribute("photo")!=null)
          {
        	  name=(String)session.getAttribute("name");
              photo=(String)session.getAttribute("photo");
          }
          else
          {
        	  name=(String)session.getAttribute("name");
        	  photo="avatar1_small.jpg";
          }
          %>
          <!-- user login dropdown start-->
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="${pageContext.request.contextPath }/static/image/<%=photo%>" height="35" width="50">
                            </span>
                            <span class="username"><%=name %></span>
                            <b class="caret"></b>
                        </a>
            <ul class="dropdown-menu extended logout">
            <% 
            if(session.getAttribute("Aid")==null)
            {
            %>
              <li>
                <a href="${pageContext.request.contextPath}/upload-image"><i class="icon_image"></i>Change profile Photo</a>
              </li>
           <% }
            if(session.getAttribute("Sid")==null)
            {
            %>
              <li>
                <a href="${pageContext.request.contextPath}/change-password"><i class="icon_key_alt"></i>Change-password</a>
              </li>
              <% }%>
              <li>
                <a href="${pageContext.request.contextPath}/logout"><i class="icon_key_alt"></i> Log Out</a>
              </li>
            </ul>
          </li>
          <!-- user login dropdown end -->
        </ul>
        <!-- notificatoin dropdown end-->
      </div>
      </header>
    	   <%
    	   
          }
      else
      {
    	  %>
    	   <header class="header dark-bg">

      <!--logo start-->
      <a href="${pageContext.request.contextPath}/" class="logo">Online <span class="lite">Test</span></a>
      <!--logo end-->
  
       <div class="top-nav notification-row">
        <!-- notificatoin dropdown start-->
        <ul class="nav pull-right top-menu">
        <li><a href="${pageContext.request.contextPath}/#about">ABOUT</a></li>
        <li><a href="${pageContext.request.contextPath}/AdminLoginPage">ADMIN LOGIN</a></li>
        <li><a href="${pageContext.request.contextPath}/CollegeLoginPage">COLLEGE LOGIN</a></li>
        <li><a href="${pageContext.request.contextPath}/StudentLoginPage">STUDENT LOGIN</a></li>
         </ul>
         </div>
          </header>
        <%
      }
	  %>
	  
 <!--header end-->
	  