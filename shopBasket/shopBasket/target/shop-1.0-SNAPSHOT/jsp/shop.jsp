<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        input {
            padding-bottom: 5px;
        }
    </style>
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
    <title>Shop</title>
</head>
<script>
    function sendProductId(productId) {
        $.ajax({
            type: 'post',
            url: '/products',
            data: {
                productId: productId
            }
        }).done(function (data) {
            let contentTableHTML = "<table>";
            contentTableHTML += "<tr>" +
                "<th>Номер</th>" +
                "</tr>";
            for (let i = 0; i < data.length; i++) {
                contentTableHTML += "<tr>";
                contentTableHTML += "<td>" + data[i].title + "</td>";
                contentTableHTML += "<td>" + data[i].price + "</td>";
                contentTableHTML += "</tr>";
            }
            contentTableHTML += "</table>";
            let contentTableDiv = document.getElementById("table");
            contentTableDiv.innerHTML = contentTableHTML;
        }).fail(function () {
            alert("FAIL")
        });
    }
</script>
<body style="background-color:#f8f9fa">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
        <a class="navbar-brand" href="#">Shop</a>
    </div>
    <form class="form-inline" method="get">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
</nav>
<div class="container" style="padding-top: 10px; padding-bottom: 10px   ">
    <div class="row">
        <div class="card-group">
            <div class="col">
                <div class="card border-dark text-center" style="width: 18rem;">
                    <img class="card-img-top" src="../img/1.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Snus 1</h5>
                        <p class="card-text">Price : 300 r</p>
                        <a href="#" class="btn btn-primary" onclick="sendProductId(1)">В корзину</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card border-dark text-center" style="width: 18rem;">
                    <img class="card-img-top" src="../img/2.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Snus 2</h5>
                        <p class="card-text">Price : 200 r</p>
                        <a href="#" class="btn btn-primary" onclick="sendProductId(2)">В корзину</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card border-dark text-center" style="width: 18rem;">
                    <img class="card-img-top" src="../img/3.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Snus 3</h5>
                        <p class="card-text">Price : 250 r</p>
                        <a href="#" class="btn btn-primary" onclick="sendProductId(3)">В корзину</a>
                    </div>
                </div>
            </div>
        </div>
        </form>
    </div>
    <div class="row" style="padding-top: 10px">
        <div class="card-group">
            <div class="col">
                <div class="card border-dark text-center" style="width: 18rem;">
                    <img class="card-img-top" src="../img/4.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Snus 4</h5>
                        <p class="card-text">Price : 400 r</p>
                        <a href="#" class="btn btn-primary" onclick="sendProductId(4)">В корзину</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card border-dark text-center" style="width: 18rem;">
                    <img class="card-img-top" src="../img/5.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Snus 5</h5>
                        <p class="card-text">Price : 500 r</p>
                        <a href="#" class="btn btn-primary" onclick="sendProductId(5)">В корзину</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row" style="padding-top: 10px">
        <div class="col-12 text-center">
            <a role="button" href="/profile" class="btn btn-primary btn-lg">Перейти на страницу заказа</a>
        </div>
    </div>
</div>
<div id="table">
</div>
</body>
</html>
