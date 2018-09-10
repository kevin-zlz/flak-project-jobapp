#导入unittest模块
import unittest
from app.dao.user_dao import *


class TestUserDao(unittest.TestCase):
    """Test user_dao.py"""

    def test_addUser(self):  # 这里的参数对应上述列表里的元素，运行的时候会遍历上述列表里的二维列表直到所有元素都调用运行完成
        '''注册用户'''
        user={
            "telephone":"133111111111",
            "password":"999999",
            "passwordconfirm":"999999"
        }

        self.assertEqual(1, addUser(user))
if __name__ == '__main__':
    unittest.main(verbosity=2)