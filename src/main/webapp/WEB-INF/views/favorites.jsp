<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
    <ul>
    	<c:forEach var="fav" items="${fav}">
    		${fav}
    	</c:forEach>
    	<l1>
    </ul>
</div>
</body>
</html>