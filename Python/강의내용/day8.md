```python

```


```python
a = set()
b = set(range(1, 5000))

for i in range(1, 5000):
    for j in str(i): #"1", "2", ..., "4999"
        i = i + int(j)

    if i < 5000:
        a.add(i)

b = b - a

print(sum(b))
```

    1227365
    


```python
for j in "1234":
    print(j)
```

    1
    2
    3
    4
    


```python

```


```python

```


```python
print(1,2,3)
```

    1 2 3
    


```python
x=[1,2,3]
print(x)
print(*x) # unpacking
print(*[1,2,3])# unpacking
```

    [1, 2, 3]
    1 2 3
    1 2 3
    


```python
def printNum(*args):
    for i in args:
        print(i)
    
printNum(1,2,3)   #가변 인수 

printNum(*[1,2,3])
printNum(*[1,2,3,4,5])
```

    1
    2
    3
    1
    2
    3
    1
    2
    3
    4
    5
    


```python
def perInfo(n, a, addr):
    print(n,a,addr)
```


```python
perInfo(a=30, addr="서울", n="김")
```


```python

```


```python
#패킹과 언패킹
#패킹:여러개의 데이터를 묶어서 변수 1개에 저장
#언패킹:변수 1개에 저장된 데이터를 풀어서 여러 개의 변수에 나누어 저장
```


```python
num=(10,20,30,40,50)
```


```python
a,b,_,d,e=num
```


```python
#_ 기호는 해당 자리의 데이터를 버리겠다(무시하겠다)
```




    30




```python
num
```




    (10, 20, 30, 40, 50)




```python
x=num[0]
y=num[1]
z=num[2:]
```


```python
x,y,*z=num #나머지 데이터 전체를 리스트에 담아 저장
```


```python
z
```




    [30, 40, 50]




```python
*x,y,z=num
```


```python
x
y
z
```




    50




```python
x,*y,z=num
```


```python
y
```




    [20, 30, 40]




```python
def dString(year, month, day):
    return str(year)+"년"+str(month)+"월"+str(day)+"일"
```


```python
date=(2021,7,14)
dString(date[0], date[1], date[2])
```




    '2021년7월14일'




```python
dString(*date)
```




    '2021년7월14일'




```python
dString(*[2021,7,14])
```




    '2021년7월14일'




```python
def test(*args): #패킹 매개변수
    return sum(args)/len(args)
    
print(test(5,2))
print(test(1,2,3))
```

    3.5
    2.0
    


```python
num
test(*num)
```




    30.0




```python
#람다함수, 리스트내포
# lambda : 함수를 정의할 때 사용하는 예약어(def와 동일), 간단한 기능의 함수 정의
# def를 사용할 수 없는 곳에 쓰임

#def : 복잡한 기능을 갖는 함수 정의

```


```python
def sum(a,b):
    return a+b
```


```python
res=sum(10,20)
print(res)
```

    30
    


```python
#람다 함수(함수명이 없는 경우도 있음, 익명함수)
sum2=lambda a,b:a+b
```


```python
sum2(10,20)
```




    30




```python
#lambda 매개변수(들):식
```


```python
(lambda x:x+1)(5)
```




    6




```python
(lambda x,y:x+y)(5,10)
```




    15




```python
#(lambda x,y:x+y)(5)

(lambda x,y=10:x+y)(5) #버전에 따라 오류가 발생할 수도 있음
```




    15




```python
y=10
(lambda x:x+y)(5)
```




    15




```python
#람다함수를 map함수의 인수로 전달하여 수행
# def add(a):
#     return a+1
x=[1,2,3]

# print(list(map(add,x)))

print(list(map(lambda a:a+1, x)))

```

    [2, 3, 4]
    


```python
# def add(a):
#     for i in range(len(a)):
#         a[i] += 1
#     return a
http://localhost:8888/notebooks/day8.ipynb#
# x = [1, 2, 3]
# print(add(x))


# x_add = []
# [x_add.append(add(i)) for i in x]
# x_add

# for i in range(len(x)):
#     x[i]=add(x[i])
# print(x)
```




    [2, 3, 4]




```python
#lambda 매개변수 : 식
#lambda 매개변수 : 조건식
x=[1,2,3,4,5]
```


```python
#출력 결과 : [1,'2',3,'4',5] 
#짝수는 문자로 출력
```


```python
x = [1,2,3,4,5]

for i in range(len(x)):
    if x[i] % 2 == 0:
        x[i] = str(x[i])
print(x)

```

    [1, '2', 3, '4', 5]
    


```python
x = [1,2,3,4,5]
[str(i) if i % 2 == 0 else i for i in x]
```




    [1, '2', 3, '4', 5]




```python
x = [1,2,3,4,5]
#람다식에 if문을 쓰는 경우에는 콜론기호를 사용하지 않음
#조건식  => 식(참) if 조건식 else 식(거짓)
list(map(lambda x: str(x) if x % 2 == 0 else x , x))
```




    [1, '2', 3, '4', 5]




```python
#조건식  => 식1 if 조건식1 else 식2 if 조건식2 else 식3
x = [1,2,3,4,5]
# 1 -> '1'
# 2 -> 2.0
#나머지는 그대로 출력  : ['1', 2.0, 3, 4, 5]

list(map(lambda x: str(x) if x ==1 else float(x) if x==2 else x,x))
```




    ['1', 2.0, 3, 4, 5]




```python
x=[10,20,0,5,10]
y=[1,0,20,15,5]
```


```python
#출력결과 : [10,0,0,75,50]
list(map(lambda a, b: a * b, x, y))

#벡터의 내적 : 135
```




    [10, 0, 0, 75, 50]




```python
sum(1,2)
```




    3




```python
#절대값
abs(1)
abs(-1)
```




    1




```python
#any, all함수
#all:모두 참 -> 참
all([10,20,-5])
all([10,0,-5])
all("hello")
#print(all(["", "hello","hi"])) #거짓

#any :하나 이상 참 -> 참
any([10,0,-5])
```




    True




```python
chr(122)
#chr(유니코드), utf-8, 16, 32
#유니코드 : 전 세계의 모든 문자를 표현하기 위한 표준코드
#참고:아스키코드는 0~127까지
```




    'z'




```python
ord('각')
ord('a')
ord('하')
```




    54616




```python
divmod(9, 5)
#몫, 나머지
```




    (1, 4)




```python
#enumerate 함수 : 열거형 함수, 리스트(튜플,문자열)의
#자료를 입력받아 (index,자료) 형식으로 리턴
#일반적으로 for와 함께 사용
a=['a','b','c']
a="hello"
for i in enumerate(a):
    print(i[0], i[1])

for i, data in enumerate(a):
    print(i, data)
```

    0 h
    1 e
    2 l
    3 l
    4 o
    0 h
    1 e
    2 l
    3 l
    4 o
    


```python

#eval()
#연산이 가능한 문자열을 전달받아 연산 수행, 결과 도출
eval("1+2")

eval("abs(-3)")
eval("divmod(9,4)")
```




    (2, 1)




```python
#filter()
#조건에 만족하는 자료들만 추출
#filter(함수, 리스트(튜플...)):함수에 정의한 조건을
#만족하는 자료들만 필터링됨

def myFunc(data):
    return data>3 and data<7
```


```python
data=[8,1,5,2,6]
list(filter(myFunc,data))
```




    [5, 6]




```python
data=[8,1,5,2,6]
#[5, 6]이 출력되도록 람다함수로 정의해보세요
list(filter(lambda x: x>3 and x<7,data))
```




    [5, 6]




```python
list(filter(lambda a: a if 3<a<7 else 0, data))
list(filter(lambda data:data>3 and data<7, data))

```




    [5, 6]




```python
data=[-1,3,2,-5,4]
def pos(data):
    return data > 0
    #완성
list(filter(pos, data))
#pos함수 호출(filter)
```




    [3, 2, 4]




```python
data=[-1,3,2,-5,4]
#양수만 출력
#[3,2,4]
```


```python

```


```python
#map함수를 활용하여 주어진 리스트의 값을 2배 하시오
#[1,2,3] -> *2 => [2,4,6]

# 1)def함수 구현, map함수
# 2)람다함수 구현, map함수
# 3)단순 for문 사용
x = [1,2,3]

# for i in range(len(x)):
#     x[i] = x[i] * 2
# print(x)

# print(list(map(lambda x : x*2,x)))

def mul(x):
    y = []
    for i in x:
        y.append(int(i)*2)
    return y
print(list(map(int,mul(x))))

```

    [2, 4, 6]
    


```python
max([2,1,3])
max("test가")
min("test가")
```




    'e'




```python
#pow():제곱
pow(3,2)

#round() : 반올림
round(3.1)
round(3.141592)
round(3.141592, 3)
```




    3.142




```python
"Hi".lower()
"Hi".upper()
```




    'HI'




```python
#zip():자료들을 묶는 함수
list(zip([1,2], [3,4]))
```




    [(1, 3), (2, 4)]




```python
list(zip("hi", "hello"))
```




    [('h', 'h'), ('i', 'e')]




```python
list(zip([1,2], [3,4], [5,6,7]))
```




    [(1, 3, 5), (2, 4, 6)]




```python
#reduce(): 누적 함수
```


```python
def myFunc(a,b):
    return a+b
```


```python
from functools import reduce 
x=[10,20,30,40,50]
reduce(myFunc,x)  #누적합
#파이썬 3. 대 버전에서는 지원이 안됨 -> import해야함

#내장함수 : import를 하지 않아도 사용 가능한 함수
```




    150




```python
#파일압축: run-length기법, 허프만 압축방식, ...
    
#run-length기법:bmp파일

#압축
# aaaaaaaabbbbbccc #16글자
# a8b5c3 #6글자

# #해제
# a8b5c3
# aaaaaaaabbbbbccc

#한계점
#abcdefedbacde
#a1b1c1...e1   
    
```


```python
text = 'abbbaabb'

result = text[0]  # 'a1b3a2b'
count  = 0        #1

for i in text:
    if i == result[-1]:   # b != a
        count += 1
    else:
        result += str(count) + i
        count = 1
result += str(count)

print(result)

```

    a1b3a2b2
    


```python

```


```python

```
