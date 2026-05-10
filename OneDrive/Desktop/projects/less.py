#type conversion
# birth_year=input('Birth year: ')
# print(type(birth_year))
# age= 2026-int(birth_year)
# print(type(age))
# print(age)

# weight=input('weight: ')
# kilo=int(weight)*0.45
# print(kilo)



#strings
# course='''
# Hi john,
# here is tye first email to you.

# thank you,
# the support team

# '''
# course='Python for beginners'
# another=course[:]
# print(another)

#ex
# name='Jennifer'
# print(name[1:-1])

#formatted strings
# first='John'
# last='Smith'
# message=first+' [' + last + '] is a coder'
# msg=f'{first} [{last}] is a coder'
# print(msg)

#string method

# course='Python for beginners'
# print(len(course))
# print(course.upper())
# print(course)
# print(course.lower())
# print(course.find('for'))
# print(course.replace('beginners','Absolute Beginners'))
# print('python' in course)



#conditional

# a=int(input('Enter the number: '))
# if a>0:
#     print('A is positive')
# else:
#     print('Not positive')    

# if a>0:
#     print(f'{a} is positive')
# elif a>0 and a<99:
#     print(f'{a} within 100')
# else:
#     print(f'{a} negative number')      
# 
# 

# print(f'{a} is positive ') if a>0 else print(f'{a} is negative')  
 
# if a>0:
#     if a%2==0:
#         print(f'{a} is even and positive')
#     else:
#         print(f'{a} is odd positive')    
# elif a==0:
#     print(f'{a} is equal to 0')
# else:
#     print(f'{a} is negative')    


# n=int(input())
# for x in range(10):
#     print(x)

# for x in range(-10,0):
#     print(x)


# for x in range(5):
#     print(x)
# else:
#     print('done!')    


# n=int(input())
# cnt=0
# for i in range(1,n+1):
#     cnt=cnt+i
#     print(cnt)    

# n=int(input())
# cnt=0
# for i in range(1,n+1):
#     cnt=cnt+i
# print(cnt)


# n=int(input())
# cnt=0
# for i in range(1,11):
#     cnt=cnt+1
#     mul=cnt*n
#     print(f'{n}x{cnt}={mul}')


# n=int(input())
# for x in range(1,n+1):
#     print(x**3)


# numbers = [12, 75, 150, 180, 145, 525, 50]
# for x in numbers:
#     if x>500:
#         break
#     if x>150:
#         continue
#     if x%5==0:
#         print(x)
    

# list1 = [10, 20, 10, 30, 10, 40, 50]
# target = 10
# cnt=0
# for x in list1:
#     if x==target:
#         cnt=cnt+1
# print(f'10 appears {cnt} times')
    
# my_list = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
# odd=[]
# for x in range(len(my_list)):
#     if  x%2==1:
#         odd.append(my_list[x])
# print(odd)

# for i in range(1, len(my_list) ,2):
#     print(my_list[i],end=" ")
 
 




# list1=[10,20,30,40,50]
# list1.reverse()
# print(list1)

# for x in reversed(list1):
#     print(x)
    
# k=len(list1)-1
# for i in range(k,-1,-1):
#     print(l


# lang="python"
# print(lang[::-1])

# lang="Loops are fun!"
# vowels="aeiou"
# v=0
# c=0
# for char in lang.lower():
#     if char.isalpha():
#         if char in vowels:
#             v+=1
#         else:
#             c+=1
# print(v)
# print(c)
# 

# n=input()
# c=0
# for i in range(len(n)):
#     c=c+1
# print(c)                    
        
# n=int(input())
# k=str(n)
# print(k[::-1])



# n=int(input())
# max=0
# min=9
# while n>0:
#     digit=n%10
#     if digit>max:
#         max=digit
#     if digit<min:
#         min=digit
#     n=n//10    
# print(f'largest digit: {max}')
# print(f'Smallest digit: {min}')   
# 


# n=int(input())
# temp=n
# rev=0
# while n>0:
#     digit=n%10
#     rev=rev*10+digit
#     n=n//10
# if rev==temp:
#     print('Yes')
# else:
#     print('No')    


# def hello(greeting,name='You'):
#     return '{},{}.'.format(greeting,name)

# # print(hello())

# # print(hello().upper())

# print(hello('Hello'))


# def student(*args,**kwargs):
#     print(args)
#     print(kwargs)
# # course=['Math','Art']
# # info={'name':'john','age':22} 

# # student('math','art',name='john',age=22)
# # student(course,info)


# month_days=[0,31,28,31,30,31,30,31,31,30,31,30,31]

# def is_leap(year):
#     return year%4==0 and (year%100!=0 or year%400==0)


# def days_in_month(year,months):
#     if not 1<=months<=12:
#         return 'Invalid Month'
    
#     if months==2 and is_leap(year):
#         return 29
#     return month_days[months]



# def addition(num):
#     if num:
#         return num+addition(num)
#     else:
#         return 0
# res=addition(10)
# print(res)    


import mod as m
from mod import find_index as f,test

course=['History','Math','Physics','compsci']

index=m.f(course,'compsci')
print(index)
print(test)







