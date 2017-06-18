<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>乒乓球</title>
    <style>
        body {
            background: #000000;
            text-align: center;
        }
        .container {
            width: 500px;
            display: inline-block;
            transform: translateY(200px);
        }
        .bar {
            background: #FFFFFF;
            width: 10px;
            height: 100px;
        }
        .bar1 {
            float: left;
        }
        .bar2 {
            float: right;
        }
        .ball {
            background: #FFFFFF;
            width: 10px;
            height: 10px;
            position: relative;
            top: 45px;
            left: 10px;
        }

    </style>
</head>
<body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.js"></script>
<div class="container">
    <div class="bar bar1"></div>
    <div class="ball"></div>
    <div class="bar bar2"></div>
    <div>
</body>
<script>
    var loop = true;
    var easing = 'linear';
    var direction = 'alternate';

    anime({
        targets: '.ball',
        translateX: 470,
        translateY: 100,
        easing,
        loop,
        direction,
        background: [
            { value: '#573796' },
            { value: '#FB89FB' },
            { value: '#FBF38C' },
            { value: '#18FF92' },
            { value: '#5A87FF' }
        ]
    })
    var ballTimeline = anime.timeline({
        loop,
        direction
    })
    var bar2Timeline = anime.timeline({
        loop,
        direction
    })
    var bar1Timeline = anime.timeline({
        loop,
        direction
    })
    ballTimeline
        .add({
            targets: '.ball',
            translateY: 100,
            translateX: 470,
            easing
        }).add({
        targets: '.ball',
        translateY: 0,
        translateX: 0,
        easing
    }).add({
        targets: '.ball',
        translateY: '-80',
        translateX: 470,
        easing
    })
    bar2Timeline
        .add({
            targets: '.bar2',
            translateY: 100,
            easing,
            background: '#573796'
        }).add({
        targets: '.bar2',
        translateY: 0,
        easing,
        background: '#FB89FB'
    }).add({
        targets: '.bar2',
        translateY: '-100',
        easing,
        background: '#FBF38C'
    })
    bar1Timeline
        .add({
            targets: '.bar1',
            translateY: '-80',
            easing,
            background: '#18FF92'
        }).add({
        targets: '.bar1',
        translateY: 10,
        easing,
        background: '#5A87FF'
    }).add({
        targets: '.bar1',
        translateY: 60,
        easing,
        background: '#FF1461'
    })

</script>
</html>