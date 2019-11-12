<!DOCTYPE html>
<%@ page contentType="text/html;charset=utf-8" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Музыка</title>
    <meta http-equiv="Content-Type" content="text/html; charset = utf-8">
    <link rel="stylesheet" type="text/css"
          href="/webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script type="text/javascript" src="js/clock.js" charset="utf-8"></script>
</head>

<body>
<nav class="navbar navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Spring Boot</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="/">Home</a></li>
                <li><a href="/clock">Clock</a></li>
                <li class="active"><a href="/music">Music</a></li>
            </ul>
        </div>
    </div>
</nav>

    <li class="list-group-item list-group-item-dark">Басовое соло</li>
<audio controls>
    <source src="audio/solo.mp3" type="audio/mpeg">
    Тег audio не поддерживается вашим браузером.
    <a href="audio/music.mp3">Скачайте музыку</a>.
</audio>

</body>

</html>
