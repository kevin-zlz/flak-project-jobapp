from werkzeug.security import generate_password_hash,check_password_hash
import hashlib

pwd='123456'

hash_pwd=generate_password_hash(pwd, method='pbkdf2:sha1:2000', salt_length=4)

print(hash_pwd)

result=check_password_hash('pbkdf2:sha1:2000$dQIU$edbae7b70b10b7e1f422caf752cd4af12e971649',pwd)

print(result)