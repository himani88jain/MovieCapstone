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
	<a href="/">@HomePage</a>
    <ol>
    	<c:forEach var="fav" items="${favorite}">
    	<li><a href="/show-details?id=${fav.id}">${fav.title}</a></li>
    	<c:out value="${fav.vote_average}"/>
    	<img src="https://image.tmdb.org/t/p/original${fav.poster_path}"/><br><br>

    	<a href="/delete-favorites?id=${fav.id}"><button>Delete Favorites</button></a><br><br><br>

    	<font size="90px"><a href="/delete-favorites?id=${fav.id}"><button>Delete Favorites</button></a></font>

    	</c:forEach>
    </ol>
</div>
</body>
</html>