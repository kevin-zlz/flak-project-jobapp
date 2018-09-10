import pymysql
def creatConnect():
    con = pymysql.connect(host='localhost', user='root',
                              password='123456', port=3306, db='testapp')  # 2.声明一个MySQL连接对象db,在远程host传入其公网ip
    return con