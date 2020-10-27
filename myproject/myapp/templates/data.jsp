<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="http://code.highcharts.com/highcharts.js"></script>
    <title>Document</title>
</head>

<body>
    <p>{{cdata1}}</p>
    <p>{{cdata2}}</p>
    <p>{{cdata3}}</p>
    <p>{{cdata4}}</p>
    <p>{{cdata5}}</p>
    <p>{{total}}</p>
    <input type="hidden" id="cdata1" name="cdata1" value="{{cdata1}}">
    <input type="hidden" id="cdata2" name="cdata2" value="{{cdata2}}">
    <input type="hidden" id="cdata3" name="cdata3" value="{{cdata3}}">
    <input type="hidden" id="cdata4" name="cdata4" value="{{cdata4}}">
    <input type="hidden" id="cdata5" name="cdata5" value="{{cdata5}}">
    <div id="container2"></div>
    <div class="container">
        <small style="text-align: center;">확진환자는 {{cdata5}}명 입니다.</small>
    </div>
</body>
<script>
    cdata1 = document.getElementById("cdata1").value
    cdata2 = document.getElementById("cdata2").value
    cdata3 = document.getElementById("cdata3").value
    cdata4 = document.getElementById("cdata4").value
    cdata5 = document.getElementById("cdata5").value

    cdata1 = parseInt(cdata1)
    cdata2 = parseInt(cdata2)
    cdata3 = parseInt(cdata3)
    cdata4 = parseInt(cdata4)
    cdata5 = parseInt(cdata5)

    Highcharts.chart('container2', {
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: 'Browser market shares in January, 2018'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        accessibility: {
            // point: {
            //     valueSuffix: '%'
            // }
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: false
                },
                showInLegend: true
            }
        },
        series: [{
            name: 'Brands',
            colorByPoint: true,
            data: [{
                name: '신규확진자',
                y: cdata1,
            }, {
                name: '치료중(격리중)',
                y: cdata2 + 10
            }, {
                name: '완치(격리해제)',
                y: cdata3
            }, {
                name: '사망',
                y: cdata4
            }]
        }]
    });
    console.log(cdata4)
</script>

</html>