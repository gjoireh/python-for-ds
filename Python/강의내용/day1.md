```python

```


```python
print("반갑습니다")
```

    반갑습니다
    


```python
print("반갑습니다")
```

    반갑습니다
    


```python
x=1
```


```python
print(x+2)
```

    3
    


```python
# 구글계정생성
# kaggle.com -> 회원가입
# 인스타그램 회원가입
# 카페가입


```


```python
if 10 in [1,2,3,4,5]:
    print("있어")
else:
    print("없어")
```

    없어
    


```python

```


```python
#작업 : 1~5까지의 합을 구하시오. -> 15, 주석문(설명문)

# sum=0 #변수(variable)
# sum=1+2+3+4+5

# sum=1
# sum=sum+2 #연산자 우선순위
# sum=sum+3 
# sum=sum+4 
# sum=sum+5 
#print(sum) #15

# sum=0
# for i in range(1,10001):    #range(시작값, 끝값(5)+1)
#     sum=sum+i    
# print(sum)  


#print(10000*(10000+1)/2)
```

    50005000
    


```python
print("hello world")
#함수 실행(호출)
```

    hello world
    


```python
print("hello world")
print("123")
```

    hello world
    123
    


```python
print("hello world");print("123");print("123")
#세미콜론으로 여러 문장을 구분할 수 있다
```

    hello world
    123
    123
    


```python
#파이썬은 들여쓰기가 문법, 기본 4칸
a=1
if a>0 : #만약에 a가 1보다 크다면 아래 문장으로 이동
    if a < 3: #만약에 a가 3보다 작다면 아래 문장으로 이동
        print("0보다 커요")
        print("3보다 작습니다")
    print("a는 자연수입니다")        
```

    0보다 커요
    3보다 작습니다
    a는 자연수입니다
    


```python
a=10
if a>0 : #만약에 a가 10보다 크다면 아래 문장으로 이동
    if a < 3: #만약에 a가 3보다 작다면 아래 문장으로 이동
        print("0보다 커요")
        print("3보다 작습니다")
    print("a는 자연수입니다") 
```

    a는 자연수입니다
    


```python
a=-2
if a>0 : #만약에 a가 10보다 크다면 아래 문장으로 이동
    if a < 3: #만약에 a가 3보다 작다면 아래 문장으로 이동
        print("0보다 커요")
        print("3보다 작습니다")
print("무조건 실행되는 문장") 
```

    무조건 실행되는 문장
    


```python
print("helloworld") #정상
print('hello world') #정상
print("hello","world")#정상

```

    helloworld
    hello world
    hello world
    helloworld
    helloworld
    


```python
x=111
x=4.1E5 #4.1 * 10의 5승 => 실수형
x=4.1e-5#4.1 * 10의 -5승 => 실수형
print(x)
```

    4.1e-05
    


```python
x=0o17 #8진수 17을 의미  0,1,2,...,7,10,11,...,17,20,...
print(x) #10진수로 변환되어 출력

#8의1승*1 + 8의0승*7 = 15
```

    15
    


```python
x=0xA   #16진수 0,1,2,3...,9,A,B,C,D,E,F,10,11,...,1F,20,..FF,100
print(x)
```

    10
    


```python
print(4+2)
print(4-2)


print(5/2) #파이썬 3.x 대 버전에서는 실수형(2.5)
#파이썬 2.x 대 버전에서는 정수형(2)
```

    6
    2
    2.5
    


```python
print(5//2) #정수
print(5.0//2) #실수
```

    2
    2.0
    


```python
5.5//2
```




    2.0




```python
4//2.0
```




    2.0




```python
2 ** 3 # => 2의 3승
```




    8




```python
2 ** 100
```




    1267650600228229401496703205376




```python
print(5//3) #몫
print(5%3) #나머지
```

    1
    2
    


```python
#데이터를 정수로 변환
print(int(5//2.0))
#문자열 -> 정수로 변환
int(5.5)
```

    2
    




    5




```python
print('5')
print('5'+'1')
print(int(3.14))
print(int("5")) #숫자(정수)로된 문자를 숫자로 
#print(int("5.1")) #에러발생
print(float("5.1")+5)#숫자(실수)로된 문자를 숫자로 
```

    5
    51
    3
    5
    10.1
    


```python
#//, %
divmod(5,3) #몫과 나머지 구하는 함수
#5를 3으로 나눈 몫과 나머지

#함수명() : 함수
#(,) : 튜플(자료형 중의 하나)

m,n=divmod(5,3)
```


```python
print(m)
print(n)
```

    1
    2
    


```python
res=divmod(5,3)
print(res)
print(res[0])
print(res[1])
print(res[2])
```

    (1, 2)
    1
    2
    


    ---------------------------------------------------------------------------

    IndexError                                Traceback (most recent call last)

    <ipython-input-109-c5d21bb955fe> in <module>
          3 print(res[0])
          4 print(res[1])
    ----> 5 print(res[2])
    

    IndexError: tuple index out of range



```python
print(type(5))
#3.14
print(type(5.1))

```

    <class 'int'>
    <class 'float'>
    


```python
float(5) #강제로 실수형으로 변경
type(float(5))
float(1+3)
type(float('3.14'))
#type('3.14') #문자형
```




    float




```python
(1+2)*3
#연산자 우선순위가 헷갈리면? 괄호로 묶어라
```


```python
2
```


```python

```


```python
5//3
5%3
```




    2




```python
x,y,z=1,2,3
print(z)
```

    3
    


```python
a=b=1
# b=1
# a=b
```


```python
x=2
y=3
```


```python
x,y=y,x

# t=y
# y=x
# x=t
#x와 y값이 서로 교환
print(x) #3
print(y) #2
```

    3
    2
    


```python
del x #메모리에서 x를 삭제
```


```python
print(x)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-135-fc17d851ef81> in <module>
    ----> 1 print(x)
    

    NameError: name 'x' is not defined



```python
a=3
```


```python
print(a)
```

    3
    


```python
b=None #값이 없음을 의미,  다른 언어에서는  Null로 표현
#None : 값이 들어가 있지 않은 변수를 선언
```


```python
a=3
#a=a+1, a=a-1
#a+=1, a-=1

#축약형이 존재

#a=a+1과  a+=1 같음
```


```python
x=-3
print(+x)
```

    -3
    


```python
#변수 입력
#x=3

i=int(input("첫번째 숫자를 입력한 후 엔터를 치세요 : "))
j=int(input("두번째 숫자를 입력한 후 엔터를 치세요 : "))
```

    첫번째 숫자를 입력한 후 엔터를 치세요 : 5
    두번째 숫자를 입력한 후 엔터를 치세요 : 3
    


```python
#print(i)
#print(j)
print(i+j) #'5'+'3' => '53'

# 8 출력
```

    8
    


```python
x=input("단어를 2개 입력 : ") #x="hi hello"
res=x.split("ab") #문자열을 공백으로 분리
#문자열에 대해 어떤 연산을 수행하고자 하는 경우에는
#문자열.함수이름()

print(res)
#print(b)
```

    단어를 2개 입력 : habhabhab
    ['h', 'h', 'h', '']
    


```python
"hello"
'hello'
"""
hi
hello
"""

"""hi hello"""

```


```python
x="""
hi
hello
"""
```


```python
print(x)
```

    
    hi
    hello
    
    


```python
x="""Life
is
too
short
You
need
Python"""
```


```python
print(x)
```

    Life
    is
    too
    short
    You
    need
    Python
    


```python
x="Python's"
```


```python
print(x)
```

    Python's
    


```python
x="Python's"
print(x)
```


      File "<ipython-input-182-40628141c121>", line 1
        x='Python's'
                  ^
    SyntaxError: invalid syntax
    



```python
he='"Python is easy." he says'
print(he)
```

    "Python is easy." he says
    


```python
s="Life\n is too\n short"
print(s)
```

    Life
     is too
     short
    


```python
s="life"
print("-"*50)
print(s*5)
print("-"*50)
print("ㅎ"*100)
```

    --------------------------------------------------
    lifelifelifelifelife
    --------------------------------------------------
    ㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎ
    


```python
s="life"
print(len(s))
s[2]
s[-1] #맨 뒤에서부터 첫번째 문자
s[0]
```

    4
    




    'l'




```python
s="Life is too short"
print(s[5])
print(s[5:]) #5번  index~ 마지막까지
print(s[:3]) #맨 앞에서부터 3-1번 index 까지
print(s[:])

print(s[5:-3])
```

    i
    is too short
    Lif
    Life is too short
    is too sh
    


```python
s="saience" #a -> c

#s[1]='c'

s[:1]+'c'+s[2:]

```




    'science'




```python

```
