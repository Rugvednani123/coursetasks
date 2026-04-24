#day-1
'''
num = int(input("Enter a number:"))
if num % 2 ==0:
    print(num," is a even number")
else:
    print(num," is a odd number")
'''
'''
num = int(input("Enter the number:"))
if num % 5 == 0 and num % 10 !=0:
    print(num)
else:
    print("condition not satisfied")    
'''
'''
num1 = int(input("Enter a number:"))
num2 = int(input("Enter a number:"))
if num1>num2:
    print(num1)
elif num2>num1:
    print(num2)    
else:
    print("Numbers are same provide another numbers")
'''
'''
num = int(input("Enter the number:"))
if num % 2==0 and num%3 == 0 and num%6 == 0:
    print("satisfied")
else:
    print("not satisfied")    
'''
'''
Name = input("Enter the name:")
age = int(input("Enter your age:"))
if age >=18:
    print(Name,"Eligible for vote")
elif age <18 and age>0:
    print(Name,"not eligible for voting")
else:
    print("Invalid age")
'''
'''
maths = int(input("Enter the marks:"))
physics = int(input("Enter the marks:"))
chemistry = int(input("Enter the marks:"))
if maths < 35 and physics < 35 and chemistry <35:
    print("pass")
else:
    print("fail")
'''
'''
maths = int(input("Enter the marks:"))
physics = int(input("Enter the marks:"))
chemistry = int(input("Enter the marks:"))
if maths > 35 or physics > 35 or chemistry > 35:
    print("pass")
else:
    print("fail")                                             
'''
'''    
maths = int(input("Enter the marks:"))
physics = int(input("Enter the marks:"))
chemistry = int(input("Enter the marks:"))
if maths > 34 and physics > 34 or chemistry > 34:
    print("pass")
else:
    print("fail")
'''
'''
num1 = int(input("Enter the number:"))
num2 = int(input("Enter the number:"))
num3 = int(input("Enter the number:"))
if num1 > num2 :
    if num1 > num3:
        print("Biggest is",num1)
elif num2 > num3:
    print("Biggest is",num2)
else:
    print("Biggest is",num3)    
'''
'''
import math
num = int(input("Enter the number:"))
sqrt = int(math.sqrt(num))
if sqrt * sqrt == num:
    print("Prfect square")
else:
    print("Not a perfect square")        
'''
'''
num = int(input("Enter the number:"))
i = 1
while i*i <=num:
    if i * i == num:
        print("Perfect square")
        break
    i +=1
else:
    print("Not a perfect sqaure")
    '''
'''    
import math    
m_p = int(input("Enter the number of people:"))
cars = math.ceil(m_p/5)
print(cars)
'''
'''
num1 = int(input("Enter first number: "))
num2 = int(input("Enter second number: "))
num3 = int(input("Enter third number: "))

if (num1 > num2 and num1 < num3) or (num1 > num3 and num1 < num2):
    print("Second biggest:", num1)
elif (num2 > num1 and num2 < num3) or (num2 > num3 and num2 < num1):
    print("Second biggest:", num2)
else:
    print("Second biggest:", num3)
'''
Year = int(input("enter the year:"))
if Year%4==0:
    print(Year,"is leap year")
else:
    print("not a leap year")    