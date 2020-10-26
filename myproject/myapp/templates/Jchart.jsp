<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="http://code.highcharts.com/highcharts.js"></script>
    <title>Document</title>
    <style>
        #container {
            border: 1px black solid;
            min-width: 310px;
            max-width: 800px;
            height: 400px;
            margin: 0 auto
        }
    </style>
</head>

<body>
    <p>hello</p>
    <p>{{data1}}</p>
    <p>{{data2}}</p>
    <div id="container"></div>
    <input type="hidden" id="data1" name="data1" value="{{data1}}">
    <input type="hidden" id="data2" name="data2" value="{{data2}}">
</body>
<script>
    var text = "asdf"
    var data1 = document.getElementById("data1").value;
    var data2 = document.getElementById("data2").value;
    console.log(typeof data1)
    console.log(typeof data2)

    Highcharts.chart('container', {

        title: {
            text: 'Solar Employment Growth by Sector, 2010-2016'
        },

        subtitle: {
            text: 'Source: thesolarfoundation.com'
        },

        yAxis: {
            title: {
                text: 'Number of Employees'
            }
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'middle'
        },

        plotOptions: {
            series: {
                pointStart: 2010
            }
        },

        series: [{      //실제 데이터 값
            name: 'Installation',
            data: [1, 2, 3, 4]
        }, {
            name: 'Manufacturing',
            data: data2
        }]
    });
    console.log(text)
    console.log(data1)
    console.log(data2)

</script>

</html>