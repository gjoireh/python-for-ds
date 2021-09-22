```python
x,y=input("숫자 두 개를 입력 : ").split()
print(int(x)+int(y))
```

    숫자 두 개를 입력 : 1 2
    3
    


```python
x=int(input("숫자를 입력 : "))
print(x+2)
```

    숫자를 입력 : 3
    5
    


```python
print(input("숫자 두 개를 입력 : ").split())
```

    숫자 두 개를 입력 : 2 3
    ['2', '3']
    


```python
#['2', '3']
print(int('2')+3)
```

    5
    


```python
#int(['2', '3']) error
```


```python
#map함수
x,y=map(int, input("숫자 입력 : ").split())
print(x+y)


```

    숫자 입력 : 2 3
    5
    


```python
print(map(int, input("숫자 입력 : ").split()))
```

    숫자 입력 : 2 3
    <map object at 0x00000204FDA960D0>
    


```python
# 숫자 입력 : 1,2
# 3
```


```python
x,y=map(int, input("숫자 입력 : ").split(','))
print(x+y)
```

    숫자 입력 : 1,2
    3
    


```python
print(10,20,30)
print(10,20,30,sep=",")
print(10,20,30,sep="")
```

    10 20 30
    10,20,30
    102030
    


```python
#비교연산자, 논리연산자 => 연산 결과가 불린형
3>2
1==2   # = 의미? assign, == 의미? equal
1 != 2 # != (not equal)

'test' == 'test'
print('test' != 'Test')

'donald_trump' 'trump'

'sky' 'Sky'
#자연어 전처리 과정에서는 대소문자를 통일하는 작업을 수행
```

    True
    




    'skySky'




```python
10 <= 10 #크거나 같디
```




    True




```python
#논리연산자 : and, or, not 연산자
True
False

#and : 모두 다 참인경우만 참이되는 연산자
True and False
True and True

#or : 적어도 하나 이상이 참인 경우 참이되는 연산자
True or False
True or True

#not : 참 -> 거짓, 거짓 -> 참
not True

#논리 연산자 우선순위 :  not, and, or
not True and False

True and True or not True

# not True and False or not False
# => False and False or True
# => False or True
# => True
not True and False or not False
```




    True




```python
1==1 and 1!=2
# True and True
# True
#비교연산자:2개, 논리연산자:1개
#우선순위가 비교> 논리
```




    True




```python
#bool() : 정수, 실수, 문자 -> 불린
bool(100)
bool(-100)
bool(1)
bool(0) #거짓

bool(3.14)
bool(-1.1)
bool(0.1)
bool(0.0) #거짓

bool('a')
bool("test")
bool("")


x="donald_trump"
if x:
    print("정상처리")
else:
    print("비정상처리")
```

    정상처리
    


```python
'mulcam' and True
```




    True




```python
#문자열 관련 함수
print("I eat 2 apples")
```

    I eat 2 apples
    


```python
#포매팅
x=20
a="three"
print("I eat %d apples" % x) #digit
print("I eat %s apples" % a) #string
```

    I eat 20 apples
    I eat three apples
    


```python
print("I ate %d apples. so I was sick for %s days" % (3,"three"))
```

    I ate 3 apples. so I was sick for three days
    


```python
x=2.1
print("I eat %d apples" % x)
print("I eat %f apples" % x)
print("I eat %.2f apples" % x)
```

    I eat 2 apples
    I eat 2.100000 apples
    I eat 2.10 apples
    


```python
#print("Accuracy is 90%")
print("Accuracy is %d%%" % 90)
```

    Accuracy is 90%
    


```python
# print("%s" % "hello")
# print("%s" % "hellohi")

print("%10s" % "hello") #10칸 확보 후 우측 정렬하여 출력
print("%-10s" % "hello") #10칸 확보 후 우측 정렬하여 출력
```

         hello
    hello     
    


```python
num=3
day="five"
```


```python
print("I ate %d apples. so I was sick for %s days" % (3,"five"))
print("I ate %d apples. so I was sick for %s days" % (num,day))

print("I ate {0} apples. so I was sick for {1} days".format(num,day))
#{0}:format함수의 첫번째 인수
#{1}:format함수의 두번째 인수
```

    I ate 3 apples. so I was sick for five days
    I ate 3 apples. so I was sick for five days
    I ate 3 apples. so I was sick for five days
    


```python
print("I ate {1} apples. so I was sick for {0} days".format(num,day))
print("I ate {num} apples. so I was sick for {day} days".format(num=3,day="three"))
```

    I ate five apples. so I was sick for 3 days
    I ate 3 apples. so I was sick for three days
    


```python
print("{0:<10}".format("hello"))
#   :<10 의미? 전체 자리수가 10자리, 왼쪽 정렬
print("{0:>10}".format("hello"))
#   :>10 의미? 전체 자리수가 10자리, 오른쪽 정렬
print("{0:^10}".format("hello"))
#   :^10 의미? 전체 자리수가 10자리, 가운데 정렬
print("{0:$^10}".format("hello"))
```

    hello     
         hello
      hello   
    $$hello$$$
    


```python
#(문자열)내장 함수 : 문자열 자체적으로 문자열 관련 함수를 가지고 있음
#사용 방법 : 문자열(변수).내장함수()
"data".count('a')
"data".count('z')

x="data"
x.count('a')
```




    2




```python
x.find('a') #'a'의 위치, 0번부터 시작
x.find('b') #문자가 없는 경우에는 -1 리턴

x.index('a')
#x.index('b') #문자가 없는 경우에는 에러발생
```




    1




```python
#"a,b,c,d" => "abcd"
x="a,b,c,d"
#컴마로 구분하여 abcd 출력

x.split() #x에 저장된 문자열을 공백 문자로 분리
res=x.split(",") #['a', 'b', 'c', 'd']
```


```python
print(",".join(res))
#res에 저장되어 있는 각각의 문자가 컴마(,)로 연결

#split <-> join
```

    a,b,c,d
    


```python
"test".capitalize()
"test".upper()
"test".lower()
```




    'test'




```python
a=" hello "
b="hi"
print(a,b, sep="")
```

     hello hi
    


```python
a.strip() #양쪽 공백 제거
a.lstrip()#왼쪽 공백 제거
a.rstrip()#오른쪽 공백 제거
```




    ' hello'




```python
#' hello' != 'hello' 
```


```python
a="Python is too easy"
a.replace("easy", "difficult")

a.replace("o", "t")
```




    'Pythtn is ttt easy'




```python
# 알고리즘?문제 해결 (가장 좋은)방법
# 자료구조?자료를 저장 및 관리하는 방법

# 파이썬 자료구조?튜플, 리스트(중요), 셋, 딕셔너리(중요)
```


```python
x=1
x=3
#리스트:데이터를 일렬로 늘어놓은 구조
#리스트변수명=[요소값,요소값,요소값,...]
```


```python
a=[] #빈 리스트
a2=[10,20,30] #요소(element)
a3=['hi', 'hello']
a4=[10,20,'hi']
a5=[10,'hi', 1.15,  True] #리스트에 여러 가지 자료형에 해당되는 자료를 하나로 묶음

a6=list()
```


```python
a6
```




    []




```python
#  0  1  2   3
a=[10,20,30,40]
a[2]+a[3]
```




    70




```python
a[1]
a[-3]
```




    20




```python
a=[10,20,30,40,[50,'a','b']]
a[4] 
a[-1]
#리스트는 리스트를 요소값으로 할 수 있다
```




    [50, 'a', 'b']




```python
a[4][1]
a[-1][1]
a[4][-2]
a[-1][-2]
```




    'a'




```python
a=[10,20,30,40,[50,'a',[3.14, True, 100],'b']]
```


```python
#3.14 출력
a[4][2][0]
a[-1][-2][-3]
```




    3.14




```python
#파이썬 언어 - 리스트(동적,  dynamic)
#넘파이 배열(array, static,  정적)
a=[]
```


```python
a=[10,20,30,40,50]
```


```python
a[0:3] #시작번호(포함):끝번호(포함x)
a[:4]
a[1:]
```




    [10, 20, 30, 40]




```python
s="mulcam"
s[0:3]
```




    'mul'




```python
a=[10,20,30,['가','나','다'],40,50,60]
```


```python
#['가','나']
a[3][:-1]
```




    ['가', '나']




```python
a=[10,20]
b=[30,40]
```


```python
a*3
a+b
```




    [10, 20, 30, 40]




```python
len(a) #리스트, 문자열, 딕셔너리, 튜플
len("hello")
```




    5




```python
s=[10,20,"hi"]
s
```




    [10, 20, 'hi']




```python
str(s[1])+"hi"
```




    '20hi'




```python
range(5) #0~5-1까지 연속된 수열

list(range(5))
list(range(0,5))

#print(list(range(10,50)))

#print(list(range(10,50,3)))

print(list(range(-10,50,2)))

#range(시작, 끝, 증감값)

list(range(20,0,-2))
```

    [-10, -8, -6, -4, -2, 0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48]
    




    [20, 18, 16, 14, 12, 10, 8, 6, 4, 2]




```python
#range(5, 0, -0.5) 
#넘파이에 있는 range함수는 실수값으로 증감값을 나타낼 수 있음


#range(5, 0, -0.5) 
#[5, 4.5, ..., 0.5]


```


```python
list(range(20,0,-1))
#list(range(20,0)) #list(range(20,0,1))

```




    [20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]




```python
#range(5, 0, -0.5) 

#[5, 4.5, ..., 0.5]
# res=[]
# x=list(range(50, 0, -5))
# x
# res[0]=x[0]/10
# res[1]=x[1]/10
# #...
# res[9]=x[9]/10

a=[10,20,30]
a[2]=40
a
```




    [10, 20, 40]




```python
del a[2]
```


```python
a
```




    [10, 20]




```python
a=list(range(10,101,10))
a
```




    [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]




```python
del a[3:]
```


```python
a
```




    [10, 20, 30]




```python
a=[10,20] #append함수:리스트의 맨 마지막에 추가
a.append(30)
```


```python
a
```




    [10, 20, 30]




```python
a.append(3.14)
a
```




    [10, 20, 30, 3.14]




```python
a.append('hi')
a
```




    [10, 20, 30, 3.14, 'hi']




```python
a.append([100,200])
a
```




    [10, 20, 30, 3.14, 'hi', [100, 200]]




```python
#sort함수:정렬
a=[30,10,20]
a.sort()
```


```python
a
```




    [10, 20, 30]




```python
a=['b','c','Z','t','v']
a.sort() #기본적으로 오름차순 정렬됨(A:65 ~ Z:90, a:97  ~ z:122)


print(a)
#문자는 ascii코드 값을 기준으로 정렬
#인코딩 : 코드화(문자,숫자 등 -> 코드(0,1)) 하는 작업
#디코딩 : 코드(0,1) -> 문자,숫자 등

#인코딩/디코딩 방식 : ascii(7bit), ebcdic, bcd, 
#utf8, utf16, euc-kr 등등

#아스키 : 모든 문자/숫자를 7비트로 표현 (7비트 = 2의 7승 = 128가지 문자를 표현 가능)
#0~127까지 코드

#초성 * 중성 * 종성 

#utf-3byte

```

    ['Z', 'b', 'c', 't', 'v']
    


```python
a=['b','c','Z','t','v']
a.reverse() #역순으로 나열
a
```




    ['v', 't', 'Z', 'c', 'b']




```python
a=['b','c','Z','t','v']
a.sort()
a.reverse()
print(a)
```

    ['v', 't', 'c', 'b', 'Z']
    


```python
a=['b','c','Z','t','v', '0'] #'0':48
a.sort(reverse=True)
print(a)
```

    ['v', 't', 'c', 'b', 'Z', '0']
    


```python
chr(65)  #아스키코드 값을 아스키 문자로 변환
chr(90)
chr(95)
chr(0)
chr(127)
```




    '\x7f'




```python
a=['b','c','Z','t','v', '0', chr(95)]
```


```python
a.sort(reverse=True)
print(a)
```

    ['v', 't', 'c', 'b', '_', 'Z', '0']
    


```python

```
