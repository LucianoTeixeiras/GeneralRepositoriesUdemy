#Regressão Linear Múltipla - Prática

dim(mtcars)

mtcars

summary(mcars)

cor(mtcars[1:4])

modeloR = lm(mpg ~ disp, data=mtcars)

modeloR

summary(modeloR)$r.squared

summary(modeloR)$adj.r.squared

plot(mpg ~ disp, data = mtcars)

abline(modeloR)

predict(modeloR, data.frame(disp=200))

