<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Success</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <div class="card text-center">
        <div class="card-header">
            <h2>Welcome!</h2>
        </div>
        <div class="card-body">
            <p class="card-text">You have logged in successfully.</p>

            <%
                String provider = (String) request.getAttribute("provider");
                String userEmail = (String) request.getAttribute("userEmail");
                if ("google".equals(provider)) {
            %>
            <p class="lead">Your Google account email: <strong><%= userEmail %></strong></p>
            <%
            } else if ("github".equals(provider)) {
            %>
            <p class="lead">Your GitHub account email: <strong><%= userEmail %></strong></p>
            <%
            } else {
            %>
            <p class="lead">Account email: <strong><%= userEmail %></strong></p>
            <%
                }
            %>

            <a href="/auth/logout" class="btn btn-danger">Logout</a>
        </div>
    </div>
</div>
</body>
</html>
