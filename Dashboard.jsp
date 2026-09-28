<%@ page session="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<div class="container">

<h1>Welcome <%= session.getAttribute("userName") %></h1>

<a href="addWorkout.jsp">Add Workout</a>
<br><br>
<a href="history.jsp">Workout History</a>
<br><br>
<a href="bmi.jsp">BMI Calculator</a>
<br><br>
<a href="logout">Logout</a>

</div>

</body>
</html>
