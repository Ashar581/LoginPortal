<!DOCTYPE html>

<html>
<head>
  <title>Sign Up</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="main.css">
</head>
<body>
<div class="container">
  <form action="/create" method="POST" class="form" id="register">
    <h1 class="form__title">Create Account</h1>
    <div class="form__input-group">
      <input type="text" class="form__input" autofocus placeholder="First Name" name="first_name">
      <input type="text" class="form__input" autofocus placeholder="Last Name" name="last_name">
      <input type="text" class="form__input" autofocus placeholder="Age" name="age">
      <input type="text" class="form__input" autofocus placeholder="Username" name="username">
      <input type="password" class="form__input" autofocus placeholder="Password" name="password">
      <input type="text" class="form__input" autofocus placeholder="Email" name="email">
      <input type="text" class="form__input" autofocus placeholder="Phone" name="phone">
    </div>

    <button type="submit" class="form__button">Continue</button>
    <p class="form__text">
      <a class="form__link" href="/" id="linkLoginAccount">Log In</a>
    </p>
  </form>
</div>
</body>
</html>
