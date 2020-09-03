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
	    </select>
	    <button type="submit">Search By Genre</button>
	    </form>
			
			<p>
				<c:forEach var="movie" items="${movie}">
					${movie.title}<br>
					${movie.original_language}<br>
					${movie.release_date}<br>
					${movie.vote_average}<br><br>
					<img src="${movie.poster_path}" name="movieImage"/>
					</c:forEach>
					

			</p>
			</div>
				
</body>
</html>