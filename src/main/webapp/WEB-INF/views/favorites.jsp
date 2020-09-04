<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">


</head>
<body background="images/light.jpg">
<div>
<article>
<header><a href="/" class="homepage">@Homepage</a>
</header>
</article>
	<h1></h1>
    <table class="table">
    <tr>
    	<c:forEach var="fav" items="${favorite}">
    	<th><font size="4px"><a href="/show-details?id=${fav.id}">${fav.title}</font></a>&nbsp;&nbsp;
    	<c:out value=" Rating : ${fav.vote_average}"/><br>
    	<img src="https://image.tmdb.org/t/p/original${fav.poster_path}"/><br><br>
    	<a href="/delete-favorites?id=${fav.id}" ><button class="fav_page">Delete</button></a>
    	</c:forEach>
    	</tr>
    	</table>
</div>
</body>
</html>