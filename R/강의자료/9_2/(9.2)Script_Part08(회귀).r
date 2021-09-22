#### 08-2 ####

## -------------------------------------------------------------------- ##
library(ggplot2)

# x축 displ, y축 hwy로 지정해 배경 생성
ggplot(data = mpg, aes(x = displ, y = hwy))

# 배경에 산점도 추가
ggplot(data = mpg, aes(x = displ, y = hwy)) + geom_point()

# x축 범위 3~6으로 지정
ggplot(data = mpg, aes(x = displ, y = hwy)) + geom_point() + xlim(3, 6)

# x축 범위 3~6, y축 범위 10~30으로 지정
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() + 
  xlim(3, 6) + 
  ylim(10, 30)


#### 08-3 ####

## -------------------------------------------------------------------- ##
library(dplyr)

df_mpg <- mpg %>% 
  group_by(drv) %>%
  summarise(mean_hwy = mean(hwy))

df_mpg

ggplot(data = df_mpg, aes(x = drv, y = mean_hwy)) + geom_col()

ggplot(data = df_mpg, aes(x = reorder(drv, -mean_hwy), y = mean_hwy)) + geom_col()

ggplot(data = mpg, aes(x = drv)) + geom_bar()

ggplot(data = mpg, aes(x = hwy)) + geom_bar()


#### 08-4 ####

## -------------------------------------------------------------------- ##
ggplot(data = economics, aes(x = date, y = unemploy)) + geom_line()


#### 08-5 ####

## -------------------------------------------------------------------- ##
ggplot(data = mpg, aes(x = drv, y = hwy)) + geom_boxplot()


## -------------------------------------------------------------------- ##
## 1.산점도
ggplot(data = mpg, aes(x = displ, y = hwy)) + geom_point()

# 축 설정 추가
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  xlim(3, 6) +
  ylim(10, 30)


## 2.평균 막대 그래프

# 1단계.평균표 만들기
df_mpg <- mpg %>%
  group_by(drv) %>%
  summarise(mean_hwy = mean(hwy))

# 2단계.그래프 생성하기, 크기순 정렬하기
ggplot(data = df_mpg, aes(x = reorder(drv, -mean_hwy), y = mean_hwy)) + geom_col()


## 3.빈도 막대 그래프
ggplot(data = mpg, aes(x = drv)) + geom_bar()

## 4.선 그래프
ggplot(data = economics, aes(x = date, y = unemploy)) + geom_line()

## 5.상자 그림
ggplot(data = mpg, aes(x = drv, y = hwy)) + geom_boxplot()


mydata <- read.csv('Data/examscore.csv', header = TRUE)
mydata[,3]
mydata$midterm

mytable <- table(mydata$gender)
mytable# 종류별로 몇개?

names(mytable) # 종류만

pie(mytable, labels = names(mytable), main = 'pie chart')
pie(mytable, labels = c('여성', '남성성'), main = 'pie chart')
pie(mytable, labels = names(mytable), main = 'pie chart')
text(0.3,0.3, "33.33%") # (x,y,"문자열") x,y 위치에 문자열을 출력
text(-0.3,-0.3, "446.67%")
?text
plot(mydata$midterm, mydata$final, xlab = "중간점수수", ylab="기말고사", main='제목목')


mean(mydata$midterm)
hist(mydata$midterm)

abline(v=mean(mydata$midterm), col='red') # v = 값 값의 위치에 선을 하나 그림
abline(v=median(mydata$midterm), col='blue')

quantiles = quantile(mydata$midterm)
quantiles['75%']
quantiles

var(mydata$midterm)
sd(mydata$midterm)

mydata$final
res <- table(mydata$final)
print(names(sort(-res)[1]))

myMode <- function(x){
  temp <- table(x)
  temp = sort(-temp)
  print(names(temp[1]))
}

myMode(mydata$final)


rep(0, 10) # 0을 10번 반복

a<-c(1:10)
a
a[1:5]<-c(5,3,1,4,2)
a

a<5
a[a<5] <- "low"
a

a[a>=5] <- "high"
a

a<-c(1:10)
a
a[1:5]<-c(5,3,1,4,2)
a
ifelse(a>=5, 'high', 'low')

mydata$midterm
mydata$final
# 두 변수의 상관 계수

cor(mydata$midterm, mydata$final)

plot(mydata$midterm, mydata$final)
abline(v=mean(mydata$midterm))
abline(h=mean(mydata$final))

zx <- (mydata$midterm - mean(mydata$midterm)) / sd(mydata$midterm)
zy <- (mydata$final - mean(mydata$final)) / sd(mydata$final)

sum(zx*zy) / (length(mydata$midterm)-1) # x와 y의 상관계수

sign(zx*zy) # 양수면 1, 음수면 -1이 나옴

as.factor(sign(zx*zy)) # 범주를 만듬 범주 : 1과 -1
c('blue', 'red')[as.factor(sign(zx*zy))]

plot(mydata$midterm, mydata$final, col=c('blue', 'red')[as.factor(sign(zx*zy))])
abline(v=mean(mydata$midterm))
abline(h=mean(mydata$final))


# 회귀분석 : 독립변수(x)로 종속변수(y)를 예측
# 혼입변수 : 모델에는 포함되지 않지만, 종속변수에 영향을 미치는 변수

# 선형 회귀분석 : 독립변수와 종속변수간에 직선 관계가 있다
# 선형이란? 독립변수가 증가하면, 종속변수가 증가 / 감소

# 종속변수(y) = 기울기(w) * 독립변수(x) + 절편(b)

# w : 회귀계수, 독립변수 x가 1씩 증가한다면 y는 w만큼 증가한다
# 절편 : 독립변수가 0일때의 종속변수

# 회귀 분석을 하는 이유?
# 회귀모델 -> 예측


cars

plot(cars$speed, cars$dist)

scatter.smooth(cars) # 추세선

# 이상치, outliers가 있으면 회귀분석 결과가 왜곡됨
# 그래서 회귀분석 하기 전에 이상치를 처리해줘야함

par(mfrow=c(1,2)) # 1행 2열열
boxplot(cars$speed, main='speed')
boxplot(cars$dist, main='dist')

# dist에 outlier가 하나 있다

# 선형회귀분석은 독립변수와 종속변수가 정규분포를 따를 때 잘 됨

# 정규분포 확인
# 그래프를 그려서 확인해봄
plot(density(cars$speed), main = 'speed')
plot(density(cars$dist), main='dist')

# 왜도 첨도

install.packages("e1071")
library(e1071)
skewness(cars$speed) # 왜도, 데이터가 한쪽으로 치우친 정도
skewness(cars$dist)
kurtosis(cars$speed) # 첨도
kurtosis(cars$dist)

# 왜도가 0, 첨도가 1일때가 완전한 정규분포


# lm함수 : 회귀분석
# 종속변수 ~ 독립변수
lm(dist~speed, data=cars)

# 3.932 * speed + (-17.579) = dist

model = lm(dist~speed, data=cars)
summary(model)

# Residuals(잔차) : 실제값 - 예측값

# Coefficients(회귀계수)
# Estimate : 추정치
# Pr(>|t|) : 0.05 이하면 유의한 결과
# Multiple R-squared : 모델이 얼마나 적절한가
# 0.6511 => speed가 dist의 분산을 65%정도 설명한다
# Adjusted R-squared : 다중 회귀분석에서 사용

# F-statistic: 89.57 on 1 and 48 DF,  p-value: 1.49e-12
# F-statistic 에서 p-value가 0.05보다 작으면 유의미한 예측 결과이다


# 0+는 절편을 제거
model = lm(dist~0+speed, data=cars)
summary(model)


mydata
par(mfrow=c(1,1)) # 1행 1열
plot(mydata$midterm, mydata$final)
abline(5, 1) # (y절편, 기울기), y = 1 * x + 5

abline(20, 1)

# 잔차 (residual) : 예측값 - 실제값
# RSS(residual sum of square) : 잔차 제곱의 합

mydata[, 3:4] #3번~4번열열

rss<-function(data, line_info){
  x<-data[,1] # 독립변수
  y<-data[,2] # 종속변수
  intercept<-line_info[1] # 임의의 회귀모델의 절편
  slope<-line_info[2] # 임의의 회귀모델의 기울기
  
  Hx<-slope*x+intercept
  result<-sum((y-Hx)^2)
  return(result)
  # print(Hx) # 예측 기말 점수
  # print(y)
  # print(y-Hx) # Error
  # print(sum((y-Hx)^2)) # Error의 제곱들의 합 = cost
  # 회귀모델의 목표는 cost를 최소로 하는 slope(w)와  intercept(b)를 찾는것
}



# 가상의 회귀모델 : y = 1 * x + 5
# 가상의 회귀모델에 대한 RSS를 출력해보자
rss(mydata[, 3:4], c(5, 1))

res<-optim(par=c(1,1), fn=rss, data=mydata[, 3:4]) # par=절편, 기울기
# [1] 13.8833436  0.8967623 절편, 기울기 인 경우가 가장 cost가 작았다

# 그리고 그때의 cost가 5712.789이다


print(res)

# -------------------------------------------------------
lm(final ~ midterm ,mydata) #(종속 ~ 독립변수, 데이터)
# (Intercept)(b)               midterm  
# 13.8866(b)       0.8967  (w)
# -------------------------------------------------------

# 회귀모델 목표 기울기(w) = x와 y의 상관계수 * (y의 표준편차/ x의 표준편차)
x<-mydata$midterm
y<-mydata$final
w<-cor(x,y) * (sd(y) / sd(x))

# -------------------------------------------------------
# 회귀모델 목표 절편(b) = y의 평균 - 기울기 * x의 평균
b<-mean(y) - w*mean(x)
b

# 예측 테스트
# 어떤 사람이 중간고사를 85점 받았다면 기말고사는 몇점 맞을까?
predict_y = w*85+b
predict_y

res = lm(final ~ midterm ,mydata) # Intercept가 절편임
res$coefficients[1]
res$coefficients[2]

