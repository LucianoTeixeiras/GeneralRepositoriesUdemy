# Iniciando o Processo de ETL

# 3.1 Aula 3 - Tibble com elementos individuais

# Instalando o pacote necessário

install.packages("tidyverse",dependencies = T)
install.packages("tibble",dependencies = T)
library(tibble)

# Criando Tibbles a partir de elementos individuais

df <- tribble(
  ~Dia,~vendas,
  "1", "121000",
  "2", "232000",
  "3", "456000"
)

df

# 4.1 Aula 4 - Tibble usando Vetores

# Criando a partir vetores

# Reciclagem
tibble(a=3,b=4:7)
tibble(a=1:10,b=4)
tibble(a=1:10,b=1:10)
tibble(a=1:10,b=8)
tibble(a=c(2,5,7,3,4),b=c(10,22,33,44,55))
tibble(a=c(2,5,7,3,4),b=10)

tibble(x=3:6,y=c("A","B","C","D"),z=(x^2)+4)

# Quando o Tamanho de um dos vetores (nesse caso o y) é insuficiente
tibble(x=3:6,y=c("A","B","C"),z=(x^2)+4)

tibble(x=3:6,y=c("A"),z=(x^2)+4)

# Mais exemplos
tibble(a = 1, b = 1:3)
tibble(a = 1:3, b = 1)

tibble(
  x = 1:5, 
  y = 1, 
  z = x ^ 2 + y
)

# 5.1 Aula 5 - Tibbles usando listas

# Criando Tibbles a partir de listas

lista<-list(x=1:500,y=3,z=500:1)

tb<-as_tibble(lista)	

tb

# 6.1 Aula 6 - Tibbles usando Matrizes

# Criando Tibble usando matrizes

m<-matrix(1:50,ncol=5)

m

colnames(m)<-c("Var1","Var2","Var3","Var4","Var5")

tb<-as_tibble(m)

tb

# 7.1 Aula 7 - Tibbles usando Arrays

# Criando Tibble a partir de Arrays

a<-array(m,c(4,2,3))

tb<-as_tibble(a)

tb

# Mudando o nome das variáveis do tibble

names(tb)<-c("Var1","Var2","Var3","Var4","Var5","Var6")

# 8.1 Aula 8 - Acessando e Modificando um tibble

# Acessando e modificando um tibble criado

a<-array(m,c(4,2,3))
v<-as_tibble(a)

v

# acessando as variáveis do tibble

v$V1
v$V2
v$V3
v$V4

# Modificando um variável em especial

v$V4<-c(50,50,50,50)

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

# 9.1 Aula 9 - Convertendo Tibble em DataFrame

# Convertendo Data Frames tradicionais em Tibble

head(iris) #Data Frame
class(iris)

o<-as_tibble(iris)
class(o)

# Convertendo Tibble em Data Frame

df<-as.data.frame(o)

class(df)
