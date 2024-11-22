<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Send Email</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <form action="sendEmail" method="post">
            <div class="form-group">
                <label for="to">To:</label>
                <input type="text" class="form-control" id="to" name="to" value="${email}">
            </div>
            <div class="form-group">
                <label for="subject">Subject:</label>
                <input type="text" class="form-control" id="subject" name="subject">
            </div>
            <div class="form-group">
                <label for="body">Body:</label>
                <textarea class="form-control" id="body" name="body" rows="10"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Send Email</button>
        </form>
        <p>${msg}</p>
    </div>
</body>
</html>
