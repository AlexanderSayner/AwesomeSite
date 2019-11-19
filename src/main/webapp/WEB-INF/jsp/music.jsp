<!DOCTYPE html>
<%@ page contentType="text/html;charset=utf-8" %>

<html lang="en">
<head>

    <meta charset="UTF-8">
    <title>Музыка</title>

    <link rel="stylesheet" type="text/css"
          href="/webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <!-- Include font -->
    <link href="https://fonts.googleapis.com/css?family=Lato:400,400i" rel="stylesheet">

    <!-- Include Amplitude JS -->
    <script type="text/javascript" src="amplitude/amplitude.js"></script>

    <!-- Include Style Sheet -->
    <link rel="stylesheet" type="text/css" href="amplitude/css/app.css"/>

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
                <li><a href="/svg">Svg</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Blue Playlist Container -->
<div id="blue-playlist-container">

    <!-- Amplitude Player -->
    <div id="amplitude-player">

        <!-- Left Side Player -->
        <div id="amplitude-left">
            <img data-amplitude-song-info="cover_art_url"/>
            <div id="player-left-bottom">
                <div id="time-container">
							<span class="current-time">
								<span class="amplitude-current-minutes"></span>:<span
                                    class="amplitude-current-seconds"></span>
							</span>
                    <div id="progress-container">
                        <input type="range" class="amplitude-song-slider"/>
                        <progress id="song-played-progress" class="amplitude-song-played-progress"></progress>
                        <progress id="song-buffered-progress" class="amplitude-buffered-progress" value="0"></progress>
                    </div>
                    <span class="duration">
								<span class="amplitude-duration-minutes"></span>:<span
                            class="amplitude-duration-seconds"></span>
							</span>
                </div>

                <div id="control-container">
                    <div id="repeat-container">
                        <div class="amplitude-repeat" id="repeat"></div>
                        <div class="amplitude-shuffle amplitude-shuffle-off" id="shuffle"></div>
                    </div>

                    <div id="central-control-container">
                        <div id="central-controls">
                            <div class="amplitude-prev" id="previous"></div>
                            <div class="amplitude-play-pause" id="play-pause"></div>
                            <div class="amplitude-next" id="next"></div>
                        </div>
                    </div>

                    <div id="volume-container">
                        <div class="volume-controls">
                            <div class="amplitude-mute amplitude-not-muted"></div>
                            <input type="range" class="amplitude-volume-slider"/>
                            <div class="ms-range-fix"></div>
                        </div>
                        <div class="amplitude-shuffle amplitude-shuffle-off" id="shuffle-right"></div>
                    </div>
                </div>

                <div id="meta-container">
                    <span data-amplitude-song-info="name" class="song-name"></span>

                    <div class="song-artist-album">
                        <span data-amplitude-song-info="artist"></span>
                        <span data-amplitude-song-info="album"></span>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Left Side Player -->

        <!-- Right Side Player -->
        <div id="amplitude-right">
            <div class="song amplitude-song-container amplitude-play-pause" data-amplitude-song-index="0">
                <div class="song-now-playing-icon-container">
                    <div class="play-button-container">

                    </div>
                    <img class="now-playing" src="amplitude/img/now-playing.svg"/>
                </div>
                <div class="song-meta-data">
                    <span class="song-title">Соло на басу №1</span>
                    <span class="song-artist">Alex Sayner</span>
                </div>
                <a <%--href="#"--%>
                        class="song-origin-link" target="_blank">
                    <img class="bandcamp-grey" src="amplitude/img/blackNote.svg"/>
                    <img class="bandcamp-white" src="amplitude/img/redNote.svg"/>
                </a>
                <span class="song-duration">4:00</span>
            </div>

            <div class="song amplitude-song-container amplitude-play-pause" data-amplitude-song-index="1">
                <div class="song-now-playing-icon-container">
                    <div class="play-button-container">

                    </div>
                    <img class="now-playing" src="amplitude/img/now-playing.svg"/>
                </div>
                <div class="song-meta-data">
                    <span class="song-title">The Duck Song</span>
                    <span class="song-artist">nobody.one</span>
                </div>
                <a href="https://soundcloud.com/nobody-one/nobody-one-2010-head-movies-6" class="song-origin-link"
                   target="_blank">
                    <img class="bandcamp-grey" src="amplitude/img/blackSoundCloud.svg"/>
                    <img class="bandcamp-white" src="amplitude/img/soundCloud.svg"/>
                </a>
                <span class="song-duration">3:16</span>
            </div>

            <div class="song amplitude-song-container amplitude-play-pause" data-amplitude-song-index="2">
                <div class="song-now-playing-icon-container">
                    <div class="play-button-container">

                    </div>
                    <img class="now-playing" src="amplitude/img/now-playing.svg"/>
                </div>
                <div class="song-meta-data">
                    <span class="song-title">Radioactive</span>
                    <span class="song-artist">Imagine Gragons</span>
                </div>
                <a href="https://youtu.be/ktvTqknDobU" class="song-origin-link" target="_blank">
                    <img class="bandcamp-grey" src="amplitude/img/blackYoutube.svg"/>
                    <img class="bandcamp-white" src="amplitude/img/redYoutube.svg"/>
                </a>
                <span class="song-duration">3:32</span>
            </div>

        </div>
        <!-- End Right Side Player -->
    </div>
    <!-- End Amplitdue Player -->
</div>

<!--
    Include UX functions JS

    NOTE: These are for handling things outside of the scope of AmplitudeJS
-->
<script type="text/javascript" src="amplitude/js/functions.js"></script>

</body>

</html>
