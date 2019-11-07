<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Часы</title>
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
                <li class="active"><a href="/">Home</a></li>
                <li><a href="/clock">Clock</a></li>
            </ul>
        </div>
    </div>
</nav>
<div id='clock'></div>
<!--  Создание canvas холста  -->
<canvas height='680' width='680' id='myCanvas'></canvas>
</body>

</html>
