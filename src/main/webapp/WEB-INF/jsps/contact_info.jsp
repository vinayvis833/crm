<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact | Info</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h2>Contact | Info</h2>
        <p><strong>First Name:</strong> ${contact.firstName}</p>
        <p><strong>Last Name:</strong> ${contact.lastName}</p>
        <p><strong>Lead Source:</strong> ${contact.leadSource}</p>
        <p><strong>Email:</strong> ${contact.email}</p>
        <p><strong>Mobile:</strong> ${contact.mobile}</p>
        <form action="composeEmail" method="post">
            <input type="hidden" name="email" value="${contact.email}"/>
            <button type="submit" class="btn btn-primary">Send Email</button>
        </form>
    </div>
</body>
</html>
