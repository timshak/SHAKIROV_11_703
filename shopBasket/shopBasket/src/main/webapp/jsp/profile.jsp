<%--
  Created by IntelliJ IDEA.
  User: Iljas
  Date: 27.12.2018
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Оформить заказ</title>
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

    function seeAll() {
        $.ajax({
            type: 'post',
            url: '/products',
            data: {}
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
<body style="color: #f8f9fa">
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
<div class="container">
    <div class="row">
        <div class="col-12 text-center">
            <h1 style="color: black">Ваш выбор</h1>
        </div>
    </div>
    <div class="row" id="table">
    </div>
    <div class="row">
        <div class="col-12 text-center">
            <a href="/exit" class="btn btn-primary btn-lg">Заказать</a>
        </div>
    </div>
</div>
</body>
</html>
