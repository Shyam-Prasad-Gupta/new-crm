<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- Adding the JSTL support -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Spring Security</title>
</head>
<body>
	<!-- display the username and roles -->
	<p>
		User:
		<security:authentication property="principal.username" />
		<br> <br> Role(s):
		<security:authentication property="principal.authorities" />
	</p>
	<br>
	<br>
	<hr>
	<hr>
	<security:authorize access="hasRole('MANAGER')">
		<!-- add a link to point to /leaders ... this is for the managers -->
		<p>
			<a href="${pageContext.request.contextPath}/leaders">Leadership
				Meeting</a>(only for manager peeps)
		</p>
	</security:authorize>

	<hr>
	<security:authorize access="hasRole('ADMIN')">
		<!-- add a link to point to /systems ... this is for Admins -->
		<p>
			<a href="${pageContext.request.contextPath}/systems">Admins
				Meeting</a>(only for admin peeps)
		</p>
	</security:authorize>
	<form:form action="${pageContext.request.contextPath}/logout"
		method="POST">
		<input type="submit" value="Logout" />
	</form:form>
</body>
</html>