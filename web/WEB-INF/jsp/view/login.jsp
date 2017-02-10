<spring:message code="title.welcome" var="pageTitle" />
<template:main htmlTitle="${pageTitle}" bodyTitle="${pageTitle}">


  <jsp:attribute name="localeContent"><br/>
 
	Language:<br/>
	<a href="?locale=fr_FR">Français</a><br/>
	<a href="?locale=en_US">English</a>
	<br/><br/>
  </jsp:attribute>

  <jsp:attribute name="formContent"><br/>
  
  	<c:if test="${param.containsKey('loginFailed')}">
        <b class="errors"><spring:message code="error.login.failed" /></b><br />
    </c:if>
    
    <form:form method="post" modelAttribute="loginForm" autocomplete="off" >
    <table>   
    <tr>
        <td><form:label path="username"><spring:message code="field.login.username" /></form:label></td>
        <td><form:input path="username" autocomplete="off" /></td>
        <td><form:errors path="username" class="errors" /></td>
    </tr>
    <tr>
        <td><form:label path="password"><spring:message code="field.login.password" /></form:label></td>
        <td><form:password path="password" autocomplete="off" /></td>
        <td><form:errors path="password" class="errors" /></td>
    </tr>
    <tr>
    	<td colspan = "2"><input type="submit" value="<spring:message code="field.login.submit" />" /></td>
    </tr>
    </table>
    </form:form>
	
  </jsp:attribute>
  
  <jsp:attribute name="navigationContent"><br/>
	<a href="register"><spring:message code="register.link" /></a>
  </jsp:attribute>

</template:main>