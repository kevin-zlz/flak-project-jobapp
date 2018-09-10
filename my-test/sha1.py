import hashlib
pwd='123456'

print(pwd.encode())

hash_pwd=hashlib.sha1(pwd.encode()).hexdigest()

pwd2='123456'

print(pwd2.encode())

hash_pwd2=hashlib.sha1(pwd2.encode()).hexdigest()
hash_pwd3=hashlib.sha1(hash_pwd2.encode()).hexdigest()

print(hash_pwd==hash_pwd3)