# 1. 시험 점수 변수 만들고 출력하기
scores = c(80, 60, 70, 50, 90)

# 2. 전체 평균 구하기
mean(scores)

# 3. 전체 평균 변수 만들고 출력하기
overall_mean = mean(scores)
overall_mean

# 4. data.frame()과 c()를 조합해서 표의 내용을 데이터 프레임으로 만들어 출력해보세요.'
# 제품 가격 판매량
# 사과 1800 24
# 딸기 1500 38
# 수박 3000 13
df = data.frame(제품 = c("사과", "딸기", "수박"),
           가격 = c(1800, 1500, 3000),
           판매량 = c(24, 38, 13))
df

# 5. 앞에서 만든 데이터 프레임을 이용해서 과일 가격 평균, 판매량 평균을 구해보세요

mean(df$가격)
mean(df$판매량)

# 6. mpg 데이터의 변수명은 긴 단어를 짧게 줄인 축약어로 되어있습니다. 
# cty 변수는 도시 연비, hwy 변수는고속도로 연비를 의미합니다. 
# 변수명을 이해하기 쉬운 단어로 바꾸려고 합니다. 
# mpg 데이터를 이용해서 아래 문제를 해결해 보세요.

# Q1. ggplot2 패키지의 mpg 데이터를 사용할 수 있도록 불러온 뒤 복사본을 만드세요.
m <- ggplot2::mpg
m <- as.data.frame(m)
m

# Q2. 복사본 데이터를 이용해서 cty는 city로, hwy는 highway로 변수명을 수정하세요.
m <- rename(m, "city"="cty", "highway"="hwy")
m

# Q3. 자동차 배기량에 따라 고속도로 연비가 다른지 알아보자
# displ(배기량)이 4 이하인 자동차와 5 이상인 자동차 중 어떤 자동차의 hwy(연비)가 평균적으로 높은가?
less_than_4 <- m %>% filter(displ <= 4)
hwy_mean_of_less_than_4 <- less_than_4 %>% summarise(hwy_mean_of_less_than_4 = mean(highway))

more_than_5 <- m %>% filter(displ >= 5)
hwy_mean_of_more_than_5 <- more_than_5 %>% summarise(hwy_mean_of_more_than_5 = mean(highway))

data.frame(hwy_mean_of_less_than_4, hwy_mean_of_more_than_5)
# 4이하 : 25.96319
# 5이상 : 18.07895
# 4이하가 평균적으로 연비가 높다

# Q5. 자동차 제조 회사에 따라 도시 연비가 다른지 알아보자. 
# "audi"와 "toyota" 중 어느 manufacturer의 cty가 평균적으로 높은지 알아 보자.
m %>% filter(manufacturer=="audi") %>% summarise(mean(city))
m %>% filter(manufacturer=="toyota") %>% summarise(mean(city))


# Q6. 자동차 종류에 따라 도시 연비가 다른지 알아보자. 
# class가 "suv"인 자동차와 "compact"인 자동차 중 어떤 자동차의 cty가 더 높은지 알아보자.
suv_city <- m %>% filter(class == "suv") %>% summarise(suv_city = mean(city))
suv_city

compact_city <- m %>% filter(class == "compact") %>% summarise(compact_city = mean(city))
compact_city
  
# suv의 평균 연비 : 13.5
# compact의 평균 연비 : 20.12766


# 7.
s = read.csv(file="Data/005930.KS.csv")
# 7.1 Open, High, Low, Close, Adj.Close, Volume 열을 추출
s<-s %>% select(-Date)
df = data.frame(s)
df
# 7.2 각 열에 대해 최소값, 최대값, 평균, 표준편차 출력
mean_of_cols <- apply(df, 2, mean)
max_of_cols <- apply(df, 2, max)
sd_of_cols <- apply(df, 2, sd)

# 7.3 각 열에 대해 정규화 / 표준화
# 정규화 = (각 데이터 - 최소값)  / (최대값 - 최소값)
# 표준화 = (각데이터-평균)/표준편차
normalization = function(x){
  result = (x - min(x)) / (max(x) - min(x))
  return(result)
}
standardization = function(x){
  result = (x - mean(x)) / sd(x)
  return(result)
}
normalized <- apply(df, 2, normalization)
normalized

standardized <- apply(df, 2, standardization)
standardized


# scale(x, center = TRUE, scale = TRUE)
# scale(데이터, center = T, scale = T) => center = T, scale = T : 표준화
standardized2 <- transform(df, Open = scale(df$Open),
                           High = scale(df$High),
                           Low = scale(df$Low),
                           Close = scale(df$Low),
                           Adj.Close = scale(df$Adj.Close),
                           Volume = scale(df$Volume))
standardized2



# scale(데이터, center = 값1, scale = 값2)
# 정규화 : center = min(데이터), scale = max(데이터) - min(데이터)
min_of_cols <- apply(df, 2, min)
max_of_cols
normalized2 <- transform(df, Open = scale(df$Open, center = min_of_cols["Open"], scale = (max_of_cols["Open"] - min_of_cols["Open"])),
                         High = scale(df$High, center = min_of_cols["High"], scale = (max_of_cols["High"] - min_of_cols["High"])),
                         Low  = scale(df$Low , center = min_of_cols["Low"], scale = (max_of_cols["Low"] - min_of_cols["Low"])),
                         Close  = scale(df$Close , center = min_of_cols["Close"], scale = (max_of_cols["Close"] - min_of_cols["Close"])),
                         Adj.Close  = scale(df$Adj.Close , center = min_of_cols["Adj.Close"], scale = (max_of_cols["Adj.Close"] - min_of_cols["Adj.Close"])))

normalized2

# 7.4 Low 열과 High 열 각각에 대해 최대 낙차 출력
df_low <- df$Low
df_high <- df$High

len_of_df_low <- length(df_low)
len_of_df_high <- length(df_high)

max_fall_of_low_col = 0
max_fall_of_high_col = 0

for(i in 2:len_of_df_low){
  fall = abs(df_low[i] - df_low[i-1])
  if(fall > max_fall_of_low_col){
    max_fall_of_low_col = fall
  }
}

for(i in 2:len_of_df_high){
  fall = abs(df_high[i] - df_high[i-1])
  if(fall > max_fall_of_high_col){
    max_fall_of_high_col = fall
  }
}
max_fall_of_low_col
max_fall_of_high_col
