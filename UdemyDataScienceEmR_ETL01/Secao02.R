# 10 - Importando txt separado por espaço em branco

cap<-read.table("C:/Users/luciano.t.da.silva/Documents/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/caprinosEspecoBranco.txt",head=T)

head(cap)

cap<-as_tibble(cap)

# 11 - Importando txt separado por TAB

cap2<-read.table("C:/Users/luciano.t.da.silva/Documents/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/caprinosTAB.txt",head=T,sep="\t")

head(cap2)

cap<-as_tibble(cap2)

cap

# 12 - Importando txt com sep ";"

cap3<-read.table("C:/Users/luciano.t.da.silva/Documents/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/caprinosPontoeVirgula.txt",head=T,sep=";")

head(cap3)

cap<-as_tibble(cap3)

cap

# Outros separadores 

cap4<-read.table("C:/Users/luciano.t.da.silva/Documents/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/caprinosOutrosSeparadores.txt",head=T,sep="&")

head(cap4)

cap4<-as_tibble(cap4)

cap4

# 13 - Pulando linhas ao importar um txt

cap4<-read.table("C:/Users/luciano.t.da.silva/Documents/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/caprinosTABeTexto.txt",head=T,sep="\t",skip = 6)

head(cap4)

cap4<-as_tibble(cap4)

# 14 - Lendo um arquivo de texto "corrido"

tex<-readLines("C:/Users/luciano.t.da.silva/Documents/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/texto.txt")

tex

# Lendo as primeiras n=4 linhas

tex<-readLines("C:/Users/luciano.t.da.silva/Documents/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/texto.txt",4)

tex

# 15 - Lendo textos na internet

net<-read.table("http://www.leg.ufpr.br/~paulojus/dados/gam01.txt")

names(net)<-c("Variável 1","Variável 2","Cotação")

net<-as_tibble(net)

net

# 16 - Outra funções mais rápida e que já retorna um tibble

install.packages("readr")

library(readr)

d<-read_table2("C:/Users/luciano.t.da.silva/Documents/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/caprinosTAB.txt")

d

d2<-read_table2("C:/Users/luciano.t.da.silva/Documents/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/caprinosEspecoBranco.txt")

d2

d3<-read_table2("C:/Users/luciano.t.da.silva/Documents/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/caprinosTABeTexto.txt",skip=6)

d3

# 17 - Importando CSV

#separado por vírgula

c<-read.table("C:/Users/luciano.t.da.silva/Documents/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/caprinosCSV-virgula.csv", head=T,sep=";")

c2<-as_tibble(c)

#ou usando as novas funções

library(readr)

c3<-read_csv2("C:/Users/luciano.t.da.silva/Documents/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/caprinosCSV-virgula.csv")

# ou

c4<-read.csv("C:/Users/luciano.t.da.silva/Documents/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/caprinosCSV-virgula.csv", head=T,sep=";")

c4<-as_tibble(c4)

