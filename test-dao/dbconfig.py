import pymysql
def creatConnect():
    con = pymysql.connect(host='localhost', user='root',
                              password='12345678', port=3306, db='jobapp')  # 2.声明一个MySQL连接对象db,在远程host传入其公网ip

    return con