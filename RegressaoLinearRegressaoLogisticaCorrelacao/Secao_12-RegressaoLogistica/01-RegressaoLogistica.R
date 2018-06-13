# Regressão Logística

# Importando Dataset

library(readr)
eleicao <- read_delim("Eleicao.csv", ";", 
                      escape_double = FALSE, trim_ws = TRUE)
View(eleicao)

head(eleicao)

plot(eleicao$DESPESAS, eleicao$SITUACAO)

modelo = glm(SITUACAO ~ DESPESAS, data = eleicao, family = "binomial")

modelo

summary(modelo)

# Valor ajustado
modelo$fitted.values

plot(eleicao$DESPESAS, eleicao$SITUACAO, col='red', pch=20 )

points(eleicao$DESPESAS, modelo$fitted, pch=4)

prevereleicao <- read_delim("NovosCandidatos.csv", ";", 
                      escape_double = FALSE, trim_ws = TRUE)

prevereleicao

prevereleicao$RESULTADO = predict(modelo,newdata = prevereleicao, type = "response")

prevereleicao$RESULTADO

prevereleicao
