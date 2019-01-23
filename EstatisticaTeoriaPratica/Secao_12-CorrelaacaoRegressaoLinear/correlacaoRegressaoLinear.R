# Correlação e Regressão Linear

cars

cor(cars)

modelo = lm(speed ~ dist, data = cars)

modelo

plot(speed ~ dist, data = cars)

abline(modelo)

predict(modelo, data.frame(dist=22))

# Quiz

women

cor(women)

modelo = lm(height ~ weight, data = women)

modelo

predict(modelo, data.frame(weight=124))
