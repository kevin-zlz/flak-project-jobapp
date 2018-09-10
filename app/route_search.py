'''
此部分由王清完成
'''
from flask import Blueprint,request,render_template,json,redirect,url_for
from app.service.position_service import *
from app.utils.util_token import *
import json
search_app = Blueprint('search',__name__)

@checkLogin()
@search_app.route('/')
def index():
    return render_template('user/search.html')

@search_app.route('/searchByCompanyName',methods = ['GET','POST'])
def search_position_by_name():
    method = str(request.method).lower()
    if method == 'get':
        return redirect(url_for(index))
    elif method == 'post':
        return json.dumps(search_position(request))

@search_app.route('/searchprofession',methods = ['GET','POST'])
def search_pprofession():
    method = str(request.method).lower()
    if method == 'get':
        return json.dumps(get_profession_name())
    elif method == 'post':
        return json.dumps(search_id(request))

@search_app.route('/searchallposition',methods = ['GET','POST'])
def search_position():
    method = str(request.method).lower()
    if method == 'get':
        return json.dumps(get_all_position())
    elif method == 'post':
        return json.dumps(search_id(request))

@search_app.route('/querypositiondetile',methods = ['GET','POST'])
def position_detail():
    method = str(request.method).lower()
    if method == 'post':
        return json.dumps(get_position_detile(request))
    elif method == 'get':
        return json.dumps(search_id(request))


@search_app.route('/search',methods = ['GET','POST'])
def search_positions():
    method = str(request.method).lower()
    if method == 'get':
        return json.dumps(get_position_search(request))
    elif method == 'post':
        return json.dumps(search_id(request))

@search_app.route('/searchByJobId',methods = ['GET','POST'])
def search_position_by_id():
    method = str(request.method).lower()
    if method == 'get':
        return redirect(url_for(index))
    elif method == 'post':
        return json.dumps(search_id(request))


@search_app.route('/searchByJobList',methods = ['GET','POST'])
def search_position_by_job():
    method = str(request.method).lower()
    if method == 'get':
        if json.dumps(search_job(request)):
            return json.dumps(search_job(request))
        else:
            return '您查找的岗位不存在'
    elif method == 'post':
        if json.dumps(search_job(request)):
            return json.dumps(search_job(request))
        else:
            return '您查找的岗位不存在'