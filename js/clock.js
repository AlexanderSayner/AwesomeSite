// Прежде чем пытаться рисовать, нужно получить контекст объекта Canvas
function displayCanvas() {

    const canvasHTML = document.getElementById('myCanvas');
    const contextHTML = canvasHTML.getContext('2d');
    contextHTML.strokeRect(0, 0, canvasHTML.width, canvasHTML.height);
    // Далее логика часов и отрисовка примитивов

    //Расчет координат центра и радиуса часов
    const radiusClock = canvasHTML.width / 2 - 10;
    const xCenterClock = canvasHTML.width / 2;
    const yCenterClock = canvasHTML.height / 2;

    //Очистка экрана.
    contextHTML.fillStyle = "#000000";
    contextHTML.fillRect(0, 0, canvasHTML.width, canvasHTML.height);

    //Рисуем контур часов
    contextHTML.strokeStyle = "#db70ff";
    contextHTML.lineWidth = 3;
    contextHTML.beginPath();
    contextHTML.arc(xCenterClock, yCenterClock, radiusClock, 0, 2 * Math.PI, true);
    contextHTML.moveTo(xCenterClock, yCenterClock);
    contextHTML.stroke();
    contextHTML.closePath();

    // Рисуем рисочки часов
    const radiusNum = radiusClock - 20; // Радиус расположения рисочек
    let radiusPoint;

    // Внешний обод
    for (let tm = 0; tm < 12; tm += 1) {
        contextHTML.beginPath();

        // Крупные рисочки
        radiusPoint = 7;
        const xPointM = xCenterClock + radiusNum * Math.cos(-30 * tm * (Math.PI / 180) + Math.PI / 2);
        const yPointM = yCenterClock - radiusNum * Math.sin(-30 * tm * (Math.PI / 180) + Math.PI / 2);
        // Угол положения "прорези" меняется исходя из положения на циферблате
        contextHTML.arc(xPointM, yPointM, radiusPoint,
            1.8 * Math.PI + (tm * (Math.PI / 6)),
            0.5 * Math.PI + (tm * (Math.PI / 6)),
            true);
        contextHTML.stroke();
        contextHTML.closePath();
    }

    // Внутренний обод
    for (let tm = 0; tm < 12; tm += 1) {
        contextHTML.beginPath();

        // Крупные рисочки
        radiusPoint = 7;
        const xPointMidDown = xCenterClock + (radiusNum - 14) * Math.cos(-30 * tm * (Math.PI / 180) + Math.PI / 2);
        const yPointMIdDown = yCenterClock - (radiusNum - 14) * Math.sin(-30 * tm * (Math.PI / 180) + Math.PI / 2);
        // Угол положения "прорези" меняется исходя из положения на циферблате
        contextHTML.arc(xPointMidDown, yPointMIdDown, radiusPoint,
            0.8 * Math.PI + (tm * (Math.PI / 6)),
            1.5 * Math.PI + (tm * (Math.PI / 6)),
            true);
        contextHTML.stroke();
        contextHTML.closePath();
    }

    // Кружочки по краям
    for (let tm = 0; tm < 60; tm++) {
        contextHTML.beginPath();
        if (tm % 5 == 0) {
            continue;
        } else {
            radiusPoint = 3;
        } //для выделения часовых рисочек
        const xPointM = xCenterClock + (radiusNum - 7) * Math.cos(-6 * tm * (Math.PI / 180) + Math.PI / 2);
        const yPointM = yCenterClock - (radiusNum - 7) * Math.sin(-6 * tm * (Math.PI / 180) + Math.PI / 2);
        contextHTML.arc(xPointM, yPointM, radiusPoint, 0, 2 * Math.PI, true);
        contextHTML.stroke();
        contextHTML.closePath();
    }

    //Оцифровка циферблата часов
    for (let th = 1; th <= 12; th++) {
        contextHTML.beginPath();
        contextHTML.font = 'bold 25px sans-serif';
        const xText = xCenterClock + (radiusNum - 50) * Math.cos(-30 * th * (Math.PI / 180) + Math.PI / 2);
        const yText = yCenterClock - (radiusNum - 50) * Math.sin(-30 * th * (Math.PI / 180) + Math.PI / 2);
        if (th <= 9) {
            contextHTML.strokeText(th, xText - 5, yText + 10);
        } else {
            contextHTML.strokeText(th, xText - 15, yText + 10);
        }
        contextHTML.stroke();
        contextHTML.closePath();
    }

    //Рисуем стрелки
    const lengthSeconds = radiusNum - 10;
    const lengthMinutes = radiusNum - 15;
    const lengthHour = lengthMinutes / 1.5;
    const d = new Date();                                           // Получаем экземпляр даты
    const t_sec = 6 * d.getSeconds();                               // Определяем угол для секунд
    const t_min = 6 * (d.getMinutes() + (1 / 60) * d.getSeconds()); // Определяем угол для минут
    const t_hour = 30 * (d.getHours() + (1 / 60) * d.getMinutes()); // Определяем угол для часов

    //Рисуем секунды
    contextHTML.beginPath();
    contextHTML.strokeStyle = "#daff98";
    contextHTML.lineWidth = 1;
    contextHTML.moveTo(xCenterClock, yCenterClock);
    contextHTML.lineTo(xCenterClock + lengthSeconds * Math.cos(Math.PI / 2 - t_sec * (Math.PI / 180)),
        yCenterClock - lengthSeconds * Math.sin(Math.PI / 2 - t_sec * (Math.PI / 180)));
    contextHTML.stroke();
    contextHTML.closePath();

    //Рисуем минуты
    contextHTML.beginPath();
    contextHTML.strokeStyle = "#58ff81";
    contextHTML.lineWidth = 3;
    contextHTML.moveTo(xCenterClock, yCenterClock);
    contextHTML.lineTo(xCenterClock + lengthMinutes * Math.cos(Math.PI / 2 - t_min * (Math.PI / 180)),
        yCenterClock - lengthMinutes * Math.sin(Math.PI / 2 - t_min * (Math.PI / 180)));
    contextHTML.stroke();
    contextHTML.closePath();

    //Рисуем часы
    contextHTML.beginPath();
    contextHTML.strokeStyle = "#48ffec";
    contextHTML.lineWidth = 5;
    contextHTML.moveTo(xCenterClock, yCenterClock);
    contextHTML.lineTo(xCenterClock + lengthHour * Math.cos(Math.PI / 2 - t_hour * (Math.PI / 180)),
        yCenterClock - lengthHour * Math.sin(Math.PI / 2 - t_hour * (Math.PI / 180)));
    contextHTML.stroke();
    contextHTML.closePath();

    //Рисуем центр часов
    contextHTML.beginPath();
    contextHTML.strokeStyle =  "#dfb8ff";
    contextHTML.fillStyle = "#240050";
    contextHTML.lineWidth = 3;
    contextHTML.arc(xCenterClock, yCenterClock, 5, 0, 2*Math.PI, true);
    contextHTML.stroke();
    contextHTML.fill();
    contextHTML.closePath();

    return;
}

// Создание событие, при обращении на которое будет выполнятся код
window.onload = function () {
    // Метод выполняется через определённые промежутки времени
    window.setInterval(
        function () {

            // Объект выполняется для манипуляцией с датой и временем
            // const d = new Date();
            // Получение времени с разметкой внутри
            // document.getElementById("clock").innerHTML = d.toLocaleTimeString();
            displayCanvas();

            // Угол поворота всех стрелок за 1 секунду в градусах:
            //
            // Секундная стрелка повернется на угол — (1/60)*360 = 6
            // Минутная стрелка повернется на угол — (1/60)*6 = 0,1
            // Часовая стрелка повернется на угол — (1/60)*0,1 ≈ 0,0017

            const t_sec = 6 * d.getSeconds();  //Определяем угол для секунд
            const t_min = 6 * (d.getMinutes() + (1 / 60) * d.getSeconds()); //Определяем угол для минут
            const t_hour = 30 * (d.getHours() + (1 / 60) * d.getMinutes());  //Определяем угол для часов
        }
        , 1000);
}
