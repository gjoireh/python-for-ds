mean(rnorm(100))

sd(rnorm(100))

class(rnorm(100))

x = matrix(rnorm(100), nrow=5) # 5행 20열
x # 5행 20열 : (5건의 데이터, 20차원 데이터라고 가정)

# 첫번째 데이터(점)의 좌표 예시
dist(x) # 각 데이터간의 거리

x1 = c(10,20,1,2,3,4)
y1 = c(5,6,7,8,9,10)

a = rbind(x1,y1)
a
dist(a)


teens = read.csv('./Data/snsdata.csv')

str(teens)
table(teens$gender)

table(teens$gender, useNA = 'ifany')
summary(teens$age)

# 최소나이 3, 최대나이 106같은 아웃라이어 제거
teens$age = ifelse(teens$age>=13 & teens$age<20, teens$age, NA)
summary(teens$age)

# 평균 계산시 na.rm = TRUE
mean(teens$age, na.rm = TRUE)

# NA가 계산이 안됨
ifelse(teens$gender=='F',1,0)

teens$gender
#NA를 M 또는 F로 대체

# 여성이면1 아니면 0 (남성, NA)
teens$female = ifelse(teens$gender=='F' & !is.na(teens$gender),1,0)
table(teens$female)

# gender열이 na면 1
teens$no_gender = ifelse(is.na(teens$gender),1,0)
table(teens$no_gender)

table(teens$gender, useNA = "ifany")
table(teens$female, useNA = "ifany")
table(teens$no_gender, useNA = "ifany")



str(teens)

aggregate(data=teens, age ~ gradyear, mean) # (data= data, 열에 대해 ~ 열 기준으로, ㅁ을 구함)

# gradyear 기준으로 age 평균
aggregate(data=teens, age ~ gradyear, mean, na.rm=TRUE) # (data= data, 열에 대해 ~ 열 기준으로, ㅁ을 구함)

# gradyear 기준으로 age 평균
avg_age = ave(teens$age, teens$gradyear, FUN=function(x) mean(x, na.rm=TRUE))
#(기준열 기준으로 함수를 적용한 값으로 채울 열), 기준 열, 적용 함수)

teens$age = ifelse(is.na(teens$age), avg_age, teens$age)

summary(teens$age)


head(teens, 5)

interests = teens[5:40]

# 5개 클러스터 생성

# 각 열에 대하여 최소값, 최대값 출력
apply(interests, 2, min)
apply(interests, 2, max)

summary(interests)

# 표준화
interests_z = scale(interests)
interests_z

interests_z2 = lapply(interests, scale) # 표준화 결과를 list로 반환환
interests_z2

head(interests_z, 5)
head(interests_z2, 5)

summary(interests$basketball)
summary(interests_z2$basketball)

set.seed(12345)
teen_clusters = kmeans(interests_z, 5)

teen_clusters$withinss
# between_ss : 클러스터간의 분산 정도 -> 클수록 클러스터링이 잘 된것
# within_ss : 클러스터 내 데이터의 분산 정도 -> 작을수록 클러스터링이 잘된것임

# total_ss = between_ss + within_ss

# 위 내용에 따라  (between_SS / total_SS =  11.2 %)는 클수록 좋은 값이됨

teens$cluster = teen_clusters$cluster

head(teens, 5)

# insight 추출(클러스터의 특징을 추출)
aggregate(data=teens, age ~ cluster, mean) # cluster열 기준으로 age 열의 평균을 구함

aggregate(data=teens, female ~ cluster, mean)

aggregate(data=teens, friends ~ cluster, mean)

aggregate(data=teens, gradyear ~ cluster, mean)

teens


# 홍길동 = (0.75, -0.1, ... , -0.08) (표준화된 값)
# 클러스터의 중심점들중 가장 가까운 중심점에 속함
teen_clusters$centers # 1 : (basketball, football, ... drunk, drugs) 1번의 좌표
                      # 2 : (basketball, football, ... drunk, drugs) 2번의 좌표
                      # ...
                      # 5 : (basketball, football, ... drunk, drugs) 5번의 좌표
