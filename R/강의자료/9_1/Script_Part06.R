#### 06-2 ####

## -------------------------------------------------------------------- ##
library(dplyr)
exam <- read.csv("Data/csv_exam.csv") # wd가 여기 상위로 설정되어있음. 거기 기준으로 경로 해주면 됨
# 여기 기준으로 잡는 경로라면 ../Data/cs~ 가  되어야 맞지만 설정된 wd기준으로 경로를 쓰면 됨
exam

# exam에서 class가 1인 경우만 추출하여 출력
exam %>% filter(class == 1)  

# 2반인 경우만 추출
exam %>% filter(class == 2)  

# 1반이 아닌 경우
exam %>% filter(class != 1)

# 3반이 아닌 경우
exam %>% filter(class != 3)


## -------------------------------------------------------------------- ##
# 수학 점수가 50점을 초과한 경우
exam %>% filter(math > 50)

# 수학 점수가 50점 미만인 경우
exam %>% filter(math < 50)

# 영어 점수가 80점 이상인 경우
exam %>% filter(english >= 80)

# 영어 점수가 80점 이하인 경우
exam %>% filter(english <= 80)


## -------------------------------------------------------------------- ##
# 1반이면서 수학 점수가 50점 이상인 경우
exam %>% filter(class == 1 & math >= 50)

# 2반이면서 영어 점수가 80점 이상인 경우
exam %>% filter(class == 2 & english >= 80)


## -------------------------------------------------------------------- ##
# 수학 점수가 90점 이상이거나 영어 점수가 90점 이상인 경우
exam %>% filter(math >= 90 | english >= 90)

# 영어 점수가 90점 미만이거나 과학점수가 50점 미만인 경우
exam %>% filter(english < 90 | science < 50)


## -------------------------------------------------------------------- ##
# 1, 3, 5 반에 해당되면 추출
exam %>% filter(class == 1 | class == 3 | class == 5)

exam %>% filter(class %in% c(1,3,5))


## -------------------------------------------------------------------- ##
class1 <- exam %>% filter(class == 1)  # class가 1인 행 추출, class1에 할당
class2 <- exam %>% filter(class == 2)  # class가 2인 행 추출, class2에 할당

mean(class1$math)                      # 1반 수학 점수 평균 구하기
mean(class2$math)                      # 2반 수학 점수 평균 구하기

# ^, ** 제곱
# %/% : 몫
# %% 나머지

#### 06-3 ####

## -------------------------------------------------------------------- ##
exam %>% select(math)                  # math 추출
exam %>% select(english)               # english 추출
exam %>% select(class, math, english)  # class, math, english 변수 추출
exam %>% select(-math)                 # math 제외
exam %>% select(-math, -english)       # math, english 제외


m <- as.data.frame(mpg)
head(m,5)
# drv가 f인 자료만 추출
m %>% filter(drv=='f')

# cyl이 4이면서 drv가 f인 자료만 추출
m %>% filter(cyl==4 & drv=='f')

# drv가 f또는 r이면서 year가 2000보다 큰 자료만 추출
m %>% filter((drv=='f' | drv=='r') & year > 2000)
m %>% filter((drv %in% c('f','r')) & year > 2000)

head(m, 5)
# cyl이 4 또는 6인 자료에 대해 trans 열과 fl 열을 제외한 나머지 열을 출력력
m %>% filter(cyl %in% c(4,6)) %>% select(-trans, -fl)
m %>% filter(cyl %in% c(4,6))

head(m,5)
# cty와 hwy열에 대해 내림차순 정렬
m %>% arrange(desc(cty), desc(hwy))

# manufacturer가 volkswagen인 데이터에 대해 hwy 내림차순 정렬
head(m %>% filter(company == 'volkswagen') %>% arrange(desc(hwy)), 10)
m
## -------------------------------------------------------------------- ##
exam
# class가 1인 행만 추출한 다음 english 추출
exam %>% filter(class == 1) %>% select(english)

exam %>%
  filter(class == 1) %>%  # class가 1인 행 추출
  select(english)         # english 추출

exam %>% 
  select(id, math) %>%    # id, math 추출
  head                    # 앞부분 6행까지 추출

exam %>% 
  select(id, math) %>%  # id, math 추출
  head(10)              # 앞부분 10행까지 추출


#### 06-4 ####

## -------------------------------------------------------------------- ##
exam %>% arrange(math)         # math 오름차순 정렬
exam %>% arrange(desc(math))   # math 내림차순 정렬
exam %>% arrange(class, math)  # class 및 math 오름차순 정렬


#### 06-5 ####

## -------------------------------------------------------------------- ##
exam %>%
  mutate(total = math + english + science) %>%  # 총합 변수 추가
  head                                          # 일부 추출

exam %>%
  mutate(total = math + english + science,         # 총합 변수 추가
         mean = (math + english + science)/3) %>%  # 총평균 변수 추가
  head                                             # 일부 추출

exam %>%
  mutate(total = math + english + science,         # 총합 변수 추가
         mean = (total)/3) %>%  # 총평균 변수 추가
  head 

exam %>%
  mutate(test = ifelse(science >= 60, "pass", "fail")) %>%
  head

exam %>%
  mutate(total = math + english + science) %>%  # 총합 변수 추가
  arrange(total) %>%                            # 총합 변수 기준 정렬
  head                                          # 일부 추출

# class가 compact 이면서 year가 2000 이상인 자료에 대해
# cty와 hwy에 대한 합을 구하여 total열을 생성하여 저장
# total 열을 기준으로 내림차순 정렬하여 출력

head(m %>% filter(class == 'compact' & year >= 2000) %>% mutate(total = cty + hwy) %>% arrange(total),5)
#### 06-6 ####

mpg = ggplot2::mpg
mpg
m <- as.data.frame(mpg)
m
head(m %>% filter(class == 'compact' & year >= 2000) %>% mutate(total = cty + hwy) %>% arrange(desc(total)),5)

# 데이터 분할(그룹화) -> 각 그룹별 분석 적용 -> 결과들을 병합
# group_by() : 그룹화 함수, 인수로 범주형 변수가 들어감
# summarise() : 그룹별로 요약


## -------------------------------------------------------------------- ##
exam %>% summarise(mean_math = mean(math))  # 1개의 그룹, math 평균 산출
exam
exam %>% 
  group_by(class) %>%                   # class별로 분리
  summarise(mean_math = mean(math))     # math 평균 산출

exam %>% 
  group_by(class) %>%                   # class별로 분리
  summarise(mean_math = mean(math),     # math 평균
            sum_math = sum(math),       # math 합계
            median_math = median(math), # math 중앙값
            n = n())                    # 학생 수

mpg %>%
  group_by(manufacturer, drv) %>%       # 회사별, 구동방식별 분리
  summarise(mean_cty = mean(cty), n = n()) # cty 평균 산출
  %>% head(10)    
                                # 일부 출력

# 통계함수 적용할 데이터에 NaN이 있으면 NaN이 결과로 나옴
# na.rm = True로 NaN을 제외하고 연산을 할 수 있음
data<-c(1,2,3,4,5,NaN)
mean(data, na.rm = TRUE)

## -------------------------------------------------------------------- ##
mpg %>%
  group_by(manufacturer) %>%           # 회사별로 분리
  filter(class == "suv") %>%           # suv 추출
  mutate(tot = (cty+hwy)/2) %>%        # 통합 연비 변수 생성
  summarise(mean_tot = mean(tot)) %>%  # 통합 연비 평균 산출
  arrange(desc(mean_tot)) %>%          # 내림차순 정렬
  head(5)                              # 1~5위까지 출력


mpg %>%
  group_by(manufacturer)%>%           # 회사별로 분리
  filter(class == "suv")%>%           # suv 추출
  mutate(tot = (cty+hwy)/2)       # 통합 연비 변수 생성
 
#### 06-7 ####

## -------------------------------------------------------------------- ##
# 중간고사 데이터 생성
test1 <- data.frame(id = c(1, 2, 3, 4, 5),           
                    midterm = c(60, 80, 70, 90, 85))
test1
# 기말고사 데이터 생성
test2 <- data.frame(id = c(1, 2, 3, 4, 5),           
                    final = c(70, 83, 65, 95, 80))

test1  # test1 출력
test2  # test2 출력

total <- left_join(test1, test2, by = "id")  # id 기준으로 합쳐서 total에 할당
total                                        # total 출력


## -------------------------------------------------------------------- ##
name <- data.frame(class = c(1, 2, 3, 4, 5),
                   teacher = c("kim", "lee", "park", "choi", "jung"))
name
exam
exam_new <- left_join(exam, name, by = "class")
exam_new


## -------------------------------------------------------------------- ##
# 학생 1~5번 시험 데이터 생성
group_a <- data.frame(id = c(1, 2, 3, 4, 5),
                      test = c(60, 80, 70, 90, 85))

# 학생 6~10번 시험 데이터 생성
group_b <- data.frame(id = c(6, 7, 8, 9, 10),
                      test = c(70, 83, 65, 95, 80))

group_a  # group_a 출력
group_b  # group_b 출력

group_all <- bind_rows(group_a, group_b)  # 데이터 합쳐서 group_all에 할당
group_all                                 # group_all 출력

# ctrl + c + l => console 클리어

m
# cty 열을 제곱한 결과를 cty2에 저장
# cty2열에서 hwy열 값을 뺀 결과를 cty_hwy에 저장
# year 기준으로 그룹화
# 각 그룹별로 cty_hwy열에 대해 평균 구하고 내림차순 정렬하여 출력
m %>% 
  mutate(cty2 = cty^2) %>% 
  mutate(cty_hwy = cty2 - hwy) %>% 
  group_by(year)
m

m %>% 
  mutate(cty2 = cty^2) %>% 
  mutate(cty_hwy = cty2 - hwy) %>% 
  group_by(year) %>% 
  summarise(mean_cty_hwy = mean(cty_hwy)) %>% 
  arrange(desc(mean_cty_hwy))


# 데이터 합치기
# rbind(), cbind(), left_join(), right_join(), full_join(), inner_join()
# 행을 합친다 rbind(), 열의 개수와 열의 이름이 동일 해야함 
# 열을 합친다 cbind(), 행의 개수가 동일해야함

# join : 키를 기준으로 합친다

# inner_join : 두 데이터의 교집함,
# full_join : 두 데이터의 합집합, 두데이터 모두를 기준으로 합침
# left_join : 왼쪽애 기준으로 합침
# right_join : 오른쪽 기준으로 합침

d1<-data.frame(v1=c('a', 'b', 'c', 'd'), v2=c(2,4,5,6))
d2<-data.frame(v1=c('x', 'y', 'z'), v2=c(33,44,55))
d1
d2
rbind(d1, d2)

d1<-data.frame(v1=c('a', 'b', 'c', 'd'), v2=c(2,4,5,6))
d2<-data.frame(v1=c('x', 'y', 'z'), v3=c(33,44,55))
d1
d2
rbind(d1, d2)

d1<-data.frame(v1=c('a', 'b', 'c', 'd'), v2=c(2,4,5,6))
d2<-data.frame(v1=c('x', 'y', 'z'), v2=c(33,44,55), v3=c(33,44,55))
d1
d2
rbind(d1, d2)

d3<-data.frame(v1=c('a', 'b', 'c', 'd'), v2=c(2,4,5,6))
d4<-data.frame(v1=c('x', 'y', 'z'), v2=c(33,44,55))
d3
d4
cbind(d3, d4)

d3<-data.frame(v1=c('a', 'b', 'c', 'd'), v2=c(2,4,5,6))
d4<-data.frame(v1=c('x', 'y', 'z', 'r'), v2=c(33,44,55,66))
d3
d4
cbind(d3, d4)

df1<-data.frame(name=c('A', 'B', 'C', 'D'),
                math=c(80, 90, 95, 100))
df2<-data.frame(name=c('E', 'A', 'B', 'F', 'G'),
                eng=c(90, 80, 90, 95, 100))

df1
df2

str(df1)
str(df2)
# dplyr의 join

# name열을 기준으로 합쳐보자
# inner : 두 데이터의 교집합 추출
inner_join(df1, df2) # 자동으로 name 열 기준으로 합쳤음
inner_join(df1, df2, by='name')
full_join(df1, df2) 
res<-full_join(df1, df2, by='name') 

sum(res$math)
mean(res$math)

sum(res$math, na.rm = TRUE)
mean(res$math, na.rm = TRUE)

# 왼쪽 데이터프레임을 기준으로 합친다
left_join(df1, df2, by='name')
?left_join

# 오른쪽 데이터프레임을 기준으로 합친다
right_join(df1, df2)


## -------------------------------------------------------------------- ##
## 1.조건에 맞는 데이터만 추출하기
exam %>% filter(english >= 80)

# 여러 조건 동시 충족
exam %>% filter(class == 1 & math >= 50)

# 여러 조건 중 하나 이상 충족
exam %>% filter(math >= 90 | english >= 90)
exam %>% filter(class %in% c(1,3,5))


## 2.필요한 변수만 추출하기
exam %>% select(math)
exam %>% select(class, math, english)

## 3.함수 조합하기, 일부만 출력하기
exam %>%
  select(id, math) %>%
  head(10)

## 4.순서대로 정렬하기
exam %>% arrange(math)         # 오름차순 정렬
exam %>% arrange(desc(math))   # 내림차순 정렬
exam %>% arrange(class, math)  # 여러 변수 기준 오름차순 정렬

## 5.파생변수 추가하기
exam %>% mutate(total = math + english + science)

# 여러 파생변수 한 번에 추가하기
exam %>%
  mutate(total = math + english + science,
         mean = (total)/3)

# mutate()에 ifelse() 적용하기
exam %>% mutate(test = ifelse(science >= 60, "pass", "fail"))

# 추가한 변수를 dplyr 코드에 바로 활용하기
exam %>%
  mutate(total = math + english + science) %>%
  arrange(total)


## 6.집단별로 요약하기
exam %>%
  group_by(class) %>%
  summarise(mean_math = mean(math))

# 각 집단별로 다시 집단 나누기
mpg %>%
  group_by(manufacturer, drv) %>%
  summarise(mean_cty = mean(cty))


## 7.데이터 합치기
# 가로로 합치기
total <- left_join(test1, test2, by = "id")

# 세로로 합치기
group_a
group_b
group_all <- bind_rows(group_a, group_b) # 행으로 합친다
group_all
rbind(group_a, group_b)
rbind
v1 = c(1,2,3,4,5)
v2 = c(1,2,3,4,5)
rbind(v1,v2)                    # rbind, cbind는 벡터, 매트릭스, 데이터프레임 아무거나 연결함, 데이터프레임에서 열 동일해야함

bind_rows(v1, v2)               # bind_rows, bind_cols는 벡터 못합침, 근데 대신 데이터프레임에서 열 달라도 그냥 합침
bind_rows(group_a, group_b)
group_b
group_b <- rename(group_b, "t"="test")
group_b
rbind(group_a, group_b)
bind_rows(group_a, group_b)
