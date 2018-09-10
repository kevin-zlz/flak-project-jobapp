
#第一个函数
new_list=[]
def search(mylist):
    for item in mylist:
        if type(item)==type([]):
            search(item)
        else:
            new_list.append(item)
            print(item)


mylist=[1,2,3,[4,5,6,[7,8,9]]]  # mylist[3][3][2]

search(mylist)

print(new_list)


# 第二个函数

#
# def fib(n):
#     if n==1 or n==2:
#         return 1
#     return fib(n-1)+fib(n-2)
#
#
# '''
#     fib(5)->5+3
# '''
#
#
#
#
#
# res=fib(6)
#
# print(res)


# 1 1 2 3 5 8 13

a,b=1,1
for i in range(1,7):
    a,b=b,a+b
    # 1,1=1,2 =>1,2
    #a=2 b=3
    #a=3 b=5

print(b)