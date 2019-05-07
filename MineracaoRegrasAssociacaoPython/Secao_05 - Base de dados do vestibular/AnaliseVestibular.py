# -*- coding: utf-8 -*-
"""
Created on Mon May  6 21:44:50 2019

@author: Luciano
"""

import pandas as pd
dados = pd.read_csv('vestibular.csv', header = None)

del dados[]

transacoes = []
for i in range(0, 1326):
    transacoes.append([str(dados.values[i, j]) for j in range(0, 18)])

from apyori import apriori
regras = apriori(transacoes, min_support = 0.09, min_confidence = 0.2, min_lift = 2, min_lenght = 2)

resultados = list(regras)
resultados

resultados2 = [list(x) for x in resultados]
resultados2
resultadoFormatado = []
for j in range(0, 20):
    resultadoFormatado.append([list(x) for x in resultados2[j][2]])
resultadoFormatado
