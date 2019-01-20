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
# • Cada experimento pode ter 2 resultados apenas: sucesso ou fracasso: 7
# • A probabilidade de sucesso deve ser a mesma em cada experimento: 0.25
# • Os experimentos são independentes: sim
