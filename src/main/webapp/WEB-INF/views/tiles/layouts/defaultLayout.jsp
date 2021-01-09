<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <!-- Bootstrap CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap3/css/bootstrap.min.css">
	 <!-- bootstrap theme -->
  <link href="${pageContext.request.contextPath}/static/bootstrap3/css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="${pageContext.request.contextPath}/static/bootstrap3/css/elegant-icons-style.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/static/bootstrap3/css/font-awesome.min.css" rel="stylesheet">
  <!-- Custom styles -->
  <link href="${pageContext.request.contextPath}/static/bootstrap3/css/style.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/static/bootstrap3/css/style-responsive.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath}/static/bootstrap3/css/link.css" rel="stylesheet">
  <!-- container section end -->
  <script type="text/javascript" class="init">
	
$(document).ready(function() {
	$('#example').DataTable();
} );

if($sms!=null)
	{
	 alert("${sms }")
	}
	</script>

 </head>
<body>
 <section id="container" class="">

	<tiles:insertAttribute name="header"/>
	
   <!--main content start-->
           <section class="wrapper">
				<tiles:insertAttribute name="body"/>
			</section>
	<tiles:insertAttribute name="footer"/>
	</section>	
	 <!-- javascripts -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/bootstrap3/js/dataTables.bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/bootstrap3/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/bootstrap3/js/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/bootstrap3/js/site.js"></script>
  <script src="${pageContext.request.contextPath}/static/bootstrap3/js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="${pageContext.request.contextPath}/static/bootstrap3/js/jquery.scrollTo.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/bootstrap3/js/jquery.nicescroll.js" type="text/javascript"></script>
  <!-- gritter -->

  <!-- custom gritter script for this page only-->
  <script src="${pageContext.request.contextPath}/static/bootstrap3/js/gritter.js" type="text/javascript"></script>
  <!--custome script for all page-->
  <script src="${pageContext.request.contextPath}/static/bootstrap3/js/scripts.js"></script>




  <script>if( window.self == window.top ) { (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){ (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o), m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m) })(window,document,'script','//www.google-analytics.com/analytics.js','ga'); ga('create', 'UA-55234356-4', 'auto'); ga('send', 'pageview'); } </script>

  <script>
$(document).ready(function() {
	$('#example').DataTable();
} );

if($sms!=null)
	{
	 alert("${sms }")
	}
	</script>
	
</body>
</html>