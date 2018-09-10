'''
此部分由翟立志完成
'''
from app.dao.resume_dao import *
def addAll(request,uid):
    title=request.values['resume_title']
    name = request.values['name']
    sex = request.values['sex']
    birth_date = request.values['birth_date']
    advantage = request.values['advantage']
    high_edu=request.values['high_education']
    work_year=request.values['work_years']
    position_now = request.values['position_now']
    school_name=request.values['school_name']
    major = request.values['major']
    education = request.values['education']
    pos_begin_date = request.values['pos_begin_date']
    pos_end_date = request.values['pos_end_date']
    company_name = request.values['company_name']
    position_name = request.values['position_name']
    job_begin_date=request.values['job_begin_date']
    job_end_date=request.values['job_end_date']
    department=request.values['department']
    work_content=request.values['work_content']
    profession=request.values['profession']
    resume={"resume_title":title,"name":name,"sex":sex,"birth_date":birth_date
        ,"advantage":advantage,"high_education":high_edu,"work_years":work_year,"position_now":position_now,"uid":uid,
            "school_name":school_name,"major":major,"education":education,"pos_begin_date":pos_begin_date,"pos_end_date":pos_end_date,
            "company_name":company_name,"position_name":position_name,"job_begin_date":job_begin_date,"job_end_date":job_end_date,
            "department":department,"work_content":work_content,"profession":profession}
    res=addAllResume(resume)
    return res

def addBaseResume(request, uid):
    title=request.values['resume_title']
    name = request.values['name']
    sex = request.values['sex']
    birth_date = request.values['birth_date']
    advantage = request.values['advantage']
    high_edu=request.values['high_education']
    work_year=request.values['work_years']
    position_now = request.values['position_now']
    resume={"resume_title":title,"name":name,"sex":sex,"birth_date":birth_date
        ,"advantage":advantage,"high_education":high_edu,"work_years":work_year,"position_now":position_now,"uid":uid}
    res=addBaseRes(resume)
    return res

def addJobRes(request, uid):
    company_name = request.values['company_name']
    position_name = request.values['position_name']
    begin_date = request.values['job_begin_date']
    end_date = request.values['job_end_date']
    department = request.values['department']
    work_content = request.values['work_content']
    profession = request.values['profession']
    resume_basic_id=request.values['resume_basic_id']
    resume = {"uid": uid,"company_name": company_name, "position_name": position_name, "begin_date": begin_date,
              "end_date": end_date,"department": department, "work_content": work_content, "profession": profession,"resume_basic_id":resume_basic_id}
    res = addJobres(resume)
    return res


def queryAllRes(request, uid):

    res=queryResBase(uid)
    for i in range(len(res)):
        res[i]["jobs"]=queryResJob(res[i]['resume_id'])
        # print(  res[i]["jobs"]["begin_date"])
        for j in range(len(res[i]["jobs"])):
            res[i]["jobs"][j]["begin_date"]=str( res[i]["jobs"][j]["begin_date"])
            res[i]["jobs"][j]["end_date"]=str( res[i]["jobs"][j]["end_date"])
        res[i]["edus"] = queryResEdu(res[i]['resume_id'])
        for k in range(len(res[i]["edus"])):
            res[i]["edus"][k]["begin_date"] = str(res[i]["edus"][k]["begin_date"])
            res[i]["edus"][k]["end_date"] = str(res[i]["edus"][k]["end_date"])
    return res

def updateEduRes(request, uid):
    school_name = request.values['school_name']
    major = request.values['major']
    education = request.values['education']
    begin_date = request.values['begin_date']
    end_date = request.values['end_date']
    resume_base_id=request.values['resume_base_id']
    resume = {"uid": uid,
              "resume_base_id":resume_base_id,
              "school_name":school_name,
              "major":major,
              "education":education,
              "begin_date":begin_date,
              "end_date":end_date
    }
    res = updateEducationRes(resume)
    return res

def delAllRes(request):

    resume = {"resume_basic_id":request.values['resume_basic_id']}
    res = delAllResume(resume)
    return res



