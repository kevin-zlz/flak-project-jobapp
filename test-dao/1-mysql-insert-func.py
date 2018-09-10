import pymysql
from dbconfig import creatConnect
def addUser(user):

    try:
        res=0
        connect=creatConnect()
        cursor = connect.cursor()
        sql="insert into user(telephone,password,email,regist_date) values('{0}','{1}','{2}',CURDATE())"\
            .format(user['tel'],user['password'],user['email'])
        res = cursor.execute(sql)
        connect.commit()


    except Exception as ex:
        print(ex)
        return 0
    finally:
        if cursor:
            cursor.close()
        if connect:
            connect.close()
    return res

user1={
        "tel":"13812457333",
        "password":"123456",
        "email":"51job@163.cjom"
    }

user2={
        "tel":"13812457444",
        "password":"123456",
        "email":"51job@163.cjom"
    }

result1=addUser(user1)
result2=addUser(user2)
print(result1)
print(result2)