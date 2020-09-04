<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

<link href="style.css" rel="stylesheet" />

</head>

<body class="homepage" background="images/movie.jfif">
<h1></h1>
	<h2>
		<div>
			<form action="/topRated">
				<button type="submit">TopRated</button>
			</form>
			<br>
			<form action="/trending">
				<button type="submit">Trending</button>
			</form>
			<br>
			<form action="/show-favorites">
				<button type="submit">Favorites</button>
			</form>
		</div>

		<div class=container>
			<form action="/searchSubmit">
				<input type="text" name="results" placeholder="Movie Name">
				<button type="submit">Search</button>
		</div>
		</form>
		<div>
			<form action="/searchByGenre">
				<select name="genres">
					<option value="">Genre</option>
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
		<table class="table-sm">
			<c:forEach var="movie" items="${movie}">
				<tr>
					<td>
					<c:choose>
						<c:when test= "${movie.title==null}">
							<b>${movie.original_name}</b><br>
						</c:when>
						<c:otherwise>
						<font size="20px"><a
							href="/show-details?id=${movie.id}" style="color: white">
							<b>${movie.title}</b></a></font>
						</c:otherwise>		
					</c:choose>
						<p style="color: white">Rating: ${movie.vote_average}</p></td>


					<td><a href="/save-favorites?id=${movie.id}"
						class="custom-checkbox"> <i
							class="glyphicon glyphicon-star-empty"></i> <i
							class="glyphicon glyphicon-star"></i>

					</a></td>
					<td>
						
							<img src="https://image.tmdb.org/t/p/original${movie.poster_path}" />

					</td>
			</c:forEach>
		</table>
	</div>
</body>
</html>