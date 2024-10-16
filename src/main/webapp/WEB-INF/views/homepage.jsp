<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - OAuth App</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background-color: #f4f4f4; /* Light Gray Background */
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .header {
            text-align: center;
            margin-bottom: 30px;
        }

        .header h1 {
            font-size: 3rem;
            color: #343a40;
            margin-bottom: 10px;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
        }

        .header p {
            font-size: 1.2rem;
            color: #6c757d;
        }

        .card {
            width: 350px;
            margin-bottom: 20px;
            border: none;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            border-radius: 15px;
            background-color: #ffffff;
            transition: transform 0.3s, box-shadow 0.3s;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 40px rgba(0, 0, 0, 0.2);
        }

        .card-title {
            font-weight: bold;
            font-size: 1.5rem;
            color: #343a40;
        }

        .btn-custom {
            width: 250px;
            margin: 10px 0;
            font-size: 1.2rem;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 30px;
            transition: background-color 0.3s, transform 0.3s, box-shadow 0.3s;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .btn-danger {
            background-color: #db4437;
            border-color: #db4437;
        }

        .btn-danger:hover {
            background-color: #c13530;
            transform: translateY(-5px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .btn-dark {
            background-color: #333;
            border-color: #333;
        }

        .btn-dark:hover {
            background-color: #222;
            transform: translateY(-5px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .footer {
            margin-top: 30px;
            text-align: center;
            color: #6c757d;
            font-size: 0.9rem;
        }

        @media (max-width: 576px) {
            .btn-custom {
                width: 100%;
            }

            .header h1 {
                font-size: 2.5rem;
            }

            .card {
                width: 90%;
            }
        }
    </style>
</head>

<body>
<div class="header">
    <h1>Welcome to OAuth App</h1>
    <p>Please sign in with your preferred account to continue</p>
</div>

<div class="d-flex flex-column align-items-center">
    <div class="card text-center">
        <div class="card-body">
            <h5 class="card-title">Sign in with your favorite provider</h5>
            <p class="card-text">Easily sign in using your Google or GitHub accounts.</p>
            <div class="d-flex flex-column justify-content-center align-items-center">
                <a href="<%= request.getContextPath() %>/oauth2/authorization/google" class="btn btn-danger btn-custom">
                    <i class="fab fa-google"></i> Sign in with Google
                </a>
                <a href="<%= request.getContextPath() %>/oauth2/authorization/github" class="btn btn-dark btn-custom">
                    <i class="fab fa-github"></i> Sign in with GitHub
                </a>
            </div>
        </div>
    </div>
</div>

<div class="footer">
    <p>&copy; 2024 OAuth Application. All Rights Reserved.</p>
</div>
</body>

</html>
