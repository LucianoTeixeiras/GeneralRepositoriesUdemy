# Seção 01

# Iniciando o Processo de ETL

# 03 - Instalando o pacote necessário

install.packages("tidyverse",dependencies = T)

install.packages("tibble",dependencies = T)

library(tibble)

### Criando Tibbles a partir de elementos individuais

df <- tribble(
  ~Dia,~vendas,
  "1", "121000",
  "2", "232000",
  "3", "456000"
)

# 04 - Criando a partir vetores

# Reciclagem

tibble(a=3,b=4:7)

tibble(a=1:10,b=4)

tibble(a=1:10,b=1:10)

tibble(a=1:10,b=8)

tibble(a=c(2,5,7,3,4),b=c(10,22,33,44,55))

tibble(a=c(2,5,7,3,4),b=10)

tibble(x=3:6,y=c("A","B","C","D"),z=(x^2)+4)

#Quando o Tamanho de um dos vetores (nesse caso o y) é insuficiente
tibble(x=3:6,y=c("A","B","C"),z=(x^2)+4)

tibble(x=3:6,y=c("A"),z=(x^2)+4)

#mais exemplos
tibble(a = 1, b = 1:3)

tibble(a = 1:3, b = 1)

tibble(
  x = 1:5, 
  y = 1, 
  z = x ^ 2 + y
)

# 05 - Criando Tibbles a partir de listas

lista<-list(x=1:500,y=3,z=500:1)

tb<-as_tibble(lista)	

# 06 - Criando Tibble usando matrizes

m<-matrix(1:50,ncol=5)

colnames(m)<-c("Var1","Var2","Var3","Var4","Var5")

tb<-as_tibble(m)

# 07 - Criando Tibble a partir de Arrays

a<-array(m,c(4,2,3))

tb<-as_tibble(a)

#mudando o nome das variáveis do tibble

names(tb)<-c("Var1","Var2","Var3","Var4","Var5","Var6")

# 08 - Acessando e modificando um tibble criado
a<-array(m,c(4,2,3))

v<-as_tibble(a)

# acessando as variáveis do tibble
v$v1

v$v2

v$v3

v$v4

# Modificando um variável em especial
v$v4<-c(50,50,50,50)

#Acessando os casos (indivíduos)
v[3,]  #terceiro indivíduo/caso

v[2,]  #segundo indivíduo/caso

tibble(x = letters)

#Acessando o Tibble
df <- tibble(
  x = runif(5),
  y = rnorm(5)
)

df$x

df$y

# 09 - Convertendo Data Frames tradicionais em Tibble

head(iris) #Data Frame

class(iris)

o<-as_tibble(iris)

class(o)

# Convertendo Tibble em Data Frames

df<-as.data.frame(o)

class(df)
