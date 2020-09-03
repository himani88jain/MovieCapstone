<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet" />

</head>
<body>
<div>
    <ol>
    	<c:forEach var="fav" items="${favorite}">
    	<li>	<c:out value="${fav.title}"/></li>
    	<c:out value="${fav.vote_average}"/>

    	<img src="https://image.tmdb.org/t/p/original${fav.poster_path}"/><br><br>
    	<a href="/delete-favorites?id=${fav.id}"><button>Delete Favorites</button></a>
    	</c:forEach>
    </ol>
</div>
</body>
</html>