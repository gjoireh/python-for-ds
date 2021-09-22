```python
# class 클래스이름:
#     def 메서드이름(self):
#         메서드가 수행할 작업의 코드(동작)
```


```python
#게이머 클래스 정의
#self : 클래스로부터 생성된 객체 자기 자신, this와 같음
class User:
    def move(self):
        print("이동합니다")
    def hunt(self):
        print(self.msg)
        self.move()
        print("사냥합니다")
        print(self.mp)
    def __init__(self): #클래스로부터 객체가 생성될때 자동으로 호출되는 특별한 메서드
        print("init 함수가 호출됐습니다")
        self.hp=100 #게임 캐릭터의 초기 체력이 100
        self.mp=50  #게임 캐릭터의 초기 마법력 50
        #self.속성명=속성값
        self.msg="캐릭터를 생성하였습니다"
```


```python
#게이머 객체 생성
hong=User()
```

    init 함수가 호출됐습니다
    


```python
#메서드 수행
#객체명.메서드명()

#hong.move()

hong.hunt()

isinstance(hong, User)
#hong(객체)은 User 클래스의 인스턴스(객체)입니까?
```

    캐릭터를 생성하였습니다
    이동합니다
    사냥합니다
    50
    




    True




```python
class User2:
    pass
```


```python

```


```python
#정규표현식(정규식, 바디 랭귀지):regex

수집 문자 데이터 -> 문자열 전처리(preprocessing, ..., 정규식 작업)
```


```python
# data="850101-1234567"
# =>
# "850101-*******"

data="850101-1234567"
#- 기호로 data를 분리
spData=data.split("-")

#spData[1].isdigit()
#문자열.isdigit()

#data에 저장된 주민번호가 정상적인지 여부를 확인하는 코드 완성
#길이=14, -기호로 분리된 각각의 데이터는 모두 숫자로만 구성


```




    False




```python
def check_num(num):
    if len(num) != 14:
        print('정상적인 주민등록 번호가 아닙니다.')
    else:
        num_list = num.split('-')
        if len(num_list[0]) == 6 and len(num_list[1]) == 7:
            if num_list[0].isdigit() == True and num_list[1].isdigit() == True:
                print('주민등록 번호가 정상적으로 입력되었습니다')
                return
            else:
                print('숫자만 입력해주세요')
        else:
            print('정상적인 주민등록 번호가 아닙니다.')

            
data="850101-1234567"
data1="850101-123456가"
data2="8850101-1234567"
data3="85010-12345671"

check_num(data)
check_num(data1)
check_num(data2)
check_num(data3)

```


```python
data="850101-1234567"

def valid(id_num):
    if len(id_num)==14:
        id_num=id_num.split('-')
        if len(id_num)==2:
            if id_num[0].isdigit():
                if id_num[1].isdigit():
                    print(data[:6]+"-"+"*******")
                    
                    return True
    return False

valid(data)
```

    850101-*******
    




    True




```python
data="850101-1234567"
data[7:]
data[:6]+"-"+"*******"
```




    '850101-*******'




```python
#정규표현식은 문자열의 패턴(규칙)에 대한 표현식을 작성
```


```python
import re
data="850101-1234567"
pat=re.compile("(\d{6})-\d{7}")
pat.sub("\g<1>-*******", data)
```




    '850101-*******'




```python
#re.match("패턴","문자열")  #문자열에 패턴이 있는지 확인

re.match("hi", "hi hello world")#"hi hello world"에 "hi"이 있는지 판단
#패턴이 문자열에 있는 경우에는 매치된 패턴과 위치가 출력

#match함수는 문자열의 최좌측부터 시작하여 패턴이 있는지 확인.
#처음부터 패턴이 문자열에 없다면 종료
re.match("hello", "hi hello world")#"hi hello world"에 "hello"패턴이 있는지 판단

```


```python
#패턴이 문자열에 없다면 곧바로 종료
#패턴이 문자열에 있다면 매치된 문자열이 출력
re.match("hello", "hello world")
```




    <re.Match object; span=(0, 5), match='hello'>




```python
#re.match("패턴","문자열") 
print(re.match("hello", "hehllo world"))
print(re.match("hello", "1hello world"))
print(re.match("hello", "hello world"))

print(re.match("hello!", "hellohello! world"))
```

    None
    None
    <re.Match object; span=(0, 5), match='hello'>
    None
    


```python
#정규표현식 메타문자()

# 메타 데이터:데이터를 표현(설명)하는 데이터
    
# 메타 문자 : 기호가 갖는 고유의 의미가 아닌, 정규표현식에서 식을 정의하는데
#     사용되는 특별한 의미의 문자(기호)
# 메타 문자 종류 : () [] {} \ | ? + * ^ $...    

#메타버스? Meta-verse


```


```python
"""
#1. [] : 모든 문자가 대괄호 안에 올 수 있음
ex) [abcde] : a,b,c,d,e 중에서 한 개의 문자와 매치

"""

```


```python
print(re.match("[abcde]", "a"))
print(re.match("[abcde]", "e"))
print(re.match("[abcde]", "ab"))
print(re.match("[abcde]", "abcd"))
print(re.match("abcde", "abcd")) #+는 한 문자 이상과 매치되는지 검사

print(re.match("[decab]", "abcd"))#1개의 문자에 대해서만 매치여부 확인, 순서 없음
print(re.match("[decab]+", "abcd")) 

print(re.match("[decab]+", "abfcd")) 
print(re.match("[decab]+", "xabfcd")) 
```

    <re.Match object; span=(0, 1), match='a'>
    <re.Match object; span=(0, 1), match='e'>
    <re.Match object; span=(0, 1), match='a'>
    <re.Match object; span=(0, 1), match='a'>
    None
    <re.Match object; span=(0, 1), match='a'>
    <re.Match object; span=(0, 4), match='abcd'>
    <re.Match object; span=(0, 2), match='ab'>
    None
    


```python
print(re.match("[abcd]+", "sky")) 
print(re.match("[abcd]+", "saky")) 
print(re.match("[abcd]+", "all")) 

```

    None
    None
    <re.Match object; span=(0, 3), match='all'>
    


```python
#영문자 소문자만 오면 모두 매치
print(re.match("[a-z]+", "al7l")) 
print(re.match("[10842]+", "120348")) 
print(re.match("[0-9]+", "120348")) 
print(re.match("[A-Z]+", "HELLO World")) 
print(re.match("[A-Z a-z]+", "HELLO World")) 
print(re.match("[A-Z a-z]+", "HELLO World")) 
```

    <re.Match object; span=(0, 2), match='al'>
    <re.Match object; span=(0, 3), match='120'>
    <re.Match object; span=(0, 6), match='120348'>
    <re.Match object; span=(0, 5), match='HELLO'>
    <re.Match object; span=(0, 11), match='HELLO World'>
    


```python
print(re.match("[가나다]","가다나가다라다"))
print(re.match("[가나다]+","가다나가다라다"))
print(re.match("[라가나다]+","가다나가다라다"))
print(re.match("[카라가나다]+","가다나가다라다"))
print(re.match("[가-힣ㄱ-ㅎ]+","ㅎㅎㅎㅎㅎㅎ가다나가다라다ㅋㅋㅋㅋㅋㅋ"))
```

    <re.Match object; span=(0, 1), match='가'>
    <re.Match object; span=(0, 5), match='가다나가다'>
    <re.Match object; span=(0, 7), match='가다나가다라다'>
    <re.Match object; span=(0, 7), match='가다나가다라다'>
    <re.Match object; span=(0, 19), match='ㅎㅎㅎㅎㅎㅎ가다나가다라다ㅋㅋㅋㅋㅋㅋ'>
    


```python
print(re.match("[^0-9]+","&^%&$&^*&abcd가나다 8724*&"))
#숫자가 아니면 매치
print(re.match("[^0-9ㄱ-힣a-z A-Z]+","&^%&$&^*&abcd가나다 8724*&"))

```

    <re.Match object; span=(0, 17), match='&^%&$&^*&abcd가나다 '>
    <re.Match object; span=(0, 9), match='&^%&$&^*&'>
    


```python
# [a-z]
# [A-Z]
# [a-zA-Z]
# [0-9] == \d
# [^0-9] == \D  숫자를 제외한 모든 문자
# [0-9A-Za-z] == \w
# [^0-9A-Za-z] == \W
# [ \t\n\r] == \s
# [^ \t\n\r] == \S
```


```python

```


```python
print(re.match("hello", "hello world"))
print(re.match("hello", "world hello world"))
```

    <re.Match object; span=(0, 5), match='hello'>
    None
    


```python
print(re.search("hello", "hello world"))
print(re.search("hello", "world hello world hello"))
print(re.search("[helo]+", "world hello world"))
```

    <re.Match object; span=(0, 5), match='hello'>
    <re.Match object; span=(6, 11), match='hello'>
    <re.Match object; span=(1, 2), match='o'>
    


```python
re.search("hi", "hello, hi")
re.search("^hi", "hello, hi") 
# ^ :~시작하는지 판단, ^hi : hi로 시작하는 문자열
# $ : ~끝나는지 판단, hi$ : hi 로 끝나는 문자열
```


```python
print(re.search("hi", "hello, hi") )
print(re.search("^hi", "hello, hi") )
print(re.search("^hello", "hello, hi") )
print(re.search("hi$", "hello, hi") )

print(re.search("hi|he", "hello, hi")) # | : or

print(re.search("hi|he|good|hello", "hi hello"))
```

    <re.Match object; span=(7, 9), match='hi'>
    None
    <re.Match object; span=(0, 5), match='hello'>
    <re.Match object; span=(7, 9), match='hi'>
    <re.Match object; span=(0, 2), match='he'>
    <re.Match object; span=(0, 2), match='hi'>
    


```python
# * : 0개 이상 있는지 판단
# + : 1개 이상 있는지 판단
```


```python
#print(re.match("[0-9]", "x12a3b"))

#re.match("[0-9]+", "12a3b")

#re.match("[0-9]+", "x12a3b")

res=re.match("[0-9]", "12a3b")
if res:
    print("문자열이 패턴식에 매치가 됐습니다")
else:
    print("매치되지 않았습니다")

```

    문자열이 패턴식에 매치가 됐습니다
    


```python
# x=None
# if x:
#     print("None이 아님")
# else:
#     print("None")
```

    None
    


```python
print(re.match("[0-9]+", "12a3b"))
print(re.match("[0-9]+", "a12a3b")) #None?매치되지 않았다
```

    <re.Match object; span=(0, 2), match='12'>
    None
    


```python
#* : 0개 이상이 매치되는지 확인
print(re.match("[0-9]*", "12a3b")) #0~9까지의 숫자가 0개 이상 매치되는지 확인
print(re.match("[0-9]*", "a12a3b")) #0개가 매치됐으므로 객체가 출력
```

    <re.Match object; span=(0, 2), match='12'>
    <re.Match object; span=(0, 0), match=''>
    


```python
print(re.match("[a-z]*", "a12a3b"))
print(re.match("[a-z]*", "12a3b"))
print(re.match("[a-z]+", "12a3b"))
```

    <re.Match object; span=(0, 1), match='a'>
    <re.Match object; span=(0, 0), match=''>
    None
    


```python
# print(re.match("a", "b"))
# print(re.match("a", "ab"))
# print(re.match("a", "ba"))
# print(re.match("a*", "b"))
# print(re.match("a*", "ab"))
# print(re.match("a*", "aaaaaaaaaaaaaaaaaab"))

# print(re.match("a+", "b"))
# print(re.match("a+", "ab"))
# print(re.match("a+", "aaaaaaaaaaaaaaaaaab"))

print(re.match("a*b", "b")) #a가 0개 이상 나온 후 이어서 b가 나와야 함
print(re.match("a*b", "aaaaaaa")) #
print(re.match("a*b", "aaaaaaabbbbb")) #

print(re.match("a+b", "aaaaaaabbbbb")) #
print(re.match("a+b*", "aaaaaaa"))

print(re.match("a+b+", "aaaaaaa"))
```

    <re.Match object; span=(0, 1), match='b'>
    None
    <re.Match object; span=(0, 8), match='aaaaaaab'>
    <re.Match object; span=(0, 8), match='aaaaaaab'>
    <re.Match object; span=(0, 7), match='aaaaaaa'>
    None
    


```python
re.search("[가-힣]+[0-9]+입니다", "가고싶은100입니다")
re.search("[가-힣]+[0-9]+입니다", "가고싶은입니다")


```


```python
s="가나다 100 라마바 200"
#s에서 숫자를 추출
#re.match(패턴식, s)

#res=re.search("[0-9]+", s)
#res=re.search("\d+", s)


re.findall("[0-9]+", s)
re.findall("\d+", s)
#len(re.findall("\d+", s))
```




    ['100', '200']




```python
# 3.14
# 27.3
# 36

#나이
#re.findall("[0-9]+세","20세 3.14 27.3도 36세")

#도
re.findall("[0-9.]+도","20세 3.14 27.3도 36세 39도 38.5도")
```




    ['27.3도', '39도', '38.5도']




```python
news="""
뜨거운 열기가 계속 쌓여만 가는 느낌인데요.

현재 서울 기온은 34.5도까지 치솟으며 하루 만에 올여름 최고 기온을 경신했습니다.

특히 비공식 기온이지만 서울 강북구 수유동은 무려 37.2도까지 치솟으며 사람 체온을 웃돌고 있습니다.

반면, 대기 불안정으로 동쪽 지방은 호우특보 속에 요란한 소나기가 쏟아지고 있는데요.

시설물 관리와 안전사고에 주의하셔야겠습니다.

전국 대부분 지역에 폭염특보가 계속되는 가운데, 현재 전국에서 가장 더운 곳은 경기도 안성으로, 양성면의 기온이 37.7도까지 치솟았는데요.

서울도 체감 35도 안팎의 찜통더위가 계속되고 있습니다.

찌는 듯한 더위 속에 대기 불안정이 심해지면서 동쪽 내륙을 중심으로는 강한 소나기 구름이 발달하고 있는데요.

강원 남부 내륙과 전북 동부에 호우특보가 내려진 가운데, 내일 새벽까지 돌풍과 벼락을 동반한 시간당 50mm 이상의 장대비가 쏟아지며, 100mm 이상의 강우량을 기록하는 곳도 있겠습니다.

피해 없도록 주변 점검 철저히 해주시기 바랍니다.

내일과 모레도 무더위 속에 기습적인 소나기가 지나겠고요, 일요일 전국에 비가 내린 뒤 다음 주에는 더 심한 더위가 찾아오겠습니다.

연일 계속되는 무더위에 온열 질환에 걸릴 가능성도 커지고 있습니다.

볕이 강한 오후 2~5시 사이 장시간의 야외 활동은 자제하시는 게 좋겠습니다.

YTN 신미림입니다.
"""
```


```python
news
```




    '\n뜨거운 열기가 계속 쌓여만 가는 느낌인데요.\n\n현재 서울 기온은 34.5도까지 치솟으며 하루 만에 올여름 최고 기온을 경신했습니다.\n\n특히 비공식 기온이지만 서울 강북구 수유동은 무려 37.2도까지 치솟으며 사람 체온을 웃돌고 있습니다.\n\n반면, 대기 불안정으로 동쪽 지방은 호우특보 속에 요란한 소나기가 쏟아지고 있는데요.\n\n시설물 관리와 안전사고에 주의하셔야겠습니다.\n\n전국 대부분 지역에 폭염특보가 계속되는 가운데, 현재 전국에서 가장 더운 곳은 경기도 안성으로, 양성면의 기온이 37.7도까지 치솟았는데요.\n\n서울도 체감 35도 안팎의 찜통더위가 계속되고 있습니다.\n\n찌는 듯한 더위 속에 대기 불안정이 심해지면서 동쪽 내륙을 중심으로는 강한 소나기 구름이 발달하고 있는데요.\n\n강원 남부 내륙과 전북 동부에 호우특보가 내려진 가운데, 내일 새벽까지 돌풍과 벼락을 동반한 시간당 50mm 이상의 장대비가 쏟아지며, 100mm 이상의 강우량을 기록하는 곳도 있겠습니다.\n\n피해 없도록 주변 점검 철저히 해주시기 바랍니다.\n\n내일과 모레도 무더위 속에 기습적인 소나기가 지나겠고요, 일요일 전국에 비가 내린 뒤 다음 주에는 더 심한 더위가 찾아오겠습니다.\n\n연일 계속되는 무더위에 온열 질환에 걸릴 가능성도 커지고 있습니다.\n\n볕이 강한 오후 2~5시 사이 장시간의 야외 활동은 자제하시는 게 좋겠습니다.\n\nYTN 신미림입니다.\n'




```python

```
