<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI Calculator</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<div class="container">

<h2>BMI Calculator</h2>

<form method="post">

<input type="text"
       name="weight"
       placeholder="Weight in KG"
       required>

<input type="text"
       name="height"
       placeholder="Height in meters (Example: 1.65)"
       required>

<input type="submit" value="Calculate BMI">

</form>

<%
if(request.getParameter("weight")!=null &&
   request.getParameter("height")!=null){

double weight=
Double.parseDouble(
request.getParameter("weight"));

double height=
Double.parseDouble(
request.getParameter("height"));

double bmi=
weight/(height*height);
%>

<hr>

<h3>Your BMI:
<%= String.format("%.2f",bmi) %>
</h3>

<%
if(bmi<18.5){
%>

<p>Underweight</p>

<%
}else if(bmi<25){
%>

<p>Normal Weight</p>

<%
}else if(bmi<30){
%>

<p>Overweight</p>

<%
}else{
%>

<p>Obese</p>

<%
}
}
%>

<br><br>

<a href="dashboard.jsp">Back to Dashboard</a>

</div>

</body>
</html>
