#Regressão Linear Múltipla - Prática

dim(mtcars)

mtcars

summary(mtcars)

cor(mtcars[1:4])

modeloR = lm(mpg ~ disp, data=mtcars)

modeloR

summary(modeloR)$r.squared

summary(modeloR)$adj.r.squared

plot(mpg ~ disp, data=mtcars)

abline(modeloR)

predict(modeloR, data.frame(disp = 200))

modeloRP = lm(mpg ~ disp + hp + cyl, data=mtcars)

modeloRP

summary(modeloRP)$r.squared

summary(modeloRP)$adj.r.squared

abline(modeloRP)

predict(modeloRP, data.frame(disp = 200, hp = 100, cyl = 4))

