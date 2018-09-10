import pymysql
from dbconfig import creatConnect
def getAllUser():

    try:
        res=0
        connect=creatConnect()
        # 返回结果不是元组，而是字典
        cursor = connect.cursor(cursor=pymysql.cursors.DictCursor)

        sql="select * from user"

        cursor.execute(sql)


        user1=cursor.fetchone()
        print(user1)

        cursor.fetchone()
        cursor.fetchone()

        cursor.scroll(1, mode='absolute')
        user2 = cursor.fetchone()
        print(user2)



    except Exception as ex:
        print(ex)

        return 0
    finally:
        if cursor:
            cursor.close()
        if connect:
            connect.close()
    return res

getAllUser()

def getPosition(condition):

    try:
        res=0
        connect=creatConnect()
        # 返回结果不是元组，而是字典
        cursor = connect.cursor(cursor=pymysql.cursors.DictCursor)

        sql="select * from position_info where name like '%{0}%' or profession_name like '%{0}%'".format(condition)

        cursor.execute(sql)

        users=cursor.fetchall()
        print(users)
    except Exception as ex:
        print(ex)

        return 0
    finally:
        if cursor:
            cursor.close()
        if connect:
            connect.close()
    return res

# getPosition('金融')