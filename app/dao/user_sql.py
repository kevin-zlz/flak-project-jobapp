'''
此部分由王文成完成
'''
do_user_sql={
    "addUser":"insert into user(telephone,password,regist_date) values('{0}','{1}',CURDATE())",
    "login":"select * from user where telephone={0}",
    "getPswById":"select password from user where id={0}",
    "queryUserById":"select * from user,user_icon where user.id=user_icon.user_id and `user`.id={0} ORDER BY user_icon.upload_date desc LIMIT 1;",
    "updatePassword":"update USER set PASSWORD='{0}' where id={1}"
}