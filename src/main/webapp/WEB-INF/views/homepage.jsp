<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>



<link href="style.css" rel="stylesheet" />

<h1>Movie Search</h1>
</head>
<body class=pageBody>
	<h2>
		<div>
			<form action="/topRated">
				<button type="submit">TopRated</button>
			</form>
				<br><form action="/show-favorites">
					<button type="submit">Favorites</button>
				</form>
			</div>
		
		<div class="container">
			<form action="/searchSubmit">
				<input type="text" name="results" placeholder="Movie Name">
				<button type="submit">Search</button>
		</div>
		</form>
		<div>
			<form action="/searchByGenre">
				<select name="genres">
					<option value="28">Action</option>
					<option value="12">Adventure</option>
					<option value="16">Animation</option>
					<option value="35">Comedy</option>
					<option value="80">Crime</option>
					<option value="99">Documentary</option>
					<option value="18">Drama</option>
					<option value="10751">Family</option>
					<option value="14">Fantasy</option>
					<option value="36">History</option>
					<option value="27">Horror</option>
					<option value="10402">Music</option>
					<option value="9648">Mystery</option>
					<option value="10749">Romance</option>
					<option value="878">Scifi</option>
					<option value="10770">TV Movie</option>
					<option value="53">Thriller</option>
					<option value="10752">War</option>
					<option value="37">Western</option>
				</select>
				<button type="submit">Search By Genre</button>
			</form>
		</div>
	</h2>
	<div name=allMovies>
		<c:forEach var="movie" items="${movie}">
			<div id=movie>
				<div name=info>

				<font size="90px"><a href="/show-details?id=${movie.id}" style="color:#000000">${movie.title}</a></font><br>
					${movie.vote_average}<br>
					
					
					
					
					<a href="/save-favorites?id=${movie.id}" class="custom-checkbox">

  							<i class="glyphicon glyphicon-star-empty"></i>
  							<i class="glyphicon glyphicon-star"></i>
 						 
					</a>
					
					
				</div>
				<div id="Poster">
					<img name=poster
						src="https://image.tmdb.org/t/p/original${movie.poster_path}" />
				</div>
			</div>
		</c:forEach>
		<form></form>
	</div>
</body>
</html>