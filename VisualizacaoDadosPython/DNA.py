# -*- coding: utf-8 -*-
"""
Created on Sat May 18 22:10:50 2019

@author: Luciano
"""

###############################################################################
# Comparação de DNA de uma Bacteria e de um ser humano
###############################################################################

entrada = open("16s_bacteria.fasta").read()
saida = open("16s_bacteria.html","w")

cont = {}

for i in ['A','T','C','G']:
  for j in ['A','T','C','G']:
    cont[i+j] = 0

# ETL

entrada = entrada.replace("\n","")

# Contando as Combinações

for k in range(len(entrada)-1):
  cont[entrada[k]+entrada[k+1]] += 1

print(cont)