'''
此部分由王俊垚完成
'''
from app.dao.getposition_dao import *
def put_resume(request,uid):
    user_id=uid
    resume_id=request.values['resume_id']
    position_id=request.values['position_id']
    result = None
    if user_id and resume_id and position_id:
        user={"position_id":position_id,"user_id":user_id,"resume_id":resume_id}
        result = putResume(user)
    return result

def showPut(uid):
    user_id=uid
    result=None
    if user_id:
        result=selectUserPut(user_id)
    return result
