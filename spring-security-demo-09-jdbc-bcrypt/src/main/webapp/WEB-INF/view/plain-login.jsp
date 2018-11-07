<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- Adding the JSTL support -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>Custom Login Page</title>

<style type="text/css">
.failed{
	color: red;
}
</style>

</head>
<body>
<h3>Login Form</h3>
<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">

<!-- check for any login error -->
<!-- error parameter is actually passed by the spring security automatically if in case login is failed. -->
<c:if test="${param.error != null }">
	<i class="failed">Sorry! You entered invalid username/password.</i>
</c:if>

<!-- name should be exactlly the same as it is used by the spring security by default -->
<p>Username: <input type="text" name="username" /></p>

<p>Password: <input type="password" name="password" /></p>

<input type="submit"  value="login" />
</form:form>
</body>
</html>