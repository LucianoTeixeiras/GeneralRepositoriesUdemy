# -*- coding: utf-8 -*-
"""
Created on Sat May 18 21:27:35 2019

@author: Luciano
"""

import matplotlib.pyplot as plt

###############################################################################
# Estudo de caso: Crescimento da População Brasileira 1980-2016
###############################################################################

dados = open("populacao-brasileira.csv").readlines()

# Vetor para ano
x = []

# Vetor para populacao
y = []

# Leitura do dataset

for i in range(len(dados)):
  if i != 0:
    linha = dados[i].split(";")
    x.append(int(linha[0]))
    y.append(int(linha[1]))

plt.bar(x,y, color="#e4e4e4")
plt.plot(x,y, color="k", linestyle="--")

plt.title("Crescimento da População Brasileira 1980-2016")
plt.xlabel("Ano")
plt.ylabel("População x 100.000.000")
plt.savefig("figura2.pdf")