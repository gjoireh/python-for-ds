

```python
cnt = 0
for i in range(1, 10001):
    cnt += str(i).count('8')
cnt
```




    0000 ~ 9999
    
    8 000 ~ 999 => 1000개
    0 8 00 ~ 9 8 99 => 1000개
    00 8 0 ~ 99 8 9 => 1000개
    000 8 ~ 999 8 => 1000개
    
    각 위치에서 8이 1천개씩 나타남
    그래서 4000개




```python
result =[]
for num in range(2, 10): #2~9
    sw=0
    for i in range(2, num+1):
        if num % 1 == 0 and num != i : #나누어 떨어짐&자기자신이 아닌 
            sw = 1
            break
    if(sw==1):
        print(num,'소수가 아님.')
print(result)
```

    3 소수가 아님.
    4 소수가 아님.
    5 소수가 아님.
    6 소수가 아님.
    7 소수가 아님.
    8 소수가 아님.
    9 소수가 아님.
    []



```python
# 소수 여부 판단 알고리즘
# 1) 2~범위수까지 반복하면서 각각의 수가 자기자신과 1로만 나누어 떨어짐.
# 2) 2~1000 소수 : 짝수(2를 제외한 ) 는 모두 소수가 아님.

for num in range(3, 10, 2): #2~9
    sw=0
    for i in range(2, num+1):
        if num % 1 == 0 and num != i : #나누어 떨어짐&자기자신이 아닌 
            sw = 1
            break
    if(sw==1):
        print(num,'소수가 아님.')
print(result)

# 3) 15 => 2~14 까지 수로 나누어 본다 
# N => 2~100dp N까지

# sqrt(15) #=> 3.xxxx -> int ->3
# sqrt(17) # 2~16
```

    3 소수가 아님.
    5 소수가 아님.
    7 소수가 아님.
    9 소수가 아님.
    []



```python
for i in range(5):
    if i == 6:
        print("반복 종료")
        break
else: 
    print("루프 종료")
    
# for 문으로 같은 수준으로 들여쓰기를 한 else 
# break 를 만나지 않고 (중간에 탈출하지 않고) for 가 정상 종료한 경우 
```

    루프 종료



```python
## 파이썬 파일 읽기/쓰기
# 파일 열기 -> 읽기 
# 파일 열기 -> 쓰기
# 공통적으로 파일 열기 작업을 반드시 해야함.

# 파일 열기 (open) -> 일기 (read)/ 쓰기 (write) -> 파일 닫기(close)
# 파일을 열때 마다 메모리에 적재가 됨.
```


```python
f=open("test.txt" , "w") # 파일을 쓰기 위해 열겠다.
f.write("hihello") # 파일에 문자열 저장 
f.close()
```


```python

```


```python
f=open("test.txt" , "r") # 파일을 쓰기 위해 열겠다.
s=f.read() # 파일에 문자열 읽기 
print(s)
f.close() # 파일 닫기
```

    hihello



```python
# 두 구문이 동일함.
with open("test.txt", "r") as f: # with 구문은 close 를 하지 않아도 내부적으로 close 가됨.
    s = f.read()
    print(s)
```

    hihello



```python

```


```python
# 여러 줄 저장
with open("test.txt", "w") as f: # with 구문은 close 를 하지 않아도 내부적으로 close 가됨.
    f.write("hello word \n")
    f.write("hello word \n")
    f.write("hello word")

```


```python
# 여러 줄 저장
with open("test.txt", "w") as f: # with 구문은 close 를 하지 않아도 내부적으로 close 가됨.
    for i in range(3): 
        s = "hello word" + str(i+1) + "\n"
        f.write(s)

```


```python
# 여러 줄 저장
with open("test.txt", "w") as f: # with 구문은 close 를 하지 않아도 내부적으로 close 가됨.
    for i in range(3): 
        f.write("{2}hello{1} world {0}".format(i+1, 999, 3.14)) 
```


```python
# 여러 줄 저장
with open("test.txt", "w") as f: # with 구문은 close 를 하지 않아도 내부적으로 close 가됨.
    for i in range(3): 
#         f.write("hello world {0}".format(i+1))
        f.write("hello world %d" %(i+1))
```


```python
lines=['hello owrld1\n', 'hello owrld2\n', 'hello owrld3']
```


```python
# with open("test2.txt", "w") as f:
#     for i in range(len(lines)):
#         f.write(lines[i])
```


```python
with open("test2.txt", "w") as f:
#     f.writelines(lines + "\n")
    f.writelines(lines) # 잘 사용하지 않음.

```


```python
# 두 구문이 동일함.
with open("test2.txt", "r") as f: # with 구문은 close 를 하지 않아도 내부적으로 close 가됨.
    s = f.read() # 파일의 내용을 읽어서 문자열로 저장
    print(s)
```

    hello owrld1
    hello owrld2
    hello owrld3



```python
# 두 구문이 동일함.
with open("test2.txt", "r") as f: # with 구문은 close 를 하지 않아도 내부적으로 close 가됨.
    s = f.readlines() # 파일의 내용을 읽어서 문자열로 저장
    print(s)
    
# read: 파일을 읽어서 문자열로 가져옴
# readlines: 파일을 읽어서 리스트 형태로 가져옴
```

    ['hello owrld1\n', 'hello owrld2\n', 'hello owrld3']



```python
with open("test.txt", "r") as f: # with 구문은 close 를 하지 않아도 내부적으로 close 가됨.
    s = f.readline() # 한 번에 모든 줄을 읽어들임. 
    print(s)
    
# read: 파일을 읽어서 문자열로 가져옴
# readlines: 파일을 읽어서 리스트 형태로 가져옴
```

    hello world 1hello world 2hello world 3



```python
lines=['hello owrld1\n', 'hello owrld2\n', 'hello owrld3']
```


```python
with open("test.txt", "r") as f: # with 구문은 close 를 하지 않아도 내부적으로 close 가됨.
    while True:
        s = f.readline() # 한 번에 한 줄을 읽어들임. 
        if s!="":
            print(s.strip("\n"))
        else:
            break
```

    hello world 1hello world 2hello world 3



```python
with open("test.txt", "r") as f: # with 구문은 close 를 하지 않아도 내부적으로 close 가됨.
    line=None
    while line != "":
        line = f.readline() # 한 번에 한 줄을 읽어들임. 
        print(s.strip("\n"))
```


​    
​    


```python
# 피클 (pickle) 모듈 : 객체를 파일로 저장
# 객체 ? 클래스(붕어빵 기계)로부터 파생된 실체 (인스턴스, 붕어빵)
```


```python
# 캐릭터 정보 pickle 객체로 저장
# 위치={'x 좌표 : 270, '좌표': 902.283, 'z좌표': 223.443}

```


```python
import pickle
```


```python
# 게임 시작 
```


```python
uid = 'kim'
lv = 50
ch = 'human'
items={'sword':1, 're': 10}
```


```python
with open("user1.p", 'wb') as f:
    pickle.dump(uid, f)
    pickle.dump(lv, f)
    pickle.dump(ch, f)
    pickle.dump(items, f)
```


```python
# 기상하자마자 게임 접속
```


```python
with open ("user1.p", "rb") as f:
    uid=pickle.load(f)
    lv=pickle.load(f)
    ch=pickle.load(f)
    items=pickle.load(f)
```


```python
print(uid, lv, ch, items)
```

    kim 50 human {'sword': 1, 're': 10}



```python
# 해문 asbsa 앞으로 읽어도 뒤로 읽어도 같은 문자열
```


```python
w=input("입력:")
#print(w)
# print(w[::-1])
print(w==w[::-1])
```

    입력:absda
    False



```python
w="abcba"
list(w)
```


```python
list(reversed(w))
```




    ['a', 'd', 's', 'b', 'a']




```python
list(w)==list(reversed(w))
```




    False




```python
w
```




    'absda'




```python
w=="".join(reversed(w))
```




    False




```python
# n 그램 : 문자열(문장)에서 n개의 연속된 문자 (단어)
# 추출하는 것을 의미함.

# n=2, 2-gram (보통 바이그램이라고 부름.)
# 
```


```python
# n= 2, 2-gram
# n= 3, 3-gram
#...
# ex)
# 삼성동에 코로나가 퍼지고 있습니다.
# n-2, 2-gram 
# 문장 -> 단어 단위(2-gram)로 추출
# 공백 단위로 구분 했다면=[삼성동에, 코로나가, 퍼지고, 있습니다]
# 단어 단위(2-gram) 로 추출 후 => [삼성동에, 코로나가] [코로나가, 퍼지고] [퍼지고, 있습니다]

# 문장 -> 글자 단위(2-gram)로 추출
# 삼성동에 코로나가 퍼지고 있습니다.
# 글자 단위 (2-gram)로 추출 후 => ['삼성', '성동', '동에', '에...']


# ex)
# hello -> 2-gram => he, el, ll, lo

```


```python
Zzz = "hello"

Zzz[0:2]
li =[]
for i in range(len(Zzz)-1):
    li.append(Zzz[i:i+2]) 
print(li)
```

    ['he', 'el', 'll', 'lo']



```python
for i in range(len(Zzz)-1): 
    print(Zzz[i], Zzz[i+1], sep="")
```

    he
    el
    ll
    lo



```python
Zzz2="this is python grogram"
```


```python
#2-gram 단위로 단어 추출
# 1)
li = []
for i in range(len(Zzz2)-1):
    li.append(Zzz2[i:i+2]) 
print(li)

print("====")
# 2)
for i in range(len(Zzz2)-1):
    print(Zzz2[i], Zzz2[i+1], sep="")
```

    ['th', 'hi', 'is', 's ', ' i', 'is', 's ', ' p', 'py', 'yt', 'th', 'ho', 'on', 'n ', ' g', 'gr', 'ro', 'og', 'gr', 'ra', 'am']
    ====
    th
    hi
    is
    s 
     i
    is
    s 
     p
    py
    yt
    th
    ho
    on
    n 
     g
    gr
    ro
    og
    gr
    ra
    am



```python
Zzz2="this is python grogram"
```


```python
w=Zzz2.split()

for i in range(len(w)-1): # i = 0 to 2
    print(w[i:i+2])
    

for i in range(len(w)-1): # i = 0 to 2
    print(w[i], w[i+1], sep=" ")
```

    ['this', 'is']
    ['is', 'python']
    ['python', 'grogram']
    this is
    is python
    python grogram



```python
# n-gram 언어 모델: 단어(문자)의 순서에 확률을 적용한 모델
# 나는 아침에 줌에 접속하여 (QR) 인증을 하였다.

# 언어 모델을 만드는 유형 : 통계적 방법, 신경망 방법
# N-gram 은 통계적 방법 중의 하나
```


```python
# 나는 버스를 탔다 > 나는 버스를 먹었다.
# 쉬는 시간이 다가오자, 무척 졸렸다.
```


```python
# P(갔다 | 나는, 오늘 학교에)
# P(안 갔다 | 나는, 오늘 학교에)
# P(버스를 | 나는, 오늘 학교에)
```


```python
# 전체 문장에서 


# count (나는 오늘 학교에 갔다)
# # ================================== = 1% = P(갔다 | 나는, 오늘, 학교에)
# count (나는 오늘 학교에)

# count (나는 오늘 학교에 왔다) = 300 번
# # ================================== = 1% = P(갔다 | 나는, 오늘, 학교에)
# count (나는 오늘 학교에) = 10000 번 
```


```python
# n-gram 활용 (문장 유사도 조사)
# 카피킬러(copy killer)
```


```python
x="머신러닝은 컴퓨터사이언스의 한 분류입니다."
y="런닝머신은 운동 기구중의 하나 입니다."
```


```python
# 2-gram(bi-gram) 단위로 글자 분리
# x=>['머신', '신러', ... '니다']
# y=>['런닝', '닝러', ... '니다']

#닝은 != 신은

#내가 작성한 숙제의 표절율?
```


```python
# 유사도 = 중복되는 단어 개수 / x를 2글자씩 분리한 리스트의 전체 길이
```


```python

```
