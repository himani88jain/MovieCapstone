<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet"/>
<h1>Movie Search</h1>
</head>
<body>
<div>
			<form action="/topRated">
			<button type="submit">TopRated</button>
			</form>
		</div><br><br>
   <div class ="container">
			<form action="/searchSubmit">
	<label>search</label>
	<input type="text" name="results"> <label>Search by</label>
	    <button type="submit" >Search</button>
	    </form><br><br>
	    
	    <form action="/searchByGenre">
	    <select name="genres" >
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
	    </select>
	    <button type="submit">Search By Genre</button>
	    </form>
			
			<p>
				<c:forEach var="movie" items="${movie}">
					${movie.title}<br>
					${movie.original_language}<br>
					${movie.release_date}<br>
					${movie.vote_average}<br><br>
			<div id="Poster">		<img src="https://image.tmdb.org/t/p/original${movie.poster_path}" />
					</div>
					</c:forEach>
					

			</p>
			</div>
				
</body>
</html>