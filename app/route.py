'''
此部分由翟立志完成
'''
from app.app import app

from flask import redirect, url_for, request,render_template

from .route_user import user_app
from .route_resume import resume_app
from .route_search import search_app
from .route_sendResume import sendResume_app
'''
# 1. 导入request对象
# 2. request method
    get: 是一种提交数据的方式，这种方式显著的特点是不安全但效率高，提交数据简单
    post: 是一种提交数据的方式，这种方式显著的特点是安全但效率不高，提交数据复杂
'''

# 渲染引擎
@app.route('/')
def index():
    return render_template('index.html')
app.register_blueprint(user_app, url_prefix='/user')
app.register_blueprint(resume_app, url_prefix='/resume')
app.register_blueprint(search_app,url_prefix='/search')
app.register_blueprint(sendResume_app, url_prefix='/sendResume')

# success 200
# not found 404
# error 500
@app.errorhandler(404)
def miss(e):
    return '404'


@app.errorhandler(500)
def error(e):
    return '500'
