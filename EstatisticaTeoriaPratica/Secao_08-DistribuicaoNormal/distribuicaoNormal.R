# Distribuição Normal

# Pergunta 1:
# Uma distribuição normal tem média igual a 100 quilos.
# Sabemos que a probabilidade de se encontrar um objeto com menos de 10 quilos é de 0,2%.
# Qual a probabilidade de tirar um objeto com menos de 100 quilos?


# Pergunta 2:
# Objetos pesados tem média igual a 150 e desvio padrão igual a 25 quilos
# e são normalmente distribuídos. Qual a probabilidade de se retirar 
# um objeto com menos de 130 quilos?

pnorm(130, 150, 25)

# Pergunta 3:
# Objetos pesados tem média igual a 150 e desvio padrão igual a 25 e são normalmente
# distribuídos. Qual a probabilidade de se retirar um objeto que tenha mais de 170 quilos?

pnorm(170, 150, 25, lower.tail = F)

# Pergunta 4:
# Objetos pesados tem média igual a 150 e desvio padrão igual a 25 e 
# são normalmente distribuídos. Qual a probabilidade se retirar um objeto
# que tenho menos de 130 quilos ou mais de 170 quilos?

pnorm(130, 150, 25) + pnorm(170, 150, 25, lower.tail = F)

# Pergunta 5:
# Objetos pesados tem média igual a 150 e desvio padrão igual a 25 e são normalmente
# distribuídos. Qual a probabilidade de se tirar um objeto que pese entre 150 e 180 quilos?

pnorm(150, 150, 25) - pnorm(180, 150, 25, lower.tail = F)

# Pergunta 6:
# Alunos fizeram uma prova cuja média foi 70 e o desvio padrão 10. 
# Os dados estão normalmente distribuídos. Com essas informações, 
# calcule o percentual de alunos que tirou mais de 80 na prova.

pnorm(80 ,70, 10, lower.tail = F)

# Pergunta 7:
# Alunos fizeram uma prova cuja média foi 70 e o desvio padrão 10. 
# Os dados estão normalmente distribuídos. Com essas informações, 
# calcule o percentual de alunos que tirou menos de 50 na prova.

pnorm(50, 70, 10)

# Pergunta 8:
# Alunos fizeram uma prova cuja média foi 70 e o desvio padrão 10. 
# Os dados estão normalmente distribuídos. Com essas informações, 
# calcule o percentual de alunos que tirou mais de 50 na prova.

pnorm(50, 70, 10, lower.tail = F)
