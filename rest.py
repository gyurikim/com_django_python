import pymysql

juso_db = pymysql.connect(
    user="test", passwd="test", host="imguru.iptime.org", db="practice_dev", charset="utf8"
)

cursor = juso_db.cursor(pymysql.cursors.DictCursor)

sql = "SELECT * FROM `TB_USERINFO`;"
cursor.execute(sql)
result = cursor.fetchall()

print(result)