<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>

    <jsp:include page="template-imports.jsp" />
    <title>Movie Details</title>
</head>

<body>

<jsp:include page="menu-template.jsp" />

<br><br><br>

<div class="container">
    <div class="row">
        <div class="col-md-4">
            <img src="${movie.trailerPicture}" class="detail-image">
            <br><br>
            <a href="#" class="btn btn-primary btn-sm">Book this movie</a>
        </div>
        <div class="col-md-8">
            <div class="movie-header text-center">
                <p class="movie-title">${movie.title}</p>
                <p>Director: ${movie.director}</p>
            </div>
            <br>
            <div class="movie-synopsis text-center">
                <p>${movie.synopsis}</p>
            </div>
        </div>
    </div>
</div>

<script src="<c:url value="/resources/js/movie.js" />" type="application/javascript">
</script>
</body>
</html>