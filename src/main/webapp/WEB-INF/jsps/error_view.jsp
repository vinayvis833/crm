<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Error - CRM Application</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-danger">Something went wrong!</h2>
        <p class="lead">We're sorry, but an error has occurred.</p>
        
        <c:choose>
            <c:when test="${not empty requestScope.errorMessage}">
                <div class="alert alert-danger">
                    <strong>Error:</strong> ${requestScope.errorMessage}
                </div>
            </c:when>
            <c:otherwise>
                <div class="alert alert-warning">
                    <strong>Warning:</strong> An unexpected error occurred. Please try again later.
                </div>
            </c:otherwise>
        </c:choose>

        <a href="home" class="btn btn-primary mt-3">Return to Home</a>
    </div>
</body>
</html>
