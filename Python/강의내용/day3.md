```python
# 예방

# 식중독에 안 걸리려면 어떻게 하죠?
# 챗봇 : 예방방법 안내    
    
# 식중독에 걸리지 않으려면 어떻게 하죠?
# 챗봇 : 엉뚱한 답변
        
# 시나리오, 인텐트(intent), 엔티티 (챗봇 플랫폼) 기반 챗봇

# ex) 인텐트(식중독 예방) -> 답변 :  예방방법
# 질문
# 식중독에 안 걸리려면 어떻게 하죠?
# 식중독에 걸리지 않으려면 어떻게 하죠?
# ...

```


```python
#insert함수:리스트내의 특정 위치에 데이터를 삽입
a=[10,20,30]
a.append(100)
```


```python
a
```




    [10, 20, 30, 100]




```python
a.insert(1, 15)
```


```python
a
```




    [10, 15, 20, 30, 100]




```python
a.append([50,60])
a
```




    [10, 15, 20, 30, 100, [50, 60]]




```python
a.extend([70,80])
a
```




    [10, 15, 20, 30, 100, [50, 60], 70, 80]




```python
a=[10,20,10,20]
```


```python
a.remove(10)
```


```python
a
```




    [20, 10, 20]




```python
a.remove(10)
```


```python
a
```




    [20, 20]




```python
a=[10,20,30]
```


```python
#pop : 가장 마지막 요소를 제거

#a.pop() #가장 마지막 요소를 꺼낸다음 제거

data=a.pop()#가장 마지막 요소를 꺼낸다음 data변수에 저장
```


```python
data
```




    30




```python
a
```




    [10, 20]




```python
a=[10,20,30]
```


```python
a.pop(1)
```




    20




```python
a
```




    [10, 30]




```python
# 튜플?리스트와 거의 비슷. 
#리스트:[], 튜플:()
#리스트는 데이터를 생성, 수정, 삭제 등 수행
#튜플은 데이터를 변경할 수 없음
```


```python
tup1=()
tup1
type(tup1)

# tup2=(1)
# tup2
# type(tup2) #int

tup2=(1,)
tup2
type(tup2)

tup3=(10,20,30)
tup3

#tup4=1,2
tup4=(1,2)
tup4

```




    (1, 2)




```python

```


```python
tup4
```




    (1, 2)




```python
#에러 발생의 경우

#del tup4[0]

#tup4[1]=3

tup4[3]=3
```


    ---------------------------------------------------------------------------

    TypeError                                 Traceback (most recent call last)

    <ipython-input-39-e7985aeef596> in <module>
          5 #tup4[1]=3
          6 
    ----> 7 tup4[3]=3
    

    TypeError: 'tuple' object does not support item assignment



```python
tup4
```




    (1, 2)




```python
l4=list(tup4) #튜플 -> 리스트
```


```python
l4[1]=3
l4
```




    [1, 3]




```python
tup4=tuple(l4)
```


```python
tup4
```




    (1, 3)




```python
tup5=(10,20,'가', '나')
tup5
```




    (10, 20, '가', '나')




```python
tup5[3]
tup5[2:]
```




    ('가', '나')




```python
print(tup5)
print(tup3)
tup5+tup3
```

    (10, 20, '가', '나')
    (10, 20, 30)
    




    (10, 20, '가', '나', 10, 20, 30)




```python
li1=[1,2]
li2=[3,4]
li1+li2
```




    [1, 2, 3, 4]




```python
li1*5
```




    [1, 2, 1, 2, 1, 2, 1, 2, 1, 2]




```python
tup5*3
```




    (10, 20, '가', '나', 10, 20, '가', '나', 10, 20, '가', '나')




```python
len(li1)
```




    2




```python
len(tup5)
```




    4




```python
range(5) #0~4
```




    range(0, 5)




```python
tuple(range(5))
```




    (0, 1, 2, 3, 4)




```python
list(range(5))
```




    [0, 1, 2, 3, 4]




```python
tuple(range(10, 15))
```




    (10, 11, 12, 13, 14)




```python
list("data")
```




    ['d', 'a', 't', 'a']




```python
tuple("data")
```




    ('d', 'a', 't', 'a')




```python
#set(셋):파이썬에서 집합을 의미
#중괄호, 컴마로 구분
```


```python
s1={1,2,3,1,2,4}
s1
s2={'hi', 'hello', 'bye', 'hi'}
s2 #자료가 랜덤하게 출력, 저장 순서가 없음 => 대괄호 기호를 사용하여
#데이터 참조를 할 수 없음

# s2 = {'a', 3, 'b', 1, 'c', 1, 2, 3}   # {1, 2, 3, 'a', 'b', 'c'}
# s2
```




    {'bye', 'hello', 'hi'}




```python
#리스트나 튜플에서는 데이터 참조시 대괄호([]) 기호를 사용
#리스트변수명[3] : 3번 index 자료 추출
#s2[1] 에러 발생
```


```python
s2={'hi', 'hello', 'bye', 'hi'}
s2 
```




    {'bye', 'hello', 'hi'}




```python
#in 연산자
'key' in s2
'bye' in s2

#not in 연산자
'bye' not in s2
```




    False




```python
a=set('hello')
a

```




    {'e', 'h', 'l', 'o'}




```python
range(5) #range객체 : 0~4까지 범위를 갖는 값들을 포장해놓은 포장물(객체)

#객체? 객체지향언어에 등장하는 클래스로부터 파생된 실체(인스턴스)
```




    range(0, 5)




```python
list(range(5)) #포장지를 뜯어서 리스트 형태로 만듬
tuple(range(5)) #포장지를 뜯어서 튜플 형태로 만듬
set(range(5))#포장지를 뜯어서 집합 형태로 만듬
```




    {0, 1, 2, 3, 4}




```python
c=set()
c #공집합
```




    set()




```python
c={} #dictionary
type(c) 
```




    dict




```python
set("반가워요반가워")
```




    {'가', '반', '요', '워'}




```python
a={10,20,30}
b={30,40,50}
#c={}   dict
```


```python
a | b   #or 연산자, 합집합(union)
set.union(a,b)
```




    {10, 20, 30, 40, 50}




```python
#교집합(intersection)
a & b #and 연산자, 교집합
set.intersection(a,b)
```




    {30}




```python
#차집합(difference)
a - b
set.difference(a,b)
```




    {10, 20}




```python
#대칭차집합, XOR 연산
a ^ b
```




    {10, 20, 40, 50}




```python
a={10,20,30}
```


```python
a.add(40)
```


```python
a
```




    {10, 20, 30, 40}




```python
a.remove(20)
```


```python
a
```




    {10, 30, 40}




```python
#a.remove(20)  에러발생

#a.discard(20) 에러 발생 안함

a.discard(30) 
```


```python
a
```




    {10, 40}




```python
#a.remove(30)
a.discard(30) 
```


```python
a={'나',10,20,30,'가', 'k'}
a
```




    {10, 20, 30, 'k', '가', '나'}




```python
a.pop()
```




    '나'




```python
a
```




    {10, 20, 30, 'k', '가'}




```python
a.pop()
```




    'k'




```python
a
```




    {10, 20, 30, '가'}




```python
#집합은 자료의 순서가 유지가 안됨

#set 자료구조는 자료의 저장 순서가 필요없으면서 중복을 제거해야 하는 상황에
#사용
```


```python
a.clear()
```


```python
a
```




    set()




```python
s={10,20,30}
```


```python
s2=s
```


```python
s2
```




    {10, 20, 30}




```python
 #대입연산자로 새로운 변수에 할당하게 되면, 셋이 2개가 아니라 여전히 1개
```


```python
s2.add(40)
s2
```




    {10, 20, 30, 40}




```python
s
```




    {10, 20, 30, 40}




```python
#is : s, s2 집합이 동일한 집합인지 확인하는 연산자
```


```python
s is s2
```




    True




```python
#copy() : 두 개의 완전히 분리된 집합을 생성하기 위한 함수
```


```python
a={10,20,30}
```


```python
#b=a 동일한 집합
b=a.copy()
```


```python
b
```




    {10, 20, 30}




```python
#is : 두 집합이 동일한지(메모리 상의 주소, 위치) 확인
print(a is b)
#False의 의미? a 집합과 b 집합의 자료들이 메모리 상의 다른 위치에 저장되어 있음

# == : 두 집합에 속해있는 요소{1,2,3}가 동일한지 확인
print(a == b)
```

    False
    True
    


```python
a
```




    {10, 20, 30}




```python
b
```




    {10, 20, 30}




```python
b.add(40) 
b
```




    {10, 20, 30, 40}




```python
a
```




    {10, 20, 30}




```python
#단어 : 설명
#딕셔너리 -> 키 : 값
#딕셔너리 : 키와 값(밸류, value)의 쌍으로 구성
#json파일이 딕셔너리 구조
```


```python
#딕셔너리={키1:값1, 키2:값2, ..., 키n:값n}
```


```python
people={'name':'kim',
        'cp':114,
        'birth':'0707',
        'gender':None,
       10:'ten',
        True:1,
        'nickname':['ai', 'robot'],
        #['ai', 'robot']:'nickname',        
        'dic1':{'dic2':'value1', 'dic3':'value2'},               
       'cp':119} 
#키 이름이 중복되면 마지막 키에 해당하는 값이 저장
```


```python
people
```




    {'name': 'kim',
     'cp': 119,
     'birth': '0707',
     'gender': None,
     10: 'ten',
     True: 1,
     'nickname': ['ai', 'robot'],
     'dic1': {'dic2': 'value1', 'dic3': 'value2'}}




```python
# 변수명={
#     성명,
#     주소,
#     성별,
#     별명,
#     취미
# }
```


```python
s={}
s=dict()
```


```python
type(s)
```




    dict




```python
dict()

#people={'name':'kim', 'cp':114}

#mydic=dict(name='kim', cp=114)

#mydic=dict('name'='kim', 'cp'=114)  에러 발생
#키에 작은/큰 따옴표를 사용하면 안됨!!!

mydic=dict(name='kim', cp=114)
```


```python
mydic
```




    {'name': 'kim', 'cp': 114}




```python
# dict(name='kim', cp=114, 10='ten') #오류

#people={'name':'kim', 'cp':114, 10:'ten'} #가능
```


```python
#dict함수와 zip함수를 활용하여 딕셔너리를 생성
#잘 사용하지 않는 방법

dict()

```


```python
mydic=dict(zip(['one', 'two'], [1, 2]))
```




    {'one': 1, 'two': 2}




```python
mydic={'one': 1, 
       'two': 2}
```


```python
mydic
```




    {'name': 'kim', 'cp': 114}




```python
#딕셔너리의 키에 연결된 값을 추출하는 작업
mydic['name']
```




    'kim'




```python
mydic['cp']=119
```


```python
mydic
```




    {'name': 'kim', 'cp': 119}




```python
mydic['bloodtype']='B'
```


```python
mydic
```




    {'name': 'kim', 'cp': 119, 'bloodtype': 'B'}




```python
#mydic['addr']

#딕셔너리 키가 존재?
'name' in mydic

'addr' not in mydic
```




    True




```python
len(mydic)
```




    3




```python
res=mydic.keys()
```


```python
list(res)
```




    ['name', 'cp', 'bloodtype']




```python
for k in mydic.keys():
    print(k)
```

    name
    cp
    bloodtype
    


```python
list(mydic.values())
```




    ['kim', 119, 'B']




```python
mydic.items()
```




    dict_items([('name', 'kim'), ('cp', 119), ('bloodtype', 'B')])




```python
list(mydic.items())
#1개의 리스트 내부에 3개의 튜플이 존재
#각 튜플은 2개의 요소로 구성
list(mydic.items())[2][1]
```




    'B'




```python
li=[1,2,3]
li[0]
```




    1




```python
list(mydic.items())[1][1]
```




    119




```python
mydic.clear()
```


```python
mydic
```




    {}




```python
list(mydic.items())
```




    []




```python
li=[('name', 'kim'), ('cp', '119'), ('bloodtype', 'B')]
```


```python
li
```




    [('name', 'kim'), ('cp', '119'), ('bloodtype', 'B')]




```python
mydic=dict(li)
mydic
```




    {'name': 'kim', 'cp': '119', 'bloodtype': 'B'}




```python
mydic['cp'] #mydic.get('cp')

#mydic['addr'] #해당 키가 없는 경우에는 에러 발생
mydic.get('addr', '서울')

#bloodtype 키가 존재하면 값을 리턴, 키가 존재하지 않으면 A를 디폴트값으로 리턴
mydic.get('bloodtype', 'A')
```




    'B'




```python
mydic
```




    {'name': 'kim', 'cp': '119', 'bloodtype': 'B'}




```python
'nickname' in mydic
```




    False




```python
del mydic['cp']
```


```python
mydic
```




    {'name': 'kim', 'bloodtype': 'B'}




```python
len(mydic)
```




    2




```python
##딕셔너리 연습##
```


```python
t={'새우깡':1000, '감자칩':2000, '요구르트':500}
```


```python
t
```




    {'새우깡': 1000, '감자칩': 2000, '요구르트': 500}




```python
t['생수']=500
```


```python
t
```




    {'새우깡': 1000, '감자칩': 2000, '요구르트': 500, '생수': 500}




```python
t['새우깡']
```




    1000




```python
t['감자칩']=1500
```


```python
t
```




    {'새우깡': 1000, '감자칩': 1500, '요구르트': 500, '생수': 500}




```python
del t['요구르트']
```


```python
t
```




    {'새우깡': 1000, '감자칩': 1500, '생수': 500}




```python
# 새우깡 1000  5
# 생수    500 10
```


```python
가격={'새우깡':1000, '생수':500}
재고={'새우깡':5, '생수':10}
```


```python
제품={'새우깡':[1000,5], '생수':[500,10]}
```


```python
가격['새우깡']
재고['새우깡']
```




    5




```python
제품['생수']
```




    [500, 10]




```python
str(가격['새우깡'])+"원"
```




    '1000원'




```python
print(str(가격['새우깡'])+"원", str(재고['새우깡'])+"개")
```

    1000원 5개
    


```python
제품={'새우깡':[1000,5], '생수':[500,10]}
#생수의 재고량을 출력
```


```python
print(제품['생수'][1])
print(str(제품['생수'][1])+"개")
```

    10
    10개
    


```python
str(list(제품.items())[1][1][1])+"개"
```




    '10개'




```python
제품.keys()
```




    dict_keys(['새우깡', '생수'])




```python

```
