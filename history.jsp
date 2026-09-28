<%@ page import="java.sql.*" %>
<%@ page import="com.fit.dao.DBConnection" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Workout History</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<div class="container">

<h2>Workout History</h2>

<table border="1" cellpadding="10">
<tr>
<th>Exercise</th>
<th>Duration</th>
<th>Calories</th>
<th>Date</th>
</tr>

<%
int userId = (Integer)session.getAttribute("userId");

Connection con = DBConnection.getConnection();
PreparedStatement ps = con.prepareStatement(
"select * from workouts where user_id=?"
);

ps.setInt(1, userId);

ResultSet rs = ps.executeQuery();

while(rs.next()) {
%>

<tr>
<td><%= rs.getString("exercise") %></td>
<td><%= rs.getInt("duration") %></td>
<td><%= rs.getInt("calories") %></td>
<td><%= rs.getDate("workout_date") %></td>
</tr>

<%
}
%>

</table>

<br>
<a href="dashboard.jsp">Back</a>

</div>

</body>
</html>
