'''
此部分由王文成完成
'''
from . import *
from app.dao.user_sql import do_user_sql
def addUser(user):
    try:
        res=0
        connect=creatConnect()
        cursor = connect.cursor(cursor=pymysql.cursors.DictCursor)
        sql=do_user_sql['addUser'].format(user['telephone'],user['password'])
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

def queryUserByTel(id):
    try:
        res = None
        cursor=None
        connect=None
        connect = creatConnect()
        cursor = connect.cursor(cursor=pymysql.cursors.DictCursor)
        sql = do_user_sql['login'].format(id)
        cursor.execute(sql)
        res =cursor.fetchall()
        connect.commit()
    except Exception as ex:
        print(ex)
        return None
    finally:
        if cursor:
            cursor.close()
        if connect:
            connect.close()
    return res



def updatePasswor(user):
    try:
        res=0
        connect=creatConnect()
        cursor = connect.cursor(cursor=pymysql.cursors.DictCursor)
        sql=do_user_sql['updatePassword'].format(user['password'],user['id'])
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

def queryPswById(id):
    try:
        res = None
        cursor=None
        connect=None
        connect = creatConnect()
        cursor = connect.cursor(cursor=pymysql.cursors.DictCursor)
        sql = do_user_sql['getPswById'].format(id)
        cursor.execute(sql)
        res =cursor.fetchall()
        connect.commit()
    except Exception as ex:
        print(ex)
        return None
    finally:
        if cursor:
            cursor.close()
        if connect:
            connect.close()
    return res

def queryUserById(id):
    try:
        res = None
        cursor=None
        connect=None
        connect = creatConnect()
        cursor = connect.cursor(cursor=pymysql.cursors.DictCursor)
        sql = do_user_sql['queryUserById'].format(id)
        cursor.execute(sql)
        res =cursor.fetchall()
        connect.commit()
    except Exception as ex:
        print(ex)
        return None
    finally:
        if cursor:
            cursor.close()
        if connect:
            connect.close()
    return res



