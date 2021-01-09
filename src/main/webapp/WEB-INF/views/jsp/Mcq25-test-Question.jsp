<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<style>
<!--
.tab {
  display: none;
}

-->
</style>
<br>
<br>
<div class="col-sm-12">
<br><br>
<form id="regForm"  action="${pageContext.request.contextPath }/Mcq25-test-Question-Submit" method="post">
<c:forEach var="q" items="${mcq25 }" varStatus="outer" begin="0" end="24">
<c:if test="${code==q.collegeCode }">
<div class="tab">
<div class="Question-No">Q ${outer.index+1 }&nbsp;&nbsp; ${q.question }<input type="hidden" name="ques${outer.index+1 }" value="${q.id }"/></div>
<div class="option-answer">
<table>
 <c:forEach var="a" items="${q.anwser25 }" varStatus="inner">
<tr><td align="left">${inner.index+1 })</td><td align="left"><input type="radio" name="ans${ outer.index+1}" value="${a.id }">&nbsp;&nbsp;${a.anwser}</td></tr>
</c:forEach>
</table>
</div>
</div>
</c:if>
</c:forEach>

  </form><br><br><br>
  <div style="overflow:auto; margin-top: 100;">

        <!-- Circles which indicates the steps of the form: -->
        <div class="pagination" >
        <a href="#" class="btn btn-default" id="prevBtn" onclick="nextPrev(-1)">
          <span class="glyphicon glyphicon-chevron-left"></span>Previous
        </a>
        <c:forEach var="q" items="${mcq25 }" varStatus="outer">
      <span class="step"><a href="#" class="btn btn-default">${outer.index+1 }</a></span>
         </c:forEach>
      <a href="#" class="btn btn-default pull-right" id="nextBtn" onclick="nextPrev(1)" style="text-align: right;">
          Next<span class="glyphicon glyphicon-chevron-right"></span> 
        </a>
  </div>
  </div>
</div>
<script>
var currentTab = 0; // Current tab is set to be the first tab (0)
showTab(currentTab); // Display the crurrent tab

function showTab(n) {
  // This function will display the specified tab of the form...
  var x = document.getElementsByClassName("tab");
  x[n].style.display = "block";
  //... and fix the Previous/Next buttons:
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
  } else {
    document.getElementById("prevBtn").style.display = "inline";
  }
  if (n == (x.length - 1)) {
    document.getElementById("nextBtn").innerHTML = "Submit";
  } else {
    document.getElementById("nextBtn").innerHTML = "Next";
  }
  //... and run a function that will display the correct step indicator:
  fixStepIndicator(n)
}

function nextPrev(n) {
  // This function will figure out which tab to display
  var x = document.getElementsByClassName("tab");
  // Exit the function if any field in the current tab is invalid:
  if (n == 1 && !validateForm()) return false;
  // Hide the current tab:
  x[currentTab].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentTab = currentTab + n;
  // if you have reached the end of the form...
  if (currentTab >= x.length) {
    // ... the form gets submitted:
    document.getElementById("regForm").submit();
    return false;
  }
  // Otherwise, display the correct tab:
  showTab(currentTab);
}

function validateForm() {
  // This function deals with validation of the form fields
  var x, y, i, valid = true;
  x = document.getElementsByClassName("tab");
  y = x[currentTab].getElementsByTagName("input");
  // A loop that checks every input field in the current tab:
  for (i = 0; i < y.length; i++) {
    // If a field is empty...
    if (y[i].value == "") {
      // add an "invalid" class to the field:
      y[i].className += " invalid";
      // and set the current valid status to false
      valid = false;
    }
  }
  // If the valid status is true, mark the step as finished and valid:
  if (valid) {
    document.getElementsByClassName("step")[currentTab].className += " finish";
  }
  return valid; // return the valid status
}

function fixStepIndicator(n) {
  // This function removes the "active" class of all steps...
  var i, x = document.getElementsByClassName("step");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" active", "");
  }
  //... and adds the "active" class on the current step:
  x[n].className += " active";
}
</script>