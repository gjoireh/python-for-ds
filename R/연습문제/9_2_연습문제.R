iris

# 150건의 데이터
# 1 ~ 100번까지 Petal.Length Petal.Width 데이터 추출
# 회귀모델 => x : Petal.Length y : Petal.Width
# 회귀모델의 기울기, 절편 구함

# 101번 ~ 150번까지 Petal.Length Petal.Width 데이터 추출
# 아까 구한 회귀모델 기울기, 절편을 이용해서 
# Petal.Length를 입력 했을때 petal.width를 예측하여 출력
# cost도 함께 출력 cost == (예측값 - 실제값)^2 의 평균

data1 <- iris[1:100, c('Petal.Length', 'Petal.Width')]


res = lm(Petal.Width ~ Petal.Length ,data1)
w = res$coefficients[2]
b = res$coefficients[1]

# x = data1$Petal.Length
# y = data1$Petal.Width
# w<-cor(x,y) * (sd(y) / sd(x))
# b<-mean(y) - w*mean(x)

data2 <- iris[101:150, c('Petal.Length', 'Petal.Width')]

get_predic_petal_width_and_cost <- function(w, b, petal_length, origin_petal_width){
  predict_petal_width = w * petal_length + b
  cost = mean((predict_petal_width - origin_petal_width)^2)
  
  ret = list(petalwidth = predict_petal_width, cost=cost)
  return(ret)
}
petal_width_and_cost = get_predic_petal_width_and_cost(w, b, data2$Petal.Length, data2$Petal.Width)
print(petal_width_and_cost$petalwidth)
sprintf("cost : %f", petal_width_and_cost$cost)


