<!DOCTYPE html>

<html>
    <head>
        <title>Log In</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="main.css">
    </head>
    <body>
        <div class="container">
            <form action="/loginHomePage" method="POST" class="form" id="login">
                <h1 class="form__title">Log In</h1>
                <div class="form__input-group">
                    <input type="text" class="form__input" autofocus placeholder="username or email" name="username">
                </div>
                <div class="form__input-group">
                    <input type="password" class="form__input" autofocus placeholder="password" name="password">
                </div>
                <button type="submit" class="form__button">Log In</button>
                <p class="form__text">
                    <a class="form__link"  href="/generate" id="linkCreateAccount">Sign Up</a>
                </p>
            </form>
        </div>
        <script>
            function createAccount(){
                window.location.href("/generate")
            }
        </script>
    </body>
</html>
