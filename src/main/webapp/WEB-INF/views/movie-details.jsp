<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet" />
</head>
<body>
<div>
	<h1>${movie.title}</h1>
		<ul>
			<li><p>Movie Overview<p>${movie.overview}</li><br><br>
			<li>
			<c:forEach var="lang" items="${movie.spoken_languages}">
			<p>Language<p>${lang.name}</p></c:forEach></li>
			<li><p>Release Date</p>${movie.release_date}</li>
			<li><p>Rating</p>${movie.vote_average}</li>
			<li><img src="https://image.tmdb.org/t/p/original${movie.poster_path}"/></li>
			
			
		</ul>
</div>

</body>
</html>