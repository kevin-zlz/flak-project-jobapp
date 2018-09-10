'''
此部分由王清完成
'''
from app.dao.position_dao import *

def search_position(request):

    comanyname = request.values['companyname']

    infomation = get_job_by_name(comanyname)

    return infomation

def get_profession_name():
    infomation = get_professionname()
    return infomation

def get_all_position():
    infomation = getAllposition()
    for i in range(len(infomation)):
        infomation[i]['publish_date']=str(infomation[i]['publish_date'])
    return infomation

def get_position_search(request):
    search = request.values['search']
    infomation = getAllpositionBySearch(search)
    return infomation


def get_position_detile(request):
    pid = request.json['pid']
    position = get_job_by_id(pid)
    position[0]['publish_date']=str(position[0]['publish_date'])
    position[0]['company']=get_company_by_id(position[0]['company_id'])
    return position


def search_id(request):

    id = request.values['id']

    infomation = get_job_by_id(id)

    return infomation

def search_job(request):

    name = request.values['job_name']
    city = request.values['job_city']
    industry = request.values['job_industry']
    infomation = get_job_by_job(name,city,industry)
    return infomation