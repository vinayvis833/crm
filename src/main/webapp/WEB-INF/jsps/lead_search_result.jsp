<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
        <a href="viewCreateLead" class="btn btn-primary mb-3">Create new lead</a>
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
                <c:forEach items="${leads}" var="lead">
                    <tr>
                        <td><a href="leadInfo?id=${lead.id}">${lead.id}</a></td>
                        <td>${lead.firstName}</td>
                        <td>${lead.lastName}</td>
                      	<td>${lead.leadSource}</td>
                        <td>${lead.email}</td>
                        <td>${lead.mobile}</td>                                              
                        <td>
                            <a href="leadInfo?id=${lead.id}" class="btn btn-info btn-sm" onclick="return confirm('Are you sure you want to view this lead?');">View</a>
                            <a href="update?id=${lead.id}" class="btn btn-warning btn-sm" onclick="return confirm('Are you sure you want to update this lead?');">Update</a>
                            <a href="delete?id=${lead.id}" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this lead?');">Delete</a>
                        </td>
                        
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <p>${msg}</p>
    </div>
</body>
</html>
