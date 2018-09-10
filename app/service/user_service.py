'''
此部分由王文成完成
'''
from app.dao.user_dao import *
from werkzeug.security import generate_password_hash, check_password_hash
def regist(request):
    telephone = request.values['telephone']
    password = request.values['passwords']
    passwordconfirm = request.values['confirmpassword']
    # 返回结果变量
    result=None
    if telephone and password and passwordconfirm and password == passwordconfirm:
        sha1_password = generate_password_hash(password, method='pbkdf2:sha1:2000', salt_length=6)
        user = {"telephone": telephone, 'password': sha1_password}
        # 调用addUser()
        result = addUser(user)
    return result

def login(request):
    id = request.json['userid']
    password = request.json['userpassword']
    res=queryUserByTel(id)
    if res!=None:
        # if check_password_hash(res[0]['password'], password):
        if res[0]['password']==password:
            return res[0]['id']
        else:
            return 0
    else:
        return -1


def updatePsw(request,uid):
    password_old=request.values['password_old']
    password_new = request.values['password_confirm']
    res=queryPswById(uid)
    if res!=None:
        if check_password_hash(res[0]['password'], password_old):
            sha1_password = generate_password_hash(password_new, method='pbkdf2:sha1:2000', salt_length=6)
            user={"id":uid,"password":sha1_password}
            result=updatePasswor(user)
            if result==1:
                return 1
            else:
                return -1
            # 修改失败
        else:
            # 原密码输入错误
            return 0
    else:
        return -1

def queryUser(uid):
    result = queryUserById(uid)
    return result






