import pymysql
try:
    connect = pymysql.connect(host='localhost', user='root',
                              password='12345678', port=3306, db='jobapp')  # 2.声明一个MySQL连接对象db,在远程host传入其公网ip
    cursor=connect.cursor()

    sql='select * from user limit 3'
    cursor.execute(sql)
    result=cursor.fetchall()
    # result=cursor.fetchone()
    # result=cursor.fetchmany(3)
    print(result)
    print(result[0][2])
    cursor.close()
    connect.close()
except Exception as ex:
    print(ex)
