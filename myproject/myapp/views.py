from django.shortcuts import render
import pymysql
from django.http import request
import myapp.dataget as dataget

# Create your views here.


def first(request):
    return render(request, "first.html")


def loginform(request):
    if request.method == "POST":
        id = request.POST["id"]
        pwd = request.POST["pwd"]

        juso_db = pymysql.connect(
            user="test", passwd="test", host="imguru.iptime.org", db="practice_dev", charset="utf8"
        )
        cursor = juso_db.cursor(pymysql.cursors.DictCursor)

        sql = "SELECT COUNT(*) as num FROM TB_USERINFO where id='{}' and pw='{}'".format(id, pwd)
        print(sql)
        cursor.execute(sql)
        result = cursor.fetchall()

        return render(request, "first.html", {"result": result})
    else:
        return render(request, "loginform.jsp")


def sql(request):

    juso_db = pymysql.connect(
        user="test", passwd="test", host="imguru.iptime.org", db="practice_dev", charset="utf8"
    )
    # req ={"columname":ddd}
    # TB = req["columname"]
    cursor = juso_db.cursor(pymysql.cursors.DictCursor)

    sql = "SELECT * FROM `TB_USERINFO`;"
    # sql = "SELECT id FROM id={}};".format(TB)
    # sql = "SELECT id FROM " +str(TB)+ "Where "
    cursor.execute(sql)
    result = cursor.fetchall()

    return render(request, "sql.html", {"result": result})


def chart(request):
    data1 = [100, 200, 300, 400, 500]
    data2 = [12, 23, 34, 45, 56]
    return render(request, "chart.html", {"data1": data1, "data2": data2})


def Jchart(request):
    data1 = [100, 200, 300, 400, 500]
    data2 = [12, 23, 34, 45, 56]
    return render(request, "Jchart.jsp", {"data1": data1, "data2": data2})


def data(request):
    total = dataget.datasand()
    return render(
        request,
        "data.jsp",
        {
            "cdata1": total[0],
            "cdata2": total[1],
            "cdata3": total[2],
            "cdata4": total[3],
            "cdata5": total[4],
            "total": total,
        },
    )
