# Distribuição de Poisson

# Quiz 06

# Pergunta 1:
# A cada dia 3 pessoas morrem de câncer em um hospital.
# Qual a probabilidade de não morrer nenhuma pessoa em determinado dia?

ppois(0, lambda = 3)

# Pergunta 2:
# Em país ocorrem 5 acidentes aéreos por semana.
# Qual a probabilidade de, em uma semana, ocorrerem menos de 5 acidentes?

ppois(4, lambda = 5)

# Pergunta 3:
# Em média, 4 ganhadores ganham a loteria por semana.
# Qual a probabilidade de em uma semana, haver zero, um, dois e três 
# ganhadores respectivamente.

dpois(0, lambda = 4)
dpois(1, lambda = 4)
dpois(2, lambda = 4)
dpois(3, lambda = 4)

# Pergunta 4:
# Três prisioneiros fogem, em média, de um presidio por ano. 
# Qual a probabilidade de fugirem 4 ou mais em determinado ano?

ppois(4, lambda = 3, lower.tail = FALSE)
