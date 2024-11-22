<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Lead</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h2>Update Lead</h2>
        <form action="updateLead" method="post">
            <div class="form-group">
                <label for="id">Id:</label>
                <input type="text" class="form-control" id="id" name="id" value="${leads.id}" readonly>
            </div>
            <div class="form-group">
                <label for="firstName">First Name:</label>
                <input type="text" class="form-control" id="firstName" name="firstName" value="${leads.firstName}">
            </div>
            <div class="form-group">
                <label for="lastName">Last Name:</label>
                <input type="text" class="form-control" id="lastName" name="lastName" value="${leads.lastName}">
            </div>
            <div class="form-group">
                <label for="leadSource">Lead Source</label>
                <select class="form-control" id="leadSource" name="leadSource" value="${leads.leadSource}">
                    <option value="radio">Radio Channel</option>
                    <option value="newspaper">News Paper</option>
                    <option value="tv">TV</option>
                    <option value="online">Online</option>
                </select>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="text" class="form-control" id="email" name="email" value="${leads.email}">
            </div>
            <div class="form-group">
                <label for="mobile">Mobile:</label>
                <input type="text" class="form-control" id="mobile" name="mobile" value="${leads.mobile}">
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
        <p>${msg}</p>
    </div>
</body>
</html>
