# Amostra

iris

dim(iris)

amostra = sample(c(0,1),150, replace = T, prob = c(0.5,0.5))

amostra

length(amostra[amostra==1])

length(amostra[amostra==0])

install.packages("sampling")

library(sampling)

amostrairis = strata(iris, c("Species"), size = c(25,25,25), method = "srswor")

amostrairis

summary(amostrairis)

infert

summary(infert)

dim(infert)

# Proporcao de infert sobre education

# 0-5yrs : 12 ==> 5
# 6-11yrs:120 ==> 48
# 12+ yrs:116 ==> 47

amostrainfert = strata(infert, c("education"), size = c(5,48,47), method = "srswor")

amostrainfert

summary(amostrainfert)

install.packages("TeachingSampling")

library("TeachingSampling")

amostrairissy = S.SY(150,10)

amostrairissy

amostrairis2 = iris[amostrairissy,]

amostrairis2
