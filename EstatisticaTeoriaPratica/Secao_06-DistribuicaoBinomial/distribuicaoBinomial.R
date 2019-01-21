# Distribuição Binomial

# Problema: Jogar um moeda 5 vezes e acertar 3 caras

# • Número Fixo de Experimentos: 5
# • Cada experimento pode ter 2 resultados apenas: sucesso ou fracasso: 3
# • A probabilidade de sucesso deve ser a mesma em cada experimento: 0.5
# • Os experimentos são independentes: sim

dbinom(3,5,0.5)

# Pegar 4 sinais verdes em quatro cruzamentos de 4 ruas

# • Número Fixo de Experimentos: 4
# • Cada experimento pode ter 2 resultados apenas: sucesso ou fracasso: 4
# • A probabilidade de sucesso deve ser a mesma em cada experimento: 0.25
# • Os experimentos são independentes: sim

# 0 sinal verde:
dbinom(0,4,0.25)

# 1 sinal verde:
dbinom(1,4,0.25)

# 2 sinal verde:
dbinom(2,4,0.25)

# 3 sinal verde:
dbinom(3,4,0.25)

# 4 sinal verde:
dbinom(4,4,0.25)

# Distribuição Binomial Acumulativa

# 0 sinal verde:
pbinom(0,4,0.25)

# 1 sinal verde:
pbinom(1,4,0.25)

# 2 sinal verde:
pbinom(2,4,0.25)

# 3 sinal verde:
pbinom(3,4,0.25)

# 4 sinal verde:
pbinom(4,4,0.25)

# Acertar 7 questões de 12 no chute

# • Número Fixo de Experimentos: 12
# • Cada experimento pode ter 2 resultados apenas: sucesso ou fracasso: 7
# • A probabilidade de sucesso deve ser a mesma em cada experimento: 0.25
# • Os experimentos são independentes: sim

# 0 sinal verde:
dbinom(7,12,0.25)

# Quiz

# Acertar o numero 6 na metade de 6 jogadas

# • Número Fixo de Experimentos: 6
# • Cada experimento pode ter 2 resultados apenas: sucesso ou fracasso: 3
# • A probabilidade de sucesso deve ser a mesma em cada experimento: 0.16
# • Os experimentos são independentes: sim

dbinom(3,6,0.16)

# Pergunta 1:
# Qual a probabilidade de jogar um dado 6 vezes, e dar 6 a metade das jogadas?

dbinom(3,6,0.16)

# Pergunta 2:
# Considerando uma distribuição binomial, qual a probabilidade de um veículo 
# que alcança 100 km por hora uma vez em cada 10 corridas, alcanças 110 km por hora?

X

# Pergunta 3:
# Você vai fazer uma prova que contém 10 questões com quatro alternativas cada.
# Você precisa acertar 6. Você não estudou. Qual sua chance de passar?

dbinom(6,10,0.25)

# Pergunta 4:
# Você dirige uma ambulância. Do trajeto do acidente até o hospital existem 3 sinaleiras de
# 3 tempos cada. Qual a probabilidade de você pegar todas as sinaleiras abertas?

dbinom(3, 3, 0.33)

# Pergunta 5:
# Se você passar 4 sinais de 2 tempo cada, qual a probabilidade de pegar 0,1,2,3, e 4 sinais
# abertos, respetivamente:

dbinom(1, 4, 0.5)
dbinom(2, 4, 0.5)
dbinom(3, 4, 0.5)
dbinom(4, 4, 0.5)

# Pergunta 6:
# Se você passar 4 sinais de 2 tempo cada, qual a probabilidade de pegar 0,1,2,3, e 4 sinais
# abertos, respetivamente. Quanto a esta afirmação, é correto afirmar:


# Pergunta 7:
# Um determinado tratamento de câncer cura 25% dos pacientes.
# Em um experimento feito com 10 pacientes, qual a chance de 4 se curarem e de 6 não se
# curarem, respectivamente:

dbinom(4, 10,0.25)

# Pergunta 8:
# Cada 10 vezes que um homem atira contra um alvo, em 3 ele acerta na mosca.
# Atirando 5 vezes, qual a probabilidade, respectivamente,  de:

# 1 – Acertar na mosca 1 vez apenas
# 2 – Acertar na mosca as nenhuma vez
# 3 – Acertar na mosca as 5 vezes

dbinom(1, 5, 0.3)
dbinom(0, 5, 0.3)
dbinom(5, 5, 0.3)

# Pergunta 9:
# Em um país, para cada 3 meninas nascem 2 meninos.
# Qual a probabilidade de uma família com 5 crianças ter 4 meninas e 1 menino?

dbinom(4, 5, 0.6)

# Pergunta 10:
# Em uma linha de produção, de cada 100 peças produzidas, 2 tem defeito.
# Durante a produção de 10 lotes de 100 peças cada, qual a probabilidade, 
# respectivamente, de se retirar aleatoriamente do lote:
  
# 1 – Nenhuma peça com defeito
# 2 – 1 peça com defeito
# 3 – 2 peças com defeito

dbinom(0,10,0.02)
dbinom(1,10,0.02)
dbinom(2,10,0.02)

