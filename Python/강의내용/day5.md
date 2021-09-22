```python
a = [1, 1, 1, 2, 2, 3, 3, 3, 4, 4, 5]
print(list(set(a)))
```

    [1, 2, 3, 4, 5]
    


```python
i=0
hap=0
while i<1000:
    i+=1
    if i%21==0: #if i%3==0 and i%7==0 :
        hap+=i
print(hap)
```

    23688
    


```python
i=0
while i<5:
    i+=1
    print("*"*i)
```

    *
    **
    ***
    ****
    *****
    


```python
# 시간복잡도 : 단순하게 표현하자면...실행해야 할 프로그램 소스
# 코드 문장의 수
# O(빅오) - 표기법 :시간복잡도 표기 방법
    
# O 표기법
# <---빠름                                                                 느림--->
# O(1) > O(log n) > O(n) > O(n log n) > O(n제곱) > O(n세제곱)> O(2의 n제곱) > O(n!)


```


```python
#무한루프는 while True: 로 표현
# i=0
# while True:
#     print(i)
#     i+=1
#     if i==100:
#         break

for i in range(10000):
    print(i)
    if i==99:
        break

```

    0
    1
    2
    3
    4
    5
    6
    7
    8
    9
    10
    11
    12
    13
    14
    15
    16
    17
    18
    19
    20
    21
    22
    23
    24
    25
    26
    27
    28
    29
    30
    31
    32
    33
    34
    35
    36
    37
    38
    39
    40
    41
    42
    43
    44
    45
    46
    47
    48
    49
    50
    51
    52
    53
    54
    55
    56
    57
    58
    59
    60
    61
    62
    63
    64
    65
    66
    67
    68
    69
    70
    71
    72
    73
    74
    75
    76
    77
    78
    79
    80
    81
    82
    83
    84
    85
    86
    87
    88
    89
    90
    91
    92
    93
    94
    95
    96
    97
    98
    99
    


```python
for i in range(10):
    if i % 2 !=0:
        continue
    print(i)
    #i가 짝수인 경우에만 출력, continue문
```

    0
    2
    4
    6
    8
    


```python
# for i in range(3):   #i=0, 1, 2
#     for j in range(2): #j=0, 1
#         문장1   #3*2번
#         문장2  #3*2번
#     문장3
#     문장4
# 문장5
# 문장6
```


```python
# ***
# ***
# ***
# ***
#이중 for문 활용

for i in range(4):
    for j in range(3):
        print("*", end="")
    print()
```

    ***
    ***
    ***
    ***
    


```python

```


```python
a=[]
a.append(10)
a
```




    [10]




```python
a.extend([20,30])
a
```




    [10, 20, 30]




```python
a.insert(1, 15)
```


```python
a
```




    [10, 15, 20, 30]




```python
a.insert(len(a), 40)
```


```python
a
```




    [10, 15, 20, 30, 40]




```python
# 20과 30 사이에 한 번에 25, 27을 추가
#[25,27]

#[10, 15, 20, 30, 40] => [10, 15, 20, 25, 27, 30, 40]
```


```python
# a.insert(3, [20,27])
# a
```




    [10, 15, 20, [20, 27], 30, 40]




```python
a
```




    [10, 15, 20, 30, 40]




```python
a[:3]+[25,27]+a[3:]
```




    [10, 15, 20, 25, 27, 30, 40]




```python
#시작번호와 끝번호를 동일하게 하면 여러개의 데이터를 추가할 수 있음
a=[10, 15, 20, 30, 40]
```


```python
a[3:3]=[25,27]
```


```python
a
```




    [10, 15, 20, 25, 27, 30, 40]




```python
a = [10,15,20,30,40]
a.insert(len(a)-2,[25,27])
a
```




    [10, 15, 20, [25, 27], 30, 40]




```python
# pop:마지막 요소, 특정 번호의 데이터 삭제
# remove:데이터 값을 찾아서 삭제
```


```python
a=[4,5,6]
#a.pop()
#a.pop(1)

del a[1]
```


```python
a
```




    [4, 6]




```python

```


```python
a=[4,5,6]
a.remove(5)
```


```python
a
```




    [4, 6]




```python
a=[4,5,6,4]
#a.index(6)
a.count(4)
```




    2




```python
a=[4,5,6,4]
a.sort(reverse=True) #a에는 정렬된 결과가 저장됨
#a.reverse()
```


```python
a
```




    [6, 5, 4, 4]




```python
sorted(a)

```




    [4, 4, 5, 6]




```python
a
```




    [4, 5, 6, 4]




```python

```


```python
a=[4,5,6,4]
#a.clear()
del a[:]
a
```




    []




```python
a=[100,200]
#[100,200,300,400]

#a.extend([300,400])
a[len(a):]=[300,400]

a
```




    [100, 200, 300, 400]




```python
a

if len(a): # len(a) != 0
    print("비어있지 않음")
else:
    print("비어있음")

```

    비어있지 않음
    


```python
if a: #a에 데이터가 있으므로 참
    print("비어있지 않음")
```

    비어있지 않음
    


```python
if not a : 
    print("비어있음")
```


```python
a=[3,1,2,4,5]
for idx, v in enumerate(a, start=1):
#     print(idx) #index번호
#     print(v)
    print(idx,v)    
    #print(idx+1,v)
```

    1 3
    2 1
    3 2
    4 4
    5 5
    


```python
a=[3,-2,5,1,-6]
```


```python
#a리스트에서 양수만 출력
```


```python
# for idx, v in enumerate(a):
#     if v > 0:
#         print(v)
a=[3,-2,5,1,-6]
for i in a:
    if i<0:
        continue
    else:
        print(i, end=" ")

```

    3 5 1 


```python
a=[3,-2,5,1,-6]
```


```python
for i in a:
    if i > 0:
        continue
    else:
        a.remove(i)
print(a)

```

    [3, 5, 1]
    


```python
a=[3,7,1,5,2]
```


```python
#a리스트에서 최소/최대값
#small=a[0]
big=a[0]
for i in a:
    if i > big:
        big=i
print(big)        
```

    7
    


```python
a
```




    [3, 7, 1, 5, 2]




```python
a.sort()
a
```




    [1, 2, 3, 5, 7]




```python
a[0] # sort(reverse=True)   a[len(a)-1]
```




    1




```python
min(a)
max(a)
```




    7




```python
sum(a)
```




    18




```python
#list comprehension(리스트 내포(표현식)): 리스트 내부에 for, if문 등을 사용 
#-> 리스트 생성

#리스트 표현식 작성법
# [식 for 변수 in 리스트]
x=[x for x in range(10)]
x
```




    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]




```python
# li=[]
# for i in range(10):  
#     li.append(i)    

#[x for x in range(10)]
list((x for x in range(10))) #제너라이터
```




    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]




```python
[x+1 for x in range(10)]
```




    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]




```python
#리스트 내포를 이용하여 10~20까지 값을 갖는 리스트를 생성
```


```python
mylist = [x for x in range(10,21)]
#변수x = [ 리스트 ]
mylist
```




    [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]




```python
# a=[1,2,3]
# a[2]
```


```python
#[0, 5, 10, 15, 20, 25]
#리스트 내포를 사용하여 생성

#[x for x in range(0,26,5)]

[x*5 for x in range(0,6)]

```




    [0, 5, 10, 15, 20, 25]




```python
#[식 for 변수 리스트 if 조건식]
[i for i in range(10) if i%2 == 0]
"""
1) range(10)    =>  0,1,2,...,9
2) if i%2 == 0  =>  짝수만 뽑아냄
3) 뽑아낸 짝수가 i에 전달되어 리스트가 생성 됨
"""
```




    [0, 2, 4, 6, 8]




```python
#0~9까지 숫자 중에서 홀수에 3을 곱한 리스트를 생성
#[1,3,5,7,9]
#출력 : [3,9,15,21,27]
[i*2+1 for i in range(10) if i%2 !=0]
```




    [3, 7, 11, 15, 19]




```python
a=['a','b','c','d','e']
b=['A','B','C','D','E']
```


```python
#[i+j for i in a for j in b]

# mylist=[]
# for i in a:
#     for j in b:
#         mylist.append(i+j)        
# mylist

#2단~9단 결과를 출력
[2, 4, 6,...,81]
```




    ['aA',
     'aB',
     'aC',
     'aD',
     'aE',
     'bA',
     'bB',
     'bC',
     'bD',
     'bE',
     'cA',
     'cB',
     'cC',
     'cD',
     'cE',
     'dA',
     'dB',
     'dC',
     'dD',
     'dE',
     'eA',
     'eB',
     'eC',
     'eD',
     'eE']




```python
mylist=[]
for i in range(2,10): #단
    for j in range(1,10):
        mylist.append(i*j)        
```


```python
print(mylist)
```

    [2, 4, 6, 8, 10, 12, 14, 16, 18, 3, 6, 9, 12, 15, 18, 21, 24, 27, 4, 8, 12, 16, 20, 24, 28, 32, 36, 5, 10, 15, 20, 25, 30, 35, 40, 45, 6, 12, 18, 24, 30, 36, 42, 48, 54, 7, 14, 21, 28, 35, 42, 49, 56, 63, 8, 16, 24, 32, 40, 48, 56, 64, 72, 9, 18, 27, 36, 45, 54, 63, 72, 81]
    


```python
print([i*j for i in range(2,10) 
           for j in range(1,10)])
```

    [2, 4, 6, 8, 10, 12, 14, 16, 18, 3, 6, 9, 12, 15, 18, 21, 24, 27, 4, 8, 12, 16, 20, 24, 28, 32, 36, 5, 10, 15, 20, 25, 30, 35, 40, 45, 6, 12, 18, 24, 30, 36, 42, 48, 54, 7, 14, 21, 28, 35, 42, 49, 56, 63, 8, 16, 24, 32, 40, 48, 56, 64, 72, 9, 18, 27, 36, 45, 54, 63, 72, 81]
    


```python
[i for i in range(30) if i%2==0]
```




    [0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28]




```python
[i for i in range(30) if i%2==0 and i%3==0]
```




    [0, 6, 12, 18, 24]




```python
[i for i in range(30) if i%2==0 if i%3==0]
```




    [0, 6, 12, 18, 24]




```python
#리스트 내포에서 else도 사용 가능, 단, elif는 불가
# 0~9까지 수를 리스트에 저장하고자 하는데,
# 짝수는 'even',  홀수는 'odd'

#['even','odd','even','odd','even','odd','even','odd','even','odd']
```


```python
['even' if i%2==0 else 'odd' for i in range(10)]
```




    ['even', 'odd', 'even', 'odd', 'even', 'odd', 'even', 'odd', 'even', 'odd']




```python
#['zero', 'odd', 'even', 'odd', 'even', 'odd', 'even', 'odd', 'even', 'odd']

#['zero' if i==0 else 'even' if i%2==0 else 'odd' for i in range(10)]
```




    ['zero', 'odd', 'even', 'odd', 'even', 'odd', 'even', 'odd', 'even', 'odd']




```python
 
```
