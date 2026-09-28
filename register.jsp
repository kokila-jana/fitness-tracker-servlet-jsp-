<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<div class="container">
<h2>User Registration</h2>

<form action="register" method="post">

<input type="text" name="name" placeholder="Name" required>

<input type="email" name="email" placeholder="Email" required>

<input type="password" name="password" placeholder="Password" required>

<input type="number" name="age" placeholder="Age" required>

<input type="text" name="weight" placeholder="Weight" required>

<input type="submit" value="Register">

</form>

<a href="login.jsp">Already have account? Login</a>

</div>

</body>
</html>