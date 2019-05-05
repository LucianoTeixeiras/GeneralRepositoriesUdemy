# -*- coding: utf-8 -*-
"""
Created on Fri May  3 14:42:24 2019

@author: Luciano
"""

import pandas as pd

dados = pd.read_csv('mercado.csv', header = None)
transacoes = []
for i in range(0, 10):
    transacoes.append([str(dados.values[i, j]) for j in range(0, 4)])
transacoes
from apyori import apriori
regras = apriori(transacoes, min_support = 0.3, min_confidence = 0.8, min_lift = 2, min_lenght = 2)

resultados = list(regras)
resultados

resultados2 = [list(x) for x in resultados]
resultados2
resultadoformatado = []
for j in range(0, 3):
    resultadoformatado.append([list(x) for x in resultados2[j][2]])
resultadoformatado
