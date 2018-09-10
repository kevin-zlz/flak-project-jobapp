'''
此部分由王俊垚完成
'''
from flask import Blueprint, request, json,session
from app.service.positionApply_service import *
from app.utils.util_token import *

sendResume_app = Blueprint('send', __name__)


@sendResume_app.route('/queryAllPosition', methods=['POST', 'GET'])
@checkLogin(request)
def do_showPosition():
    md = str(request.method).lower()
    if md == 'get':
        return '======'
    elif md == 'post':
        uid=session['id']
        print(uid)
        res=showPut(request,uid)
        return json.jsonify(res)


@sendResume_app.route('/putResume', methods=['POST', 'GET'])
@checkLogin(request)
def do_sendResume():
    md = str(request.method).lower()
    if md == 'get':
        return '======'
    elif md == 'post':
        uid = session['id']
        res=put_resume(uid)
        if res > 0:
            return json.jsonify({"statuscode": "202"})
        elif res == 0:
            return json.jsonify({"statuscode": "402"})
        else:
            return json.jsonify({"statuscode": "502"})