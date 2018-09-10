'''
此部分由王清完成
'''
do_user_sql={
    "getprofession":"SELECT id,name FROM profession",
    "getprofessionbyid":"SELECT * FROM profession where id='{0}'",
    "getjobbycomanyname":"SELECT company.name, position.name, salary, education, years_working,job_nature,attraction FROM company  INNER JOIN position on position.company_id = company.id WHERE company.name = '{0}'",
    "getpositionbyid":"SELECT * FROM position WHERE id ='{0}'",
    "getcompanybypid":"select * from company where company.id='{0}'",
    "getallposition": "SELECT * FROM position_info",
    "getallpositionbysearch": "SELECT * FROM position_info where company_name like '%{0}%' or name like '%{0}%'",
    "getpositionbymore":"SELECT position.name,position.salary,position.education,city.name,profession.name,position.description,position.publish_date,position.years_working,position.job_nature,position.attraction,position.tags FROM position INNER JOIN city INNER JOIN company INNER JOIN profession ON position.city_id = city.id and position.company_id = company.id and company.profession_id = profession.id WHERE position.name LIKE '%{0}%' AND city.name LIKE '%{1}%' and profession.name LIKE '%{2}%'"
}