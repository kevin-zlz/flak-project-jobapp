import pymysql
from dbconfig import creatConnect
def addResume(resume):

    try:
        res=0
        connect=creatConnect()
        cursor = connect.cursor()

        sql="insert into resume_basic(resume_title,name,sex,birth_date,advantage,high_education,work_years,position_now,user_id)" \
            "VALUES('{0}','{1}',{2},'{3}','{4}','{5}',{6},{7},{8})"\
            .format(resume['title'],resume['name'],resume['sex'],resume['bitrh'],resume['adv'],resume['edu'],resume['work'],resume['positon'],resume['user_id'])


        res=cursor.execute(sql)

        resume_id=connect.insert_id()

        sql_job='insert into resume_education(school_name,major,education,begin_date,end_date,resume_basic_id)' \
                'values("北京大学","计算机","博士","2010-1-1","2014-3-1",{0})'.format(resume_id)

        res+=cursor.execute(sql_job)
        print(resume_id)



        connect.commit()


    except Exception as ex:
        print(ex)
        connect.rollback()
        return 0
    finally:
        if cursor:
            cursor.close()
        if connect:
            connect.close()
    return res



resume={
            'title':"中文简历",
            "name":"李希",
            "sex":1,
            "bitrh":"1990-1-1",
            "adv":"yes",
            "edu":"博士",
            "work":3,
            "positon":2,
            "user_id":5
        }

addResume(resume)