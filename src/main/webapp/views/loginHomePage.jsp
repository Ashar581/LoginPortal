<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="login.css">
    <title>Welcome <%= request.getAttribute("name") %></title>
</head>
<body>
<div align="center" class="container">
    <h1 id="head">Welcome <%= request.getAttribute("name") %> !</h1>
    <div class="details" align="left">
        Username: <span class="in"><%= request.getAttribute("username") %></span>
        <br><br>
        Phone: <span class="in"> <%= request.getAttribute("phone")%> </span>
        <br><br>
        Email: <span class="in"> <%= request.getAttribute("email") %> </span>
        <br><br>
        Age: <span class="in"> <%= request.getAttribute("age") %> <div class = "inside"> </span>
        <br><br>
    </div>
    <form method="POST" action="/back">
        <center><button type="submit" class="logout" >Log Out</button></center><br>
        <center><a class="form__link" onclick="openAnother();" >Edit Profile</a></center>
    </form>

</div>

<script>
    function openAnother(){
        window.location.href="/";
    }
</script>
</body>
</html>