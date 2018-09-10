import jwt
from datetime import datetime,timedelta
import hashlib

# # 鉴权
#
# datetimeInt = datetime.now() + timedelta(seconds=180)
#
SECRECT_KEY = '123456'
#
# user={"userid":"0002"}
# option = {
#         'iss':'jobapp.com', #token的签发者
#         'exp':datetimeInt, #过期时间
#         'aud': 'webkit',   #token的接收者，这里指定为浏览器
#         'user_id': '001'   #放入用户信息，唯一标识，解析后可以使用该消息
#     }
#
# token = jwt.encode(option,SECRECT_KEY, 'HS256')
# print(token)
# print(token.decode())

token='eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJqb2JhcHAuY29tIiwiZXhwIjoxNTM0MzQyNzI2LCJhdWQiOiJ3ZWJraXQiLCJ1c2VyX2lkIjoiMDAxIn0.srQF0TslNCsqGfNtuxwpihazhA_l-8QzEqOkT9DPHGU'

decoded = jwt.decode(token, SECRECT_KEY,audience='webkit', algorithms=['HS256'])

print(decoded['user_id'])


