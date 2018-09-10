'''
此部分由王俊垚完成
'''
from . import *
from app.dao.postionApply_sql import *
def putResume(user):
    try:
        res=None
        connect=creatConnect()
        cursor = connect.cursor()
        sql=do_apply_sql['put_resume_to_position'].format(user['position_id'],user['user_id'],user['resume_id'])
        res=cursor.execute(sql)
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

def selectUserPut(user_id):
    try:
        connect=creatConnect()
        cursor = connect.cursor()
        sql=do_apply_sql['select_user_put'].format(user_id)
        cursor.execute(sql)
        information= cursor.fetchall()
        connect.commit()
    except Exception as ex:
        print(ex)
        return 0
    finally:
        if cursor:
            cursor.close()
        if connect:
            connect.close()
    return information
