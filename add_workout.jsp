<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Workout</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<div class="container">

<h2>Add Workout</h2>

<form action="workout" method="post">

<input type="text" name="exercise" placeholder="Exercise Name" required>

<input type="number" name="duration" placeholder="Duration in Minutes" required>

<input type="number" name="calories" placeholder="Calories Burned" required>

<input type="date" name="date" required>

<input type="submit" value="Save Workout">

</form>

</div>

</body>
</html>
