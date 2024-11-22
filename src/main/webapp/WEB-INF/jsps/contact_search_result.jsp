<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="menu.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Leads</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h2>Search Result...</h2>
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th>Id</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Lead Source</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
            <c:if test="${empty contacts}">
                    <tr>
                        <td colspan="7">No contacts available.</td>
                    </tr>
                </c:if>
                <c:forEach items="${contacts}" var="contact">
                    <tr>
                        <td><a href="contactInfo?id=${contact.id}">${contact.id}</a></td>
                        <td>${contact.firstName}</td>
                        <td>${contact.lastName}</td>
                        <td>${contact.leadSource}</td>
                        <td>${contact.email}</td>
                        <td>${contact.mobile}</td>
                        <td><a href="createBill?id=${contact.id}" class="btn btn-primary">Billing</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <p>${msg}</p>
    </div>
</body>
</html>
