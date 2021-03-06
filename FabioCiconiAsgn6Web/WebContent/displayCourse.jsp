<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display course</title>
</head>
<body>
<%@ include file="banner.jsp" %>
<h2>This course is stored on our system</h2>
<table>
<tr>
<td>Course code</td>
<td><b>${requestScope.course.courseCode}</b></td>
</tr><tr>
<td>Course title</td>
<td><b>${requestScope.course.courseTitle}</b></td>
</tr><tr>
<td>Professor</td>
<td><b>
<c:choose> 
<c:when test = "${ requestScope.course.professor == null }" >To be assigned</c:when>
<c:otherwise>${ requestScope.course.professor.getFullName() }</c:otherwise>
</c:choose>
</b></td>
</tr><tr>
</table>
<table><tr>
<td><form action="${pageContext.request.contextPath}/update" method="get">
<input type="submit" name="submit" value="Update"/>
</form></td>
<td><form action="${pageContext.request.contextPath}/delete" method="post">
<input type="submit" name="submit" value="Delete"/>
</form></td>
<td><form action="${pageContext.request.contextPath}/main.jsp">
<input type="submit" name="submit" value="Done"/>
</form></td>
</tr></table>
</body>
</html>