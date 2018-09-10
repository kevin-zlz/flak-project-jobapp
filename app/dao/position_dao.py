'''
此部分由王清完成
'''
from . import *
import pymysql
from app.dao.position_sql import do_user_sql
def get_job_by_name(companyname):
    connect = creatConnect()
    # connect = pymysql.connect(host='localhost', user='root',
    #                           password='root', port=3306, db='wq_database')
    cursor = connect.cursor()
    try:
        sql=do_user_sql['getjobbycomanyname'].format(companyname)
        cursor.execute(sql)
        information = cursor.fetchall()
    except Exception as ex:
        print("出错啦")
        return 0
    finally:
        if cursor:
            cursor.close()
        if connect:
            connect.close()
    return information

def get_professionname():
    connect = creatConnect()
    cursor = connect.cursor(pymysql.cursors.DictCursor)
    try:
        sql=do_user_sql['getprofession']
        cursor.execute(sql)
        information = cursor.fetchall()
    except Exception as ex:
        print("出错啦")
        return 0
    finally:
        if cursor:
            cursor.close()
        if connect:
            connect.close()
    return information

def getAllposition():
    connect = creatConnect()
    cursor = connect.cursor(pymysql.cursors.DictCursor)
    try:
        sql=do_user_sql['getallposition']
        cursor.execute(sql)
        information = cursor.fetchall()
    except Exception as ex:
        print("出错啦")
        return 0
    finally:
        if cursor:
            cursor.close()
        if connect:
            connect.close()
    return information

def getAllpositionBySearch(request):
    connect = creatConnect()
    cursor = connect.cursor(pymysql.cursors.DictCursor)
    try:
        sql=do_user_sql['getallpositionbysearch'].format(request)
        cursor.execute(sql)
        information = cursor.fetchall()
    except Exception as ex:
        print("出错啦")
        return 0
    finally:
        if cursor:
            cursor.close()
        if connect:
            connect.close()
    return information


def get_job_by_id(id):
    # connect = pymysql.connect(host='localhost', user='root',
    #                           password='root', port=3306, db='wq_database')
    connect = creatConnect()
    cursor = connect.cursor(pymysql.cursors.DictCursor)
    try:
        sql = do_user_sql['getpositionbyid'].format(id)
        cursor.execute(sql)
        information = cursor.fetchall()

    except Exception as ex:
        print("出错啦")
        return 0
    finally:
        if cursor:
            cursor.close()
        if connect:
            connect.close()
    return information

def get_job_by_job(name,city,industry):
    # connect = pymysql.connect(host='localhost', user='root',
    #                           password='root', port=3306, db='wq_database')
    connect = creatConnect()
    cursor = connect.cursor()
    try:
        sql = do_user_sql['getpositionbymore'].format(name,city,industry)
        cursor.execute(sql)
        information = cursor.fetchall()

    except Exception as ex:
        print("出错啦")
        return 0
    finally:
        if cursor:
            cursor.close()
        if connect:
            connect.close()
    return information


def get_company_by_id(id):
    # connect = pymysql.connect(host='localhost', user='root',
    #                           password='root', port=3306, db='wq_database')
    connect = creatConnect()
    cursor = connect.cursor(pymysql.cursors.DictCursor)
    try:
        sql = do_user_sql['getcompanybypid'].format(id)
        cursor.execute(sql)
        information = cursor.fetchall()

    except Exception as ex:
        print("出错啦")
        return 0
    finally:
        if cursor:
            cursor.close()
        if connect:
            connect.close()
    return information