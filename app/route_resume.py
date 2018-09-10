'''
此部分由翟立志完成
'''
from flask import Blueprint,request,json,session
from app.service.resume_service import addAll,addBaseResume,addJobRes,queryAllRes,updateEduRes,delAllRes
from app.utils.util_token import *
import json
#用参数name和import_name初始化
resume_app = Blueprint('resume',__name__)


@resume_app.route('/')
def index():
    return '这是简历首页'
#
@resume_app.route('/addAllResume', methods=['POST', 'GET'])  #/user/add
@checkLogin(request)
def addAllresume():
    md = str(request.method).lower()
    if md == 'get':
        return 'get页面'
    elif md == 'post':
        uid=session['id']
        res = addAll(request,uid)
        if res >0:
            return json.jsonify({"statuscode": "202"})
        elif res == 0:
            return json.jsonify({"statuscode": "402"})
        else:
            return json.jsonify({"statuscode": "502"})


@resume_app.route('/show') #/user/show
def show():
    return '查看简历'

@resume_app.route('/addBaseResume', methods=['POST', 'GET'])  #/user/add
@checkLogin(request)
def addBaseresume():
    md = str(request.method).lower()
    if md == 'get':
        return 'get页面'
    elif md == 'post':
        uid = session['id']
        res = addBaseResume(request, uid)
        if res > 0:
            return json.jsonify({"statuscode": "202"})
        elif res == 0:
            return json.jsonify({"statuscode": "402"})
        else:
            return json.jsonify({"statuscode": "502"})

@resume_app.route('/addJobRes', methods=['POST', 'GET'])  #/user/add
@checkLogin(request)
def addJobResume():
    md = str(request.method).lower()
    if md == 'get':
        return 'get页面'
    elif md == 'post':
        uid = session['id']
        res = addJobRes(request, uid)
        if res > 0:
            return json.jsonify({"statuscode": "202"})
        elif res == 0:
            return json.jsonify({"statuscode": "402"})
        else:
            return json.jsonify({"statuscode": "502"})


@resume_app.route('/updateEduRes', methods=['POST', 'GET'])  #/user/add
@checkLogin(request)
def updateEduResume():
    md = str(request.method).lower()
    if md == 'get':
        return 'get页面'
    elif md == 'post':
        uid = session['id']
        res = updateEduRes(request, uid)
        if res > 0:
            return json.jsonify({"statuscode": "202"})
        elif res == 0:
            return json.jsonify({"statuscode": "402"})
        else:
            return json.jsonify({"statuscode": "502"})




@resume_app.route('/deleteAllRes', methods=['POST', 'GET'])  #/user/add
@checkLogin(request)
def deleteResume():
    md = str(request.method).lower()
    if md == 'get':
        return 'get页面'
    elif md == 'post':
        res = delAllRes(request)
        if res > 0:
            return json.jsonify({"statuscode": "202"})
        elif res == 0:
            return json.jsonify({"statuscode": "402"})
        else:
            return json.jsonify({"statuscode": "502"})


@resume_app.route('/queryAllRes')  #/user/add
# @checkLogin(request)
def queryAllResume():
    md = str(request.method).lower()
    if md == 'post':
        return 'post页面'
    elif md == 'get':
        uid = request.values['userid']
        token=request.headers['Token'];
        res = queryAllRes(request, uid)
        return json.dumps(res)




