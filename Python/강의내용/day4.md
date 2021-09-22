```python
# explicit(명시적) language :파이썬, 자바, ...
        
# 명시적 언어의 한계 : 일부 작업에서는 모든 조건을 다 나열할 수
# 없을 정도로 조건이 많음
# ->
# implicit(묵시적) language 등장 : 머신러닝(인공지능) 언어
# 모든 조건을 나열하는 것이 아닌, 확률(통계)적 접근하여 문제 해결

# ex)
# 이세돌 <-> 알파고
# if 이세돌 1번 위치에 돌을 놓으면:
#     알파고에게 9번 위치
#     if 이세돌 12번 위치에 돌을 놓으면:
#         알파고에게 ...
#     elif
    
    
# elif 2번위치"
# ...
# elif 19*19번 위치:
    

    

# *자동차가 운행중 정지를 해야하는 상황

# if 신호등==빨강:
#     정지
# if 카메라==사람감지 and 카메라==동물감지:
#     정지

#not, and, or

# if 코로나단계==3:
#     집에서 식사 #의사(pseudo) 코드
# if 코로나단계==2:
#     편의점에서 식사
# if 코로나단계==1:
#     식당에서 식사

# if 조건식:
#     처리구문1
#     처리구문2
#     처리구문3
#     ...
#     처리구문n

# x=3
# if x==3:    
#     print("3과 같다")
    
```


```python
x=3
if x==3:
    pass #나중에 코드 구현
else:
    print("다름")
#파이썬에서만 존재하는 문법, 조건 만족시 아무 작업도 수행하지 않고 다음 줄로 이동
#조건을 만족했을때 처리해야할 구문이 아직 정해지지 않은 상황
```


```python
#print("안녕하세요")
```


```python
# 주머니에 3000원 이상 있으면 택시를 이용하겠다. 없으면 도보
주머니의돈=5000

# if 주머니의돈>=3000: # if True:
#     택시이용    
# else:
#     도보이용

#else는 if없이 독립적으로 사용될 수 없다
```


```python
주머니의돈=5000

if 주머니의돈>=3000: # if True:
    print("택시이용")
    print("지하철이용")
else:
    print("도보이용")
```

    택시이용
    지하철이용
    


```python
돈=2000
카드=True
```


```python
if 돈>=3000 or 카드:
    print("택시")
else:
    print("도보")
```

    택시
    


```python

```




    True




```python
# if 신호등2번째칸==빨강:
#     if 신호등1번째칸==화살표:
#         좌회전
#     else:
#         정지
```


```python
x=5
if x>=0:
    print("0 이상")
    if x==5:
        print("5")
    if x==10:
        print("10")
```

    0 이상
    5
    


```python
#바람직하지 않은 코드
성별='여성'
if 성별=='여성':
    print("여성")
if 성별=='남성':
    print("남성")
```

    여성
    


```python
#바람직한 코드
성별='여성'
if 성별=='여성':
    print("여성")
else:
    print("남성")
```

    여성
    


```python
점수=95
if 점수>=90:
    print("A")
elif 점수>=80:
    print("B")
elif 점수>=70:
    print("C")
elif 점수>=60:
    print("D")
elif 점수<60:
    print("F")
```

    A
    


```python
score=int(input("점수 입력:"))
if score>=80:
    print("합격")
else:
    print("불합격")
```

    점수 입력:90
    합격
    


```python
# 참수행문장(변수=값) if 조건문 else 거짓수행문장(값)
```


```python
x=1
# if x==0:
#     y=x
# else:
#     y=0

#y=x if x==0 else 0
#x와 0이 같다면 x값을 y에게, 같지 않다면 0을 y에게 대입해라
```


```python
print(y)
```

    0
    


```python
if False:   # False:
    print("참")
```


```python
if None: #None은 거짓
    print("출력1")
else:
    print("출력2")
```

    출력2
    


```python
if 0.00000000001: #0은 거짓
    print("출력")
```

    출력
    


```python
# if 0:
# else :    
```


```python
if "hi": #참
    print("하이")
```

    하이
    


```python
if " ": #참
    print("하이")
```

    하이
    


```python
if "": #거짓
    print("하이")
```


```python
print(not 0)
```

    True
    


```python
if not 0:
    print("참")
```

    참
    


```python
if not None:
    print("참")
```

    참
    


```python
if not '':
    print("참")
```

    참
    


```python
#x=[] 비어있는 리스트(튜플, 셋, 딕셔너리)는 거짓
x=[1]
```


```python
if x: #[]:거짓
    print("참")
```

    참
    


```python
x=[]
if not len(x):
    print("비었다")
```

    비었다
    


```python
if not x:
    print("비었다")
```

    비었다
    


```python
x=5
```


```python
#x가 0 이상 10 미만이면 작은수를 출력
if x>=0:
    if x<10:
        print("작은수")

if x>=0 and x<10:
    print("작은수")
```

    작은수
    작은수
    


```python
if 0<=x and x<10: #r개발<->python개발
    print("작은수")
#if 0<=x<x 와 같은 코드는 r에서 에러 발생
```

    작은수
    


```python
# if 조건:
#     수행문장
# elif 조건:
#     수행문장
# ...
# elif 조건:
#     수행문장
# else:
#     수행문장

#에러발생
# if
# else
# elif
```


      File "<ipython-input-73-66311d8c4010>", line 6
        elif 조건:
        ^
    SyntaxError: invalid syntax
    



```python
# a in 리스트(튜플,문자열,set, 딕셔너리)
# a not in 리스트(튜플,문자열,set, 딕셔너리)
```


```python
if 1 in [1,2,3]:
    print("들어있습니다")
```

    들어있습니다
    


```python
if 1 in (1,2,3):
    print("들어있습니다")
```

    들어있습니다
    


```python
if "1" in ("1","2","3"):
    print("들어있습니다")
```

    들어있습니다
    


```python
if 1 in {1,2,3}:
    print("들어있습니다")
```

    들어있습니다
    


```python
x={1:'a',2:'b'}
x
```




    {1: 'a', 2: 'b'}




```python
if 3 in x:
    print("존재합니다")
```


```python
s=70
```


```python
#s에 저장된 값이 60 이상이면 합격 아니면 불합격을 출력하시오
if s>= 60 :
    print("합격")
else :
    print("불합격")

```

    합격
    


```python
s=50
```


```python
#print("합격") if s>=60 else print("불합격")
msg="합격" if s>=60 else "불합격"
```


```python
print(msg)
```

    불합격
    


```python
ani="dog"
cat="cat"
dog="dog"
```


```python
if ani==dog:
    print("같다")
```

    같다
    


```python
#A if 조건 else B
res=dog if ani==dog else cat
print(res)
```

    dog
    


```python
#if elif else구조
#A if 조건 else B if 조건 else C
```


```python
ani="cat"
cat="cat"
dog="dog"
```


```python
res=dog if ani==dog else cat if ani==cat else "cow"
# 만약에 ani==dog면 dog이 저장, 그렇지 않고 
# 만약에 ani==cat면 cat이 저장, 그렇지 않으면 cow가 저장

# if ani==dog:
#     res=dog
# elif ani==cat:
#     res=cat
# else
#     res="cow"
```


```python
print(res)
```

    cat
    


```python
# 반복문(for)
# 재귀호출(DFS) -> 재귀적 문제 해결
```


```python
# 50명 고객
# 50! 경로(경우)의 수를 모두 비교(pruning) -> 가장 짧은 경로 1개 추출
# -> 솔루션(알고리즘) 없음 (NP 문제)
# => AI를 이용한 확률적 접근 -> 근사해
```


```python
# for 변수 in range(횟수):
#     반복문장
```


```python
sum=0
```


```python
# for i in range(10): #range(10) 범위: 0~9까지의 값이 차례대로 i저장
#     print(i)

# i=1
# for _ in range(10):
#     print(i)

# x,_,y=1,2,3 #2는 무시
# print(x)
# print(y)
```

    1
    3
    


```python
#1~10
sum=0
for i in range(1,11): #0~9
    sum+=i
#sum+=10
print(sum)
```

    55
    


```python
for i in range(0,10,2):
    print(i)
```

    0
    2
    4
    6
    8
    


```python
# for i in range(10,0,-1):
#     print(i)
    
for i in reversed(range(10)):
    print(i)   
```

    9
    8
    7
    6
    5
    4
    3
    2
    1
    0
    


```python
c=int(input("반복 횟수 입력:"))
for  i in range(c):
    print("반복")
```

    반복 횟수 입력:3
    반복
    반복
    반복
    


```python
for i in range(10,20,3):
    print(i)
```

    10
    13
    16
    19
    


```python
for i in range(5):
    print(i, end="") #end=""  end옵션 :붙여서 출력시 연결문자
```

    01234


```python
#for문에 sequence객체를 작성하여 반복처리
#sequence객체? 리스트, 튜플, 문자열 등
#set, dict는 시퀀스객체로 볼 수 없지만, 최근 버전에서는  for문으로
#처리가 되도록 업데이트 됨(사용하지 않는걸 권장)
#[1,2,3]
```


```python
for i in [10,20,30]: #for 변수 in 시퀀스객체:
    print(i)        
```

    10
    20
    30
    


```python
# for i in {10,20,30}: #for 변수 in 시퀀스객체:
#     print(i)
# for i in {1:10,2:20,3:30}: #for 변수 in 시퀀스객체:
#     print(i) #키
```

    1
    2
    3
    


```python
for f in ('a','b','c'):
    print(f)
```

    a
    b
    c
    


```python
for s in "hello":
    print(s)
```

    h
    e
    l
    l
    o
    


```python
i=0 #초기값
while i<100: #i 변수 값이 101보다 작다는 조건을 만족하는 동안 반복
    i+=1
    print(i)    
```

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
    100
    


```python
#파이썬 모듈(module, 관련 함수,변수,클래스의 집합, 일반적으로 파이썬 파일)
#패키지(라이브러리) : 관련 모듈의 모임, 폴더, 패키지도 포함

#라이브러리: 파이썬 표준 라이브러리(모듈, 패키지 모두 포함)
#파이썬 표준 라이브러리 설치
```


```python
#import 파이썬 모듈 불러오기 -> math 모듈을 사용하기 위해 메모리에 적재
import math
#import 모듈1, 모듈2, 모듈3,...
```


```python
# math.함수()
# math.변수
# math.클래스()
```


```python
math.pi
math.sqrt(4)
```




    2.0




```python
math.sqrt(4)
```




    2.0




```python
import math as mt #축약형
```


```python
mt.sqrt(4)
```




    2.0




```python
#from 모듈명 import 함수(변수, 클래스)명
#from math import sqrt as s
```


```python
#s(4)
```




    2.0




```python
#import math
```


```python
import math
```


```python
#math 사용완료
```


```python
del math #메모리에서 math모듈이 제거됨
```


```python

```


```python
import random
```


```python
for i in range(6):
    print(random.randint(1,45)) #1~3 범위에서 난수 1개 발생
#모듈이름.함수(변수,클래스)명
```

    26
    8
    32
    11
    37
    37
    


```python
i=0
while i != 5:
    i=random.randint(1,6)
    print(i)
```

    2
    5
    


```python
#random.choice([1,2,3]) #1,2,3 중에서 1개를 임의로 선택
#random.choice(시퀀스객체)
random.choice("hello")
```




    'h'




```python
#random.choice([1,2,3]) #복원 추출

s=set()
# s.add(1)
# s.add(1)
# s.add(2)
# print(len(s))

while len(s)!=6:
    r=random.choice(range(1,46))
    s.add(r)
#     if len(s)==6:
#         print(s)
print(s)

#random.sample(시퀀스객체, 추출데이터개수) #비복원 추출

#데이터 전체를 셔플(shuffle,  뒤섞음)
#random.sample([1,2,3], 2)

```

    {1, 35, 6, 9, 19, 26}
    


```python
#이번 주 로또 예상 당첨 번호 : 5셋 
#1~45
for i in range(5):
    print(random.sample(range(1,46), 6))
```

    [15, 12, 22, 14, 35, 23]
    [7, 30, 3, 44, 19, 25]
    [4, 13, 6, 26, 7, 14]
    [41, 26, 27, 30, 17, 6]
    [38, 30, 20, 11, 36, 19]
    


```python
cond=1
#while True: #조건식의 결과가 항상 참이므로 계속(무한) 반복
#while 999: #0이 아니면 모두 참
#while "Hello":
while "":
    print("1")
    if cond==10:
        break
    cond=cond+1
    
```


```python
c=0
while c<10:
    c+=1   
    if c%2==0:
        continue #계속 반복해라 -> 반복문의 시작위치로 이동
    print(c)
```

    1
    


```python
# for i in range(10):    
#     pass

# while True:
#     pass
```


```python

```


```python

```


```python

```
