import pymysql
from dbconfig import creatConnect
'''
'''
def getCityId(cname):

    try:
        res=0
        connect=creatConnect()
        # 返回结果不是元组，而是字典
        cursor = connect.cursor(cursor=pymysql.cursors.DictCursor)

        sql="call getUsersByCity('{0}',@aa); ".format(cname)

        cursor.execute(sql)


        a=cursor.fetchall()
        print(a)
    except Exception as ex:
        print(ex)

        return 0
    finally:
        if cursor:
            cursor.close()
        if connect:
            connect.close()
    return res

getCityId('石家庄市')

conditions={
    citys:['苏州','上海','北京'],
    name:'',
    yangye:"",
    zhineng:""
}

citys=['苏州','上海','北京']


select * from position_info where citys in citys and name like '%%' and