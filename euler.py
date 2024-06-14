# Problem 1
sum = 0
for i in range(1000):
    if (i % 3 == 0) or (i % 5 == 0):
        sum += i

print(sum)

# Problem 2

num1 = 1
num2 = 2
sum = 0

while (num2 <= 4000000):
    ans = num1 + num2
    if (num2 % 2 == 0):
        sum += num2
    num1 = num2
    num2 = ans
print(sum)

# Problem 3


    