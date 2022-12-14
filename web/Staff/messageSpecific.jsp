<%--
  Created by IntelliJ IDEA.
  User: Mohamed
  Date: 1/11/2021
  Time: 8:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>Staff Dashboard</title>

    <link rel="stylesheet" href="../bootstrap.min.css">
    <link rel="stylesheet" href="../style.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">Staff Dashboard</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02"
            aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item">
                <a class="nav-link" href="Dashboard.jsp">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="notifications.jsp">Notifications</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="messages.jsp">Messages</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="officehours.jsp">Meetings</a>
            </li>
        </ul>
        <ul class="nav navbar-nav dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
               aria-expanded="false"><%=session.getAttribute("Username")%></a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="profile.jsp">Edit Profile</a></li>
                <li>
                    <hr class="dropdown-divider">
                </li>
                <li><a class="dropdown-item" href="../LogOut.jsp">Log out</a></li>
            </ul>
        </ul>
    </div>
</nav>
<% int id = (int) session.getAttribute("receiver_id");%>
<div class="container">
    <h1 class="page_title">Message</h1>
    <div class="row">
        <div class="col-md-6 center_div">
            <form action="SendSprcific" method="post">
                <input type="text" class="form-control mb-1" name="title" placeholder="Enter title">
                <textarea class="form-control mb-2" placeholder="Enter Your Message" name="message"></textarea>
                <input type="hidden" name="to" value="id">
                <input type="submit" value="Send" class="btn btn-primary">
            </form>
        </div>
    </div>
</div>
</body>
</html>
