import pymysql
try:
    connect=None
    cursor=None
    connect = pymysql.connect(host='localhost', user='root',
                              password='12345678', port=3306, db='jobapp')  # 2.声明一个MySQL连接对象db,在远程host传入其公网ip
    cursor=connect.cursor()

    user={
        "tel":"13812457889",
        "password":"123456",
        "email":"51job@163.cjom"
    }
    # sql="insert into user(telephone,password,email,regist_date) values('{0}','{1}','{2}',CURDATE())"\
    #     .format(user['tel'],user['password'],user['email'])

    sql = "insert into user(telephone,password,email,regist_date) values(%s,%s,%s,CURDATE())"
    res=cursor.execute(sql,(user['tel'],user['password'],user['email']))


    connect.commit()
except Exception as ex:
    print(ex)

finally:
    if cursor:
        cursor.close()

    if connect:
        connect.close()
