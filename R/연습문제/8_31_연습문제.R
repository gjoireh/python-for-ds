# Q1 시험 점수 변수 만들고 출력하기
exam_score = c(80,60,70,50,90)
exam_score

# Q2
mean(exam_score)

# Q3
overall_mean = mean(exam_score)
overall_mean


library(ggplot2)
# 문제 1.
# ggplot2 의 midwest 데이터를 데이터 프레임 형태로 불러와서 데이터의 특성을 파악하세요.
df_midwest = as.data.frame(midwest)
df_midwest

View(df_midwest)
str(df_midwest)
summary(df_midwest)

# 문제 2.
# poptotal(전체 인구)을 total 로, popasian(아시아 인구)을 asian 으로 변수명을 수정하세요.
df_midwest <- rename(df_midwest, total = poptotal)
df_midwest <- rename(df_midwest, asian = popasian)

# 문제 3.
# total, asian 변수를 이용해 '전체 인구 대비 아시아 인구 백분율' 파생변수를 만들고, 히스토그램을
# 만들어 도시들이 어떻게 분포하는지 살펴보세요.
df_midwest$asian_percentage <- (df_midwest$asian / df_midwest$total) * 100
hist(df_midwest$asian_percentage)

# 문제 4.
# 아시아 인구 백분율 전체 평균을 구하고, 평균을 초과하면 "large", 그 외에는 "small"을 부여하는
# 파생변수를 만들어 보세요.
mean_of_asian_percentages = mean(df_midwest$asian_percentage)
mean_of_asian_percentages

df_midwest$large_or_smaller_than_mean <- ifelse(df_midwest$asian_percentage
                                                > mean_of_asian_percentages,
                                                "large", "small")

df_midwest

# • 문제 5.
# "large"와 "small"에 해당하는 지역이 얼마나 되는지, 빈도표와 빈도 막대 그래프를 만들어 확인해
# 보세요.

table(df_midwest$large_or_smaller_than_mean)
qplot(df_midwest$large_or_smaller_than_mean)
