# Grafos Introdução

install.packages('igraph')

library(igraph)

# Demo

demo(community)

# Igraph Parte 01 - Grafos

grafo01 = graph(edges = c(1,2,3,4))

plot(grafo01)

grafo02 = graph(edges = c(1,2,2,3,3,4,4,1,1,4,4,3,3,2,2,1))

plot(grafo02)

grafo03 = graph(edges = c(1,2,2,3,3,4,4,1,1,1))

plot(grafo03)

# Igraph Parte 02 - Grafo literal

grafo04 = graph_from_literal(1-+2,2-+3,3-+4,3++4,4-+1)

plot(grafo04)

grafo05 = graph_from_literal(1-2,2-3,3-4,3-4,4-1)

plot(grafo05)

grafo06 = graph_from_literal(1-2,2-3,3-4,3-4,5)

plot(grafo06)

grafo07 = graph(edges = c(1,2,2,3,3,4,4,1), directed=FALSE)

plot(grafo07)

grafo08 = graph(edges = c(1,2,2,3,3,4,4,1), directed=FALSE, n=10)

plot(grafo08)

grafo09 = graph(edges = c("A","B","B","C","C","D","D","E","E","A","A","C","C","B"))

plot(grafo09)

# Igraph Parte 03

grafo10 = graph(edges = c("A","B","B","C","C","D","D","E","E","A","A","C","C","B"), isolates = c("F","G"))

plot(grafo10)

grafo10[]

grafo10[1,]

grafo10[,1]

V(grafo10)$name

grafo11 = graph(c("Fernando", "Pedro", "José", "Antônio", "Fernando", "José", "Fernando", "Antônio"))

plot(grafo11)

V(grafo11)$Peso = c(40,30,30,25)

vertex_attr(grafo11)

E(grafo11)$TipoAmizade = c("Amigo", "Inimigo", "Inimigo", "Amigo")

edge_attr(grafo11)

edge_attr(grafo11)$TipoAmizade

grafo11

V(grafo11)$type = "Humanos"

grafo11

E(grafo11)$Peso = c(1,2,1,3)

grafo11

V(grafo11)$Cor = c("blue", "green", "red", "yellow")

plot(grafo11)

# Igraph Parte 04 - Impressão e Importação

V(grafo11)$Peso

plot(grafo11, vertex.size=vertex_attr(grafo11)$Peso)

edge_attr(grafo11)$Peso

plot(grafo11, vertex.size=vertex_attr(grafo11)$Peso, edge.width=edge_attr(grafo11)$Peso)

plot(grafo11, vertex.size=vertex_attr(grafo11)$Peso, edge.width=edge_attr(grafo11)$Peso, vertex.color=vertex_attr(grafo11)$Cor)

plot(grafo11, vertex.size=vertex_attr(grafo11)$Peso, edge.width=edge_attr(grafo11)$Peso, vertex.color=vertex_attr(grafo11)$Cor, edge.curved=0.4, frame=T, main="Grafo LTS", vertex.shape="square")

# Grafo dinâmico

tkplot(grafo11, vertex.size=vertex_attr(grafo11)$Peso, edge.width=edge_attr(grafo11)$Peso, vertex.color=vertex_attr(grafo11)$Cor, edge.curved=0.4, frame=T, main="Grafo LTS", vertex.shape="square")

# Importando um Grafo, com função file.chose para encontrar o arquivo

grafo12 = read_graph(file.choose(),format=c("graphml"))

grafo12

tkplot(grafo12)

# Igraph Parte 05 - 

