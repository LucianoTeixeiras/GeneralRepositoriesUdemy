# Medidas de Centralidade e Variabilidade

jogadores = c(40000,18000,12000,250000,30000,140000,300000,40000,800000)
jogadores

# Media

mean(jogadores)

# Mediana

median(jogadores)

# Quartis

Quartis = quantile(jogadores)
Quartis

Quartis[1]

# Desvio Padrão - Standart Desviaction

sd(jogadores)

# Sumário

summary(jogadores)

# Quiz

quiz = c(12,14,11,12,15,16,13,17,13,14)

summary(quiz)

sd(quiz)

quiz04 = c (3,  1,  4,  7 , 9,  2, 10,  5,  6,  8)

summary(quiz04)

mean(c(4000, 5000, 3000, 5000, 4000))
mean(c(6000, 5000, 3000, 5000, 4500))
mean(c(4000, 5000, 3000, 5000, 4500))
mean(c(6500, 5000, 3000, 5000, 4500))

summary(c(3,  1,  4,  7 , 9,  2, 10,  5,  6,  8))

summary(c(12,14,11,12,16,13,17,13,14))

summary(c(12, 14, 11, 12, 16, 13, 17, 13, 14))

amp(c(14, 11, 12, 16, 13, 17, 13, 14))
