<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to My Website</title>
    <style>
        /* Basic styling for the layout */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        header {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
        }
        footer {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
        .container {
            margin: 20px auto;
            max-width: 800px;
            padding: 0 20px;
        }
        .content {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <header>
        <h1>Welcome to DevOps-Project-1</h1>
    </header>
    <div class="container">
        <div class="content">
            <!-- Add image here -->
            <div class="image">
                <img src="pic.jpg" alt="DevOps-Project-1" style="max-width: 30%;">
            </div>
            <h2>About Me</h2>
            <p>Hi , This is Mohammad Shakhawat Hossain.I have made a simple website using JSP.This website is deployed to Tomcat server using a Jenkins pipeline triggered by webhook from Github repository</p>
            <p>The tools were used for this project are : GitHub, Jenkins, Maven, Docker, Tomcat , CI/CD , AWS: 2X Ec-2 instance.This website is live now</p>
            <p>I will add the project to this URL:https://medium.com/@ramimhossain67 as a showcase with screenshots. Happy Learning!! </p>
        </div>
    </div>
    <footer>
        <p>&copy; 2024 Your Website</p>
    </footer>
</body>
</html>
