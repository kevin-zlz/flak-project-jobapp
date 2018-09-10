'''
此部分由翟立志完成
'''
do_resume_sql={
    "addResumeBase":"insert into resume_basic(resume_title,name,sex,birth_date,advantage,high_education,work_years,position_now,user_id)"
                    " VALUES('{0}','{1}',{2},'{3}','{4}','{5}',{6},{7},{8})",
    "addResumeEdu":"insert into resume_education(school_name,major,education,begin_date,end_date,resume_basic_id) "
                   "values('{0}','{1}','{2}','{3}','{4}',{5});",
    "addResumeJob":"INSERT into resume_jobs(company_name,position_name,begin_date,end_date,department,work_content,profession,resume_basic_id) "
                   "values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}',{7});",
    "updateResumeEdu":"Update resume_education set school_name='{0}',major='{1}',education='{2}',begin_date='{3}',end_date='{4}' where resume_education.resume_basic_id={5}",
    # "queryAllresumeByuid":"select * from resume_basic b,resume_education e,resume_jobs j "
    #                       "where b.id=e.resume_basic_id and b.id=j.resume_basic_id and b.user_id={0};",
    "queryresumeByuid":"select `user`.id,`user`.city,`user`.email,resume_basic.id as resume_id,resume_basic.name,resume_basic.work_years,resume_basic.resume_title from resume_basic"
                       " INNER JOIN user on resume_basic.user_id=`user`.id where `user`.telephone='{0}';",
    "queryResumeJob":"select * from resume_education where resume_basic_id='{0}'",
    "queryResumeEdu":"select * from resume_jobs where resume_basic_id='{0}'",
    "delEduResume":"delete from resume_education where resume_basic_id={0}",
    "delJobsResume":"delete from resume_jobs where resume_basic_id={0}",
    "delBaseResume":"DELETE from resume_basic where id={0}"
}