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
	<input type="text" name="search"> <label>Search by</label>
             <select id = "myList">
               <option name="original_title" value = "1">Title</option>
               <option value = "2">Genre</option>
               <option value = "3">Run Time</option>
             </select>
	    <button type="submit" >Search</button>
	    </form>
			</div>
			<p>
				<c:forEach var="movie" items="movie">
					${movie.original_title}
				</c:forEach>
			</p>
</body>
</html>