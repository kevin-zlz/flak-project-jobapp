import time

import datetime

now_time=time.time()
time2_str = datetime.datetime.fromtimestamp(now_time)

tt=datetime.datetime.utcnow()


print(int(time.mktime(tt.timetuple())))