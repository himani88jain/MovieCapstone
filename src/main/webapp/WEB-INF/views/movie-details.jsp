<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet" />

</head>
<body background="images/light.jpg">
<div>
<article>
<header><a href="/" class="homepage">@Homepage</a>
</header>
</article>
	<h1></h1>
	<h2>${movie.title}</h2>
		<ul>
			<li><p><b>Movie Overview</b><p>${movie.overview}</li>
			<li>
				<p><b>Language</b><p>
				<c:forEach var="lang" items="${movie.spoken_languages}">${lang.name}</c:forEach>
			</li>
			<li><p><b>Release Date</b></p>${movie.release_date}</li>
			<li><p><b>Rating</b></p>${movie.vote_average}</li>
			<img src="https://image.tmdb.org/t/p/original${movie.poster_path}" class="details"/>
			
			
		</ul>
</div>

</body>
</html>