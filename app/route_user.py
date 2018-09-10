'''
此部分由王文成完成
'''
from flask import Blueprint, request, make_response, session, render_template, redirect, json
from datetime import timedelta, datetime
from app.utils.util_token import *
from app.service.user_service import *
import json

# 用参数name和import_name初始化
user_app = Blueprint('user', __name__)


@user_app.route('/')
def index():
    return 'user index'


@user_app.route('/updatePsw', methods=['POST', 'GET'])  # /user/add
@checkLogin()
def updatePassword():
    md = str(request.method).lower()
    if md == 'get':
        return render_template('user/regist.html')
    elif md == 'post':
        uid=session['id']
        res = updatePsw(request,uid)
        if res == 0:
            return json.jsonify({"statuscode": "502"})
        elif res == 1:
            return json.jsonify({"statuscode": "202"})
        else:
            return json.jsonify({"statuscode": "402"})


@user_app.route('/showUserByid')  # /user/show
@checkLogin()
def showUser():
    md = str(request.method).lower()
    if md == 'post':
        return render_template('user/regist.html')
    elif md == 'get':
        uid=session['id']
        res = queryUser(uid)
        if res!= None:
            return json.jsonify(res)
        else:
            return json.jsonify({"statuscode": "402"})




@user_app.route('/regist', methods=['POST', 'GET'])  # /user/show
def do_regist():
    md = str(request.method).lower()
    if md == 'get':
        return render_template('user/regist.html')
    elif md == 'post':
        res=regist(request)
        if res == 0:
            return json.jsonify({"statuscode": "402"})
        elif res==1:
            # 注册成功，签发token
            token = jwtEncoding({'telephone': request.values['telephone']})
            return json.jsonify({"statuscode": "202"}), 200, {"token": token}
        else:
            return json.jsonify({"statuscode": "502"})



# 1. methods=['POST', 'GET']
@user_app.route('/login', methods=['POST', 'GET'])  # /user/show
def do_login():
    md = str(request.method).lower()
    # db_password = 'pbkdf2:sha1:2000$1dOH$fcd0f17a1ac7f82d454d83b540a4efd2d49814eb'
    # print(len(db_password))
    if md == 'get':
        res = login(request)
        if res>0:
            token = jwtEncoding({'telephone': request.json['telephone']})
            return json.dumps({"userid": "201","token":token.decode()})
        elif res==0:
            # 重定向，是get方式
            return json.dumps({"statuscode": "401"})
        else:

            return json.dumps({"statuscode": "402"})

    elif md == 'post':
        res=login(request)
        res = login(request)
        if res > 0:
            token = jwtEncoding({'telephone': request.json['userid']})
            return json.dumps({"statuscode": "201", "token": token.decode()})
        elif res == 0:
            # 重定向，是get方式
            return json.dumps({"statuscode": "401"})
        else:

            return json.dumps({"statuscode": "402"})


@user_app.route('/search')  # /user/show
def search():
    return 'search'


@user_app.route('/logout')  # /user/show
def logout():
    session.clear()
    return redirect('/')

