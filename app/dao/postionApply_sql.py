'''
此部分由王俊垚完成
'''
do_apply_sql={
    "put_resume_to_position":"insert into postion_apply(time,position_id,user_id,resume_id)values(current_timestamp(),{0},{1},{2})",
    "select_user_put":"select distinct(position.name) from resume_basic  inner join position inner join postion_apply on resume_basic.user_id=postion_apply.user_id and postion_apply.position_id=position.id where resume_basic.user_id={0} "
}