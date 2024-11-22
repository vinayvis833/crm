<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Billing | Bill Information</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h2>Bill Information</h2>
        
        <div class="alert alert-success" role="alert">
            Your bill has been generated successfully!
        </div>

        <!-- Displaying Bill Details -->
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th>Detail</th>
                    <th>Information</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>First Name</td>
                    <td>${bill.firstName}</td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td>${bill.lastName}</td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>${bill.email}</td>
                </tr>
                <tr>
                    <td>Mobile</td>
                    <td>${bill.mobile}</td>
                </tr>
                <tr>
                    <td>Product Name</td>
                    <td>${bill.product}</td>
                </tr>
                <tr>
                    <td>Amount</td>
                    <td>${bill.amount}</td>
                </tr>
            </tbody>
        </table>

        <a href="listallContacts" class="btn btn-primary">Back to Contacts</a>
    </div>

</body>
</html>
