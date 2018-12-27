<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Регистрация</title>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"
          integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">SnuShop</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/shop">Магазин</a>
            </li>
        </ul>

    </div>
</nav>
<div class="container" align="center">
    <form method="post">
        <form-row>
            <div class="form-group col-md-6">
                <label for="name">Login</label>
                <input name="name" type="text" class="form-control" id="name" aria-describedby="emailHelp"
                       placeholder="Enter login" style="border:1px solid #17a2b8">
            </div>
            <div class="form-group col-md-6">
                <label for="age">Age</label>
                <input name="age" type="text" class="form-control" id="age" aria-describedby="emailHelp"
                       placeholder="Enter age" style="border:1px solid #17a2b8">
            </div>
            <div class="form-group col-md-6">
                <label for="password">Password</label>
                <input name="password" type="password" class="form-control" id="password" placeholder="Password"
                       style="border:1px solid #17a2b8">
                <br>
                <a href="/signIn" class="btn btn-outline-info">К входу</a>
                <button type="submit" class="btn btn-outline-info">Регистрация</button>
            </div>
        </form-row>
    </form>
</div>
</body>
</html>
