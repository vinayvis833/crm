<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lead | Info</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h2>Lead | Info</h2>
        
        <p><strong>First Name:</strong> ${lead.firstName}</p>
        <p><strong>Last Name:</strong> ${lead.lastName}</p>
        <p><strong>Lead Source:</strong> ${lead.leadSource}</p>
        <p><strong>Email:</strong> ${lead.email}</p>
        <p><strong>Mobile:</strong> ${lead.mobile}</p>

        <form action="composeEmail" method="post">
            <input type="hidden" name="email" value="${lead.email}"/>
            <button type="submit" class="btn btn-primary">Send Email</button><br><br>
        </form>
        <form action="convertLead" method="post">
            <input type="hidden" name="id" value="${lead.id}"/>
            <button type="submit" class="btn btn-success">Convert</button>
        </form>
    </div>
</body>
</html>
