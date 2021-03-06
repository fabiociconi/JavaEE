<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Banner to include on other pages</title>
</head>
<!-- declare tag libraries prior to using JSTL tags -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<body>
<h3>Welcome ${sessionScope.userName} to the online course web.</h3>
<p>There are <b>${applicationScope.courseCount}</b> courses in our system.</p>
<c:forEach items="${applicationScope.courseCodes}" var="code">
${code}<br/>
</c:forEach>
<p>The last update time:<b><fmt:formatDate type= "both" timeStyle = "long" value="${applicationScope.lastUpdated}" /></b> </p> 
<form action="${pageContext.request.contextPath}/login" method="get">
<input type="submit" value="Sign out"/> Application by <i>Student One</i> and <i>Student Two</i></form>
<hr/>
</body>
</html>