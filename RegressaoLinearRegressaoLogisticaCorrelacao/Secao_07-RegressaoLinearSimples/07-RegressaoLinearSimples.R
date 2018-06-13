# Regressão Linear Simples - Prática

# Dimençao do fram cars
dim(cars)

# Mostra os 6 primeiros registros
head(cars)

# Informa o resmo do frame
summary(cars)

# Exibe a correlação
cor(cars)

modelo <- lm(speed ~ dist, data=cars)

modelo

plot(speed ~ dist, data=cars)

abline(modelo)

#Previsão de para de 22 

modelo$coefficients[1] + (modelo$coefficients[2] * 22)

# Função predict raz a mesmo valor da previsão acima

predict(modelo, data.frame(dist=22))

