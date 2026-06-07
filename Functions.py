'''
def greet(name):
    print("HELLO",name)
greet("RUGVED")    
'''
'''
def add(a,b):
    return a+b
print(add(2,4))
'''
'''

def calculate_area(length,width):
    area = length*width
    return area
print(calculate_area(5,10))

'''
'''
def is_even(num):
    if num % 2 == 0:
        return True
    else:
        return False
print(is_even(16))
'''

def get_max(number):
    number.sort()
    return number[-1]
number = [1,5,8,2,4,6]
print(get_max(number))
