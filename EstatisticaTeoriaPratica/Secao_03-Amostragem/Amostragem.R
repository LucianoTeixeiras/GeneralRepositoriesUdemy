# Amostragem

amostra = sample(c(0,1), 150, replace = TRUE, prob = c(0.5,0.5))
amostra

length(amostra[amostra==1])

length(amostra[amostra==0])

amostrairis = iris[amostra==1,]

dim(amostrairis)

amostrairis

# Gera a mesma amostra para reprodução - semente

set.seed(23456)

sample(c(1000),1)

# Quiz

quiz = sample(c(0,1), 100, replace = TRUE, prob=c(0.5,0.5))

length(quiz[quiz==1])

length(quiz[quiz==0])


quiz1 = sample(c(1,2,3,4,5), 10, replace = FALSE, prob=c(0.2,0.2,0.2,0.2,0.2))
