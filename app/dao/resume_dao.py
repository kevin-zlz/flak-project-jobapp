'''
此部分由翟立志完成
'''
from . import *
from app.dao.resume_sql import *
def addAllResume(resume):
    try:
        res=0
        connect=creatConnect()
        cursor = connect.cursor()
        sql=do_resume_sql['addResumeBase'].format(resume['resume_title'],resume['name'],resume['sex'],resume['birth_date'],
                                                  resume['advantage'],resume['high_education'],resume['work_years'],resume['position_now'],resume['uid'])

        res = cursor.execute(sql)
        resume_basic_id=connect.insert_id()
        resume['resume_basic_id']=resume_basic_id
        print(resume)
        # res += addEduRes(resume)
        sql2 = do_resume_sql['addResumeEdu'].format(resume['school_name'], resume['major'],
                                                   resume['education'], resume['pos_begin_date'],
                                                   resume['pos_end_date'], resume['resume_basic_id'])
        res += cursor.execute(sql2)
        sql1= do_resume_sql['addResumeJob'].format(resume['company_name'], resume['position_name'],
                                                   resume['job_begin_date'],
                                                   resume['job_end_date'], resume['department'],
                                                   resume['work_content'], resume['profession'],
                                                   resume['resume_basic_id'])
        print(sql)
        res += cursor.execute(sql1)
        connect.commit()
    except Exception as ex:
        connect.rollback()
        print(ex)
        return 0
    finally:
        if cursor:
            cursor.close()
        if connect:
            connect.close()
    return res

def addBaseRes(resume):
    try:
        res=0
        connect=creatConnect()
        cursor = connect.cursor()
        sql=do_resume_sql['addResumeBase'].format(resume['resume_title'],resume['name'],resume['sex'],resume['birth_date'],
                                                  resume['advantage'],resume['high_education'],resume['work_years'],resume['position_now'],resume['uid'])
        res = cursor.execute(sql)
        connect.commit()
    except Exception as ex:
        connect.rollback()
        print(ex)
        return 0
    finally:
        if cursor:
            cursor.close()
        if connect:
            connect.close()
    return res

def addEduRes(resume):
    try:
        res=0
        connect=creatConnect()
        cursor = connect.cursor()
        sql1 = do_resume_sql['addResumeEdu'].format(resume['school_name'], resume['major'],
                                                    resume['education'], resume['pos_begin_date'],
                                                    resume['pos_end_date'],  resume['resume_basic_id'])
        res = cursor.execute(sql1)
        connect.commit()
    except Exception as ex:
        connect.rollback()
        print(ex)
        return 0
    finally:
        if cursor:
            cursor.close()
        if connect:
            connect.close()
    return res

def addJobres(resume):
    try:
        res=0
        connect=creatConnect()
        cursor = connect.cursor()
        sql= do_resume_sql['addResumeJob'].format(resume['company_name'], resume['position_name'],
                                                    resume['begin_date'],
                                                    resume['end_date'], resume['department'],
                                                    resume['work_content'], resume['profession'],resume['resume_basic_id'])
        print(sql)
        res = cursor.execute(sql)
        connect.commit()
    except Exception as ex:
        connect.rollback()
        print(ex)
        return 0
    finally:
        if cursor:
            cursor.close()
        if connect:
            connect.close()
    return res

def queryResBase(uid):
    try:
        res=None
        connect=creatConnect()
        cursor = connect.cursor(cursor=pymysql.cursors.DictCursor)
        sql=do_resume_sql['queryresumeByuid'].format(uid)
        cursor.execute(sql)
        res =cursor.fetchall()
    except Exception as ex:
        print(ex)
        return None
    finally:
        if cursor:
            cursor.close()
        if connect:
            connect.close()
    return res

def queryResJob(resume_id):
    try:
        res=None
        connect=creatConnect()
        cursor = connect.cursor(cursor=pymysql.cursors.DictCursor)
        sql=do_resume_sql['queryResumeJob'].format(resume_id)
        cursor.execute(sql)
        res =cursor.fetchall()
    except Exception as ex:
        print(ex)
        return None
    finally:
        if cursor:
            cursor.close()
        if connect:
            connect.close()
    return res

def queryResEdu(resume_id):
    try:
        res=None
        connect=creatConnect()
        cursor = connect.cursor(cursor=pymysql.cursors.DictCursor)
        sql=do_resume_sql['queryResumeEdu'].format(resume_id)
        cursor.execute(sql)
        res =cursor.fetchall()
    except Exception as ex:
        print(ex)
        return None
    finally:
        if cursor:
            cursor.close()
        if connect:
            connect.close()
    return res


def updateEducationRes(resume):
    try:
        res=0
        connect=creatConnect()
        cursor = connect.cursor()
        sql=do_resume_sql['updateResumeEdu'].format(resume['school_name'],resume['major'],resume['education'],
                                                    resume['begin_date'],resume['end_date'],resume['resume_base_id'])
        print(sql)
        res = cursor.execute(sql)
        connect.commit()
    except Exception as ex:
        connect.rollback()
        print(ex)
        return 0
    finally:
        if cursor:
            cursor.close()
        if connect:
            connect.close()
    return res

def delAllResume(resume):
    try:
        res=0
        connect=creatConnect()
        cursor = connect.cursor()
        sql=do_resume_sql['delEduResume'].format(resume['resume_basic_id'])
        res = cursor.execute(sql)
        sql1=do_resume_sql['delJobsResume'].format(resume['resume_basic_id'])
        res += cursor.execute(sql1)
        print(sql1)
        sql2=do_resume_sql['delBaseResume'].format(resume['resume_basic_id'])
        res += cursor.execute(sql2)
        print(sql2)
        connect.commit()
    except Exception as ex:
        connect.rollback()
        print(ex)
        return 0
    finally:
        if cursor:
            cursor.close()
        if connect:
            connect.close()
    return res



