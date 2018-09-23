# Seção 03

# 23 - ARRUMANDO tipo 4 [valores das variáveis nas colunas] --> Tipo 1 [gather()  unindo esses valores em uma única variável]       

library(tibble)

library(xlsx)

tab4<-read.xlsx("~/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/Meusdados.xlsx","tipo4",startRow = 2,endRow = 8)

head(tab4)

# 24 - Nomeando as variáveis

names(tab4)[1]<-c("Regiao")

head(tab4)

names(tab4)[2:11]<-rep(2005:2009,2)

head(tab4)

#Criando as duas partições

tab4_ObtFetais<-tab4[,1:6]

tab4_ObtFetais

tab4_Obt<-tab4[,c(1,7:11)]

tab4_Obt

# 25 - Transformando em tibble as duas partições

tab4_ObtFetais<-as.tibble(tab4_ObtFetais)

tab4_ObtFetais

tab4_Obt<-as.tibble(tab4_Obt)

tab4_Obt

install.packages("tidyr",dependencies = T)

library(tidyr)

#gather:reunir.... pois uma única variável está espalhada em várias colunas

a<-tab4_ObtFetais %>% gather("2005","2006","2007","2008","2009", key = "Ano", value = "Obitos Fetais")

a

b<-tab4_Obt %>% gather("2005","2006","2007","2008","2009", key = "Ano", value = "Obitos")

b

# Juntando as duas partições para formar uma tabela do tipo1

tipo1<-cbind(a,b)

tipo1

as_tibble(tipo1)

#ou

tipo1<-as.tibble(cbind(a,b[,3]))

tipo1

#ou

tipo2<-tipo1[,-(4:5)]

tipo2<-as_tibble(tipo2)

tipo2

#ou 

install.packages("dplyr",dependencies = T)

library(dplyr)

tab4_arrumada<-left_join(a, b)

tab4_arrumada

# 26 - ARRUMANDO tipo 2  --> Tipo 1 

#Use isto quando cada observação estiver espalhada em várias linhas

#por exemplo, esta tabela a seguir (tipo 2), cada observação está separada em duas linhas (óbitos e óbitos Fetais)

tab2<-read.xlsx("~/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/Meusdados.xlsx","tipo2")

tab2

tab2_arrumada<-spread(tab2, key = tipo, value = count)  #Key: a variável que guarda as outras juntas... Value: o valor que será atribuido para cada nova variável em cada caso

tab2_arrumada

tab2_arrumada<-as.tibble(tab2_arrumada)

tab2_arrumada

# 27 - ARRUMANDO tipo 3  --> Tipo 1 

tab3<-read.xlsx("~/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/Meusdados.xlsx","tipo3")

tab3

tab3<-as_tibble(tab3)

tab3

names(tab3)[3]<-c("taxa")

tab3

#taxa é a variável que contém a junção.....  into: é em quantas colunas vc vai dividir

tab3_arrumada<-tab3 %>% separate(taxa, into = c("ObitosFetais", "Obitos"))

tab3_arrumada

#Atenção ao tipo das variáveis... separate() mantem o tipo...a não ser que mande converter

tab3_arrumada<-tab3 %>% separate(taxa, into = c("ObitosFetais", "Obitos"),convert=T)

tab3_arrumada

#Dividindo o Ano: ex: "1989" em "19" "89"  ... sep -1,-2,-3 (separando da direita para esquerda)

#sep 1,2,3 (separando da esquerda para direita"   

tab3_separada<-tab3 %>% separate(Ano, into = c("Seculo", "Ano"), sep = 2) 

tab3_separada

# 28 - Caminho inverso... o que está separado vou unir

tab3_separada<-tab3_separada %>% unite(Juntos, Seculo, Ano)

tab3_separada

#para tirar o separador padrão "_"

tab3_separada<-tab3_separada %>% unite(Ano, Seculo, Ano, sep="")

tab3_separada

# 29 - OBS: por padrão separete() divide sempre quando encontra um separador que não seja letra ou número

#Então, quando a tabela original usa um separador específico

tab3_sep<-read.xlsx("~/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/Meusdados.xlsx","tipo3_sep")

tab3_sep<-as_tibble(tab3_sep)

tab3_sep

names(tab3_sep)[3]<-c("taxa")

tab3_sep

tab3_nova<-tab3_sep %>% separate(taxa, into = c("ObitosFetais", "Obitos"),sep="&")

tab3_nova
