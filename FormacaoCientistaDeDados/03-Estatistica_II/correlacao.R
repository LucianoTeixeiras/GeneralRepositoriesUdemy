# Correlacao

dim(cars)

head(cars)

cor(cars)

# Craindo um Modelo

modelo = lm(speed ~ dist, data = cars)

modelo

plot(modelo)

plot(speed ~ dist, data = cars)

abline(modelo)

modelo$coefficients

modelo$coefficients[1] + modelo$coefficients[2] * 22

predict(modelo, data.frame(dist=22))

summary(modelo)

modelo$coefficients

modelo$residuals

modelo$fitted.values

plot(modelo$fitted.values, cars$dist)


  