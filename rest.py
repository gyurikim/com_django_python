import pymysql

juso_db = pymysql.connect(
    user="test", passwd="test", host="imguru.iptime.org", db="practice_dev", charset="utf8"
)

cursor = juso_db.cursor(pymysql.cursors.DictCursor)

sql = "SELECT * FROM TB_USERINFO where id='krkim' "
# sql = "update TB_USERINFO set pw='111' where id='krkim';"

cursor.execute(sql)
result = cursor.fetchall()

#  sql = """INSERT INTO TB_USERINFO (id, pw, menu1, menu2, menu3, menu4)
#   VALUES ('krkim', 'imguru24^^', '1', '1','0','0')"""


# cursor.execute(sql)
# juso_db.commit()

print(result)