# -*- coding: utf-8 -*-
"""
Created on Mon Jan 15 18:13:05 2018

@author: luciano.silva
"""

import pandas as pd

dados = pd.read_csv('mercado.csv', header=None)
transacoes = []
for i in range(0,10):
    transacoes.append([str(dados.values[i,j]) for j in range(0,4)])

from apyori import apriori
regras = apriori(transacoes)

resultados = list(regras)
resultados
