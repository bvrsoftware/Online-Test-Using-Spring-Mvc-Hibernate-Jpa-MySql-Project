<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<br>
            <h1>${sms }</h1><br><br>
           <div class="col-lg-6">
           <h2>1. MCQ TEST </h2><br>
           <p>
           In this test total number Question is 25, and each question is 2 marks.<br> there every question have four option which one is correct.<br>
           1. No negative marking is there.<br>
           2. You skip the question by using click nest button.<br>
           3. You can check your our test took answer by previous button.<br>
           4. final you take last Question means Question number is 25 than show submit button<br> on there click  to submit.<br>
           5. All the best.<br>
           <br><a href="${pageContext.request.contextPath }/mcq25-test-Question" class="btn btn-primary">Start </a>
           </p>
           </div>