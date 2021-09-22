```python
x="머신러닝은 인공지능의 한 분류입니다" #내가 작성한 숙제
y="런닝머신은 운동 기구중의 하나입니다" #다른 사람이 작성한 숙제
xi=[]
yi=[]
for i in range(len(x)-1):
    xi.append(x[i:i+2])
for j in range(len(y)-1):
    yi.append(y[j:j+2])

```


```python
yi
```




    ['런닝',
     '닝머',
     '머신',
     '신은',
     '은 ',
     ' 운',
     '운동',
     '동 ',
     ' 기',
     '기구',
     '구중',
     '중의',
     '의 ',
     ' 하',
     '하나',
     '나입',
     '입니',
     '니다']




```python

```


```python

```


```python
print(len(set.intersection(set(xi),set(yi)))/len(yi)*100)
```

    27.77777777777778
    


```python

```


```python
high=[5,8,3,1,5,6,9,9,2,2,4]

for i in range(10):
    high=sorted(high) #[2, 2, 3, 3, 4, 5, 5, 6, 8, 8, 8]
    print(high)       #        high[-1]=high[-1]-1,   high[0]=high[0]+1
    #print(high[0], high[-1])
    high[0]+=high[0]    
    high[-1]-=high[-1]
    #print(high[0], high[-1])

```

    [1, 2, 2, 3, 4, 5, 5, 6, 8, 9, 9]
    [0, 2, 2, 2, 3, 4, 5, 5, 6, 8, 9]
    [0, 0, 2, 2, 2, 3, 4, 5, 5, 6, 8]
    [0, 0, 0, 2, 2, 2, 3, 4, 5, 5, 6]
    [0, 0, 0, 0, 2, 2, 2, 3, 4, 5, 5]
    [0, 0, 0, 0, 0, 2, 2, 2, 3, 4, 5]
    [0, 0, 0, 0, 0, 0, 2, 2, 2, 3, 4]
    [0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 3]
    [0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2]
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2]
    


```python

```


```python

print(max(high)-min(high))
```


```python

```


```python
x = "머신러닝은 인공지능의 한 분류입니다"
y = "런닝머신은 운동 기구중의 하나입니다"
x1 = []
y1 = []

```


```python
x1 = []
y1 = []
for i in range(len(x)-1):
    x1.append(x[i:i+2])
for i in range(len(y)-1):
    y1.append(y[i:i+2])
```


```python
print(x1)
print(len(x1))
```

    ['머신', '신러', '러닝', '닝은', '은 ', ' 인', '인공', '공지', '지능', '능의', '의 ', ' 한', '한 ', ' 분', '분류', '류입', '입니', '니다']
    18
    


```python
count = 0
for i in range(len(x1)):
    for j in range(len(y1)):
        if x1[i] == y1[j]:
            count += 1
```


```python
print(count)
```

    5
    


```python
print(count / len(x1))
```

    0.2777777777777778
    


```python
len(x1)
```




    19




```python
# for 영화제목 in ['본영화1', '본영화2',...]:
#     if 영화제목 in ['다른사람이본영화1', ...]:
        
```


```python

```


```python
함수는 반복적인 코드를 함수로 정의함으로서 다양한 장점이 있음(실수 줄임, 코드 짧아짐, 재사용, 개발시간 단축,..)
```

    hello
    


```python
#함수 실행(호출) : 함수명()
#함수 정의 :
# def 함수명() : 
#     수행할 코드1
#     수행할 코드2
#     ...
#     수행할 코드n
```


```python
#함수 정의 
def hello(): #   def getValue():
    print("hello world") 
    #return 1
```


```python
#함수 실행(호출)
hello() #hello함수를 호출한 뒤, hello함수에서 전달받은 값을 화면에 출력
#None: 전달받은게 없다

```

    hello world
    


```python
hello2()
```

    hello world
    


```python
def hello2(): 
    print("hello world") 
```


```python

```


```python
def hello3():
    #아직 구현할 코드를 작성하지 못한 상태  
    pass #일단 넘어가(나중에 작성할게)
```


```python

```


```python
def 함수명():
    #코드
```


```python
함수명()
```


```python
print()
print("안녕") #인수(argument)
print("안녕","하세요") 
print("안녕","하세요", "방가") 
print("안녕","하세요", "방가", "워요") 
```

    
    안녕
    안녕 하세요
    안녕 하세요 방가
    안녕 하세요 방가 워요
    


```python
def print(msg): #매개변수(parameter)
    #
    #
    #
```


```python

```


```python
def add(x,y): #매개변수, (가)인수
    print(x+y)
```


```python
add(1,2) #(실)인수
```

    3
    


```python
def calc(x,y, op): #매개변수, (가)인수
    if(op=="add"):
        print(x+y)       
```


```python
calc(1,2, "add")
```

    3
    


```python
help(print)
#help(함수명)
```

    Help on built-in function print in module builtins:
    
    print(...)
        print(value, ..., sep=' ', end='\n', file=sys.stdout, flush=False)
        
        Prints the values to a stream, or to sys.stdout by default.
        Optional keyword arguments:
        file:  a file-like object (stream); defaults to the current sys.stdout.
        sep:   string inserted between values, default a space.
        end:   string appended after the last value, default a newline.
        flush: whether to forcibly flush the stream.
    
    


```python
print()
```


```python
help(calc)
```

    Help on function calc in module __main__:
    
    calc(x, y, op)
    
    


```python
def add(x,y):
    return x+y
```


```python
print(add(10,20))
```

    30
    


```python
def calc(x, y, op):
    # 구현
```


      File "<ipython-input-88-0804e800f7c8>", line 1
        def calc(x, y, op):
                           ^
    SyntaxError: unexpected EOF while parsing
    



```python
print(calc(1,2,"+")) #3
print(calc(1,2,"-")) #-1
print(calc(3,2,"*")) #6
print(calc(10,2,"/")) #5
```


```python

```


```python
calc(1,2,"+")
```


```python

```


```python


```


```python

```


```python
eval("3+2")
```




    5




```python
def calc(a,b,operater):
    return eval(str(a) + operater + str(b))
    #return eval(str(a) + operater + str(b)) #  eval("1+2")
    #return

print(calc(1,2,"+"))
```

    3
    


```python

```


```python

```


```python
def 함수명():
    #함수 수행 구문
    #return 생략  (함수를 호출한 곳으로 되돌아가시오)
```


```python
함수명()
```


```python

```


```python
def test(x,y):
    return x+y
```


```python
res=test(y=2, x=5)
```


```python
print(res)
```

    7
    


```python
#인수의 개수가 정해지지 않았을때? 함수호출 가능?

#인수의 개수가 변할 수 있는 경우에 함수 정의
def add(*args):
    sum=0
    for i in args:
        sum+=i 
    return sum
```


```python
add(1,10,100) 
```




    111




```python
def func1(op, *numbers):
    if op == "multiply":
        result = 1
        for number in numbers:
            result *= number
    else:
        result = 0
        for number in numbers:
            result += number        
    return result
```


```python
res=func1("multiply", 10,20,30)
print(res) #10*20*30 => 6000 결과 출력
res=func1("sum", 5,10,15,20,30)
print(res) # 80 출력
```

    6000
    80
    


```python

```


```python

```


```python

```


```python

```


```python

```


```python

```


```python
def addsub(x,y):  #3,4
    return x+y, x-y
```


```python
res1, res2=addsub(3,4)
print(res1)
print(res2)

# res=addsub(3,4)
# #print(type(res))
# print(res[0])
# print(res[1])
```

    7
    -1
    


```python

```


```python

```


```python

```


```python
#def intro(n, age, female=True): #매개변수 초기값 설정

def intro(n, age, female=True): #매개변수 초기값 설정
    print("이름:",  n)
    print("나이:", age)
    if female:
        print("여성")
    else:
        print("남성")
```


```python
intro("홍길동", 25)
#intro("홍길동", 25, False)
```

    이름: 홍길동
    나이: 25
    여성
    


```python

```


```python
a=5
b=1

def test(a): #함수 정의, 매개변수는 함수 내에서만 사용하는 변수
    a=a+10

test(b) #함수 호출

print(a)
```

    5
    


```python
def test2(x):
    x=x+1

test2(10)
print(x)
```

    머신러닝은 인공지능의 한 분류입니다
    


```python

```


```python
#1. 함수 내부에서 함수 외부에 있는 변수의 값을 변경하는 방법

# x=1
# def test(x):
#     x=x+10
#     return x

# # test(x)
# # print(x)

# x=test(x)
# print(x)

#2. global : 전역 변수
x=1
def test():
    global x ##함수 내부에서 함수 외부에 있는 변수 x를 사용하겠다
    x=x+10
    
test()
print(x)

```

    11
    


```python
def test():
    #return 1,2
    return [1,2]
```


```python
res=test()
#print(list(res))
print(res)
```

    [1, 2]
    


```python
def mul(a,b):
    res=a*b
    return res

def add(xx,yy):
    zz=xx+yy
    print(zz)
    result=mul(zz, 2)
    return result
    
    
x=1
y=2
print(add(x,y))
```

    3
    6
    


```python

```
