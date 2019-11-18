<!DOCTYPE html>
<%@ page contentType="text/html;charset=utf-8" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Векторная картинка</title>
    <meta http-equiv="Content-Type" content="text/html; charset = utf-8">
    <link rel="stylesheet" type="text/css"
          href="/webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="css/houseStyle.css" type="text/css">
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
                <li><a href="/music">Music</a></li>
                <li class="active"><a href="/svg">Svg</a></li>
            </ul>
        </div>
    </div>
</nav>

<svg width="680" height="680">

    // Небо
    <defs>
        <pattern id="SkyImagePattern" x="0" y="0" width="1" height="1"
                 viewBox="0 0 1024 576" preserveAspectRatio="xMidYMid slice">
            <image width="1024" height="576"
                   xlink:href="https://claudiawenning.com/wp-content/uploads/2015/03/sky-at-sunrise.jpg"/>
        </pattern>
    </defs>

    <rect id="SkyBox" x="0" y="0" width="680" height="520"/>

    // Землица
    <defs>
        <pattern id="GroundImagePattern" x="0" y="0" width="1" height="1"
                 viewBox="0 0 1024 576" preserveAspectRatio="xMidYMid slice">
            <image width="1024" height="576"
                   xlink:href="https://eurozpravy.cz/pictures/photo/2017/08/03/cracked-ground-1844838-1280-fd66efe9e8_200x113.jpg"/>
        </pattern>
    </defs>

    <rect id="Ground" x="0" y="520" width="680" height="160"/>

    // Горизонт
    <line id="Horizon" x1="0" y1="520" x2="680" y2="520"/>

    // Солнца круг
    <defs>
        <filter id="blurFilter" x="0" y="0">
            <feGaussianBlur in="SourceGraphic" stdDeviation="15" />
        </filter>
    </defs>
    <circle id="Sun" cx="20" cy="400" r="100"/>

    // Облака
    <defs>
        <filter id="shadowCloud" x="0" y="0" width="200%" height="200%">
            <feOffset result="offOut" in="SourceGraphic" dx="20" dy="20" />
            <feGaussianBlur result="blurOut" in="offOut" stdDeviation="10" />
            <feBlend in="SourceGraphic" in2="blurOut" mode="normal" />
        </filter>
    </defs>
    <ellipse id="Cloud" cx="550" cy="400" rx="150" ry="40"/>
    <ellipse id="Cloud" cx="300" cy="430" rx="150" ry="50"/>
    <ellipse id="Cloud" cx="320" cy="350" rx="245" ry="60"/>
    <ellipse id="Cloud" cx="230" cy="290" rx="220" ry="50"/>
    <ellipse id="Cloud" cx="500" cy="220" rx="170" ry="55"/>
    <ellipse id="Cloud" cx="660" cy="270" rx="170" ry="55"/>
    <ellipse id="Cloud" cx="300" cy="150" rx="220" ry="40"/>

    // Древо
    // Ствол
    <polygon id="Trunk" points="590,620 595,590 615,590 620,620"/>
    // Листва
    <ellipse id="Foliage" cx="605" cy="500" rx="50" ry="100"/>
    // Ветки
    <polyline id="Trunk" points="610,500 600,490 580,465"/>
    <polyline id="Trunk" points="610,530 620,485 620,460"/>

    // Стена дома
    <rect id="theWall" x="170" y="500" width="340" height="170"/>

    // Крыша дома
    <polygon id="theRoof" points="340,350 515,495 165,495"/>

    // Дверь
    <rect id="Door" x="200" y="520" width="60" height="130"/>
    <rect id="narrowBorderGlass" x="210" y="530" width="40" height="40"/>

    <line id="narrowLine" x1="210" y1="590" x2="220" y2="600"/>

    // Окно
    <rect id="Glass" x="340" y="530" width="90" height="90"/>

    <line id="Horizon" x1="340" y1="575" x2="430" y2="575"/>
    <line id="Horizon" x1="385" y1="530" x2="385" y2="620"/>

    // Чердак
    <polygon id="Attic" points="323,400 358,400 383,450 303,450"/>

    // Забор
    <line id="Horizon" x1="20" y1="590" x2="165" y2="590"/>
    <line id="Horizon" x1="20" y1="640" x2="165" y2="640"/>
    <line id="Horizon" x1="40" y1="575" x2="40" y2="675"/>
    <line id="Horizon" x1="90" y1="575" x2="90" y2="675"/>
    <line id="Horizon" x1="140" y1="575" x2="140" y2="675"/>

    // Фундамент
    <line id="Horizon" x1="0" y1="675" x2="680" y2="675"/>

    // Дымоход
    <polygon id="Trunk" points="390,395 415,414 415,360 390,360"/>

    // Дым
    <ellipse id="Smoke" cx="410" cy="345" rx="20" ry="10"/>
    <ellipse id="Smoke" cx="420" cy="315" rx="30" ry="13"/>
    <ellipse id="Smoke" cx="435" cy="275" rx="40" ry="20"/>
    <ellipse id="Smoke" cx="460" cy="235" rx="50" ry="25"/>

</svg>
</body>

</html>
