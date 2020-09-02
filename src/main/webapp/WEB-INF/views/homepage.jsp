<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<h1>Movie Search</h1>
</head>
<body>
   <div class ="container">
			<form action="/searchSubmit">
	<label>search</label>
	<input type="text" name="results"> <label>Search by</label>
	    <button type="submit" >Search</button>
	    </form>
	    
	    <form action="/searchByGenre">
	    <label>Search By Genre</label>
	    <input type="text" name="genre"/>
	    <button type="submit">Search By Genre</button>
	    </form>
			
			<p>
				<c:forEach var="movie" items="${movie}">
					${movie.title}<br>
					${movie.vote_average}<br><br>
				</c:forEach>
			</p>
			</div>
		<div>
			<form action="/topRated">
			<button type="submit">TopRated</button>
			</form>
		</div>		
</body>
</html>