# Seção 02

# 10 - Importando txt separado por espaço em branco

cap<-read.table("~/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/caprinosEspecoBranco.txt",head=T)

head(cap)

cap<-as_tibble(cap)

cap

# 11 - Importando txt separado por TAB

cap2<-read.table("~/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/caprinosTAB.txt",head=T,sep="\t")

head(cap2)

cap<-as_tibble(cap2)

cap

# 12 - Importando txt com sep ";"

cap3<-read.table("~/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/caprinosPontoeVirgula.txt",head=T,sep=";")

head(cap3)

cap<-as_tibble(cap3)

cap

# Outros separadores 

cap4<-read.table("~/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/caprinosOutrosSeparadores.txt",head=T,sep="&")

head(cap4)

cap4<-as_tibble(cap4)

cap4

# 13 - Pulando linhas ao importar um txt

cap4<-read.table("~/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/caprinosTABeTexto.txt",head=T,sep="\t",skip = 6)

head(cap4)

cap4<-as_tibble(cap4)

# 14 - Lendo um arquivo de texto "corrido"

tex<-readLines("~/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/texto.txt")

tex

# Lendo as primeiras n=4 linhas

tex<-readLines("~/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/texto.txt",4)

tex

# 15 - Lendo textos na internet

net<-read.table("http://www.leg.ufpr.br/~paulojus/dados/gam01.txt")

names(net)<-c("Variável 1","Variável 2","Cotação")

net<-as_tibble(net)

net

# 16 - Outra funções mais rápida e que já retorna um tibble

install.packages("readr")

library(readr)

d<-read_table2("~/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/caprinosTAB.txt")

d

d2<-read_table2("~/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/caprinosEspecoBranco.txt")

d2

d3<-read_table2("~/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/caprinosTABeTexto.txt",skip=6)

d3

# 17 - Importando CSV

#separado por vírgula

c<-read.table("~/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/caprinosCSV-virgula.csv", head=T,sep=";")

c2<-as_tibble(c)

#ou usando as novas funções

library(readr)

c3<-read_csv2("~/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/caprinosCSV-virgula.csv")

c3

# ou

c4<-read.csv("~/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/caprinosCSV-virgula.csv", head=T,sep=";")

c4<-as_tibble(c4)

# 18 - Importando planihas do Excel (.xlsx)

install.packages("xlsx",dependencies = T)

library(xlsx)

excel<-read.xlsx("~/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/caprinosXLSX.xlsx",sheetIndex = 1)

# LEndo a segunda subplanilha (sheet)

excel<-read.xlsx("~/GitHub/GeneralRepositoriesUdemy/UdemyDataScienceEmR_ETL01/Secao02/caprinosXLSX.xlsx",sheetIndex = 2)

excel

excel<-as_tibble(excel)

excel

# 19 - Importando o código fonte de páginas

c<-url("https://www.casasbahia.com.br/")

codigo<-readLines(c)

head(codigo)

# 20 - Forma geral de importação (Rcmdr)

install.packages("Rcmdr",dependencies = T)

library(Rcmdr)

# 21 - SQL

# Fazendo consultas em bancos de dados em SQL, e temo como resultados um DataFrame

https://cran.r-project.org/web/packages/etl/README.html

# pacote DBI permite que você execute consultas SQL e obtenha um DatFrame

# outros pacotes RODBC, DBI, RMySQL, RPostgreSQL, ROracle, RNetCDF, RSQLite, dentre outros.

# pacote use jsonlite (by Jeroen Ooms) para dados hierarchical json
# pacote xml2 for XML. (examples at https://jennybc.github.io/purrr-tutorial/.)

# Para outros pacotes tente importar e exportar manualmentre com o pacote Rio

https://cloud.r-project.org/web/packages/rio/index.html

http://fmeireles.com/blog/rstats/como-importar-qualquer-arquivo-no-r

# 