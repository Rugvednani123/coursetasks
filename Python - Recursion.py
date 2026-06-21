#Implement a recursive function in Python to calculate the factorial of a given integer.
'''def fact(n):
    if n==0:
        return 1
    else :
        return n* fact(n-1)
res = fact(5)
print(res)
        '''
#Write a recursive function to determine if a string is a palindrome.
'''
def palindrome(s):
    if len(s) <= 1:
        return True

    if s[0] != s[-1]:
        return False

    return palindrome(s[1:-1])

text = input("Enter a string or number: ")

if palindrome(text):
    print(text, "is a Palindrome")
else:
    print(text, "is not a Palindrome")

'''

#Create a recursive function to calculate the sum of all numbers in a list.        
'''def sum(num,i):
    if len(num) == i:
        return 0
    else:
        return int(num[i]) + sum(num,i+1)
res = sum([1,2,3,4],0)
print(res)'''
        
#Write a recursive function to generate the Fibonacci sequence up to the nth term.
'''
def fib(n):
    if n == 0:
        return 0
    elif n == 1:
        return 1
    else:
        return fib(n-1) + fib(n-2)
n = int(input("enter the number:"))
for i in range(n):
    print(fib(i),end = " ")
'''        

#Implement a recursive binary search algorithm to find an element in a sorted list.

'''
def binary_search(nums, target, low, high):
    if low > high:
        return -1

    mid = (low + high) // 2

    if nums[mid] == target:
        return mid
    elif target < nums[mid]:
        return binary_search(nums, target, low, mid - 1)
    else:
        return binary_search(nums, target, mid + 1, high)

nums = [10, 20, 30, 40, 50, 60, 70]
target = 50

result = binary_search(nums, target, 0, len(nums) - 1)

if result != -1:
    print(target, "found at index", result)
else:
    print(target, "not found")'''
    

#Use recursion to solve the Tower of Hanoi problem, where you need to move disks from one peg to another subject to certain constraints.
'''
def tower_of_hanoi(n, source, auxiliary, destination):
    if n == 1:
        print("Move disk 1 from", source, "to", destination)
        return

    tower_of_hanoi(n - 1, source, destination, auxiliary)

    print("Move disk", n, "from", source, "to", destination)

    tower_of_hanoi(n - 1, auxiliary, source, destination)

n = int(input("Enter number of disks: "))

tower_of_hanoi(n, 'A', 'B', 'C')
'''
#Compare the time and space complexity of an iterative solution versus a recursive solution for one of the problems above, 
#discussing the trade-offs and scenarios where one approach might be preferred over the other.
'''
def factorial(n):
    result = 1

    for i in range(1, n + 1):
        result *= i

    return result
'''



