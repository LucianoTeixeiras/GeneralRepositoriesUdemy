# -*- coding: utf-8 -*-
"""
Created on Fri May  3 15:46:18 2019

@author: Luciano
"""

# Frequencia Valor Total
import matplotlib.pyplot as plt
from numpy import genfromtxt

dados = genfromtxt('valor_total.csv')

#histograma = plt.hist(dados, bins="sturges")

#histograma = plt.hist(dados, bins="scott")

#histograma = plt.hist(dados, bins="fd")

#histograma = plt.hist(dados, bins=5)

histograma = plt.hist(dados)

# Frequencia Tempo Decorrido
import matplotlib.pyplot as plt
from numpy import genfromtxt

dados = genfromtxt('tempo_decorrido.csv')

histograma = plt.hist(dados, bins="sturges")

#histograma = plt.hist(dados, bins="scott")

#histograma = plt.hist(dados, bins="fd")

histograma = plt.hist(dados, bins=4)

histograma = plt.hist(dados)

# -*- coding: utf-8 -*-
"""
Created on Mon Aug  7 12:18:28 2017

@author: Jones
"""
import pandas as pd

dados = pd.read_csv('base_pizzaria.csv', header = None)
transacoes = []
for i in range(0, 2244):
    transacoes.append([str(dados.values[i, j]) for j in range(0, 7)])

from apyori import apriori
regras = apriori(transacoes, min_support = 0.003, min_confidence = 0.8, min_lift = 2, min_lenght = 2)

resultados = list(regras)
resultados

resultados2 = [list(x) for x in resultados]
resultados2
resultadoFormatado = []
for j in range(0, 10):
    resultadoFormatado.append([list(x) for x in resultados2[j][2]])
resultadoFormatado

# Apagando os atributos Borda e Refrigerante

import pandas as pd

dados = pd.read_csv('base_pizzaria.csv', header = None)
del dados[3]
del dados[4]
transacoes = []
for i in range(0, 2244):
    transacoes.append([str(dados.values[i, j]) for j in range(0, 5)])

from apyori import apriori
regras = apriori(transacoes, min_support = 0.003, min_confidence = 0.2, min_lift = 2.0, min_lenght = 2)

resultados = list(regras)
resultados

resultados2 = [list(x) for x in resultados]
resultados2
resultadoFormatado = []
for j in range(0, 10):
    resultadoFormatado.append([list(x) for x in resultados2[j][2]])
resultadoFormatado


# Apagando os atributos Busca e Tempo de preparaão da Pizza

import pandas as pd

#dados = pd.read_csv('base_pizzaria.csv', header = None)
del dados[2]
del dados[6]
transacoes = []
for i in range(0, 2244):
    transacoes.append([str(dados.values[i, j]) for j in range(0, 3)])

from apyori import apriori
regras = apriori(transacoes, min_support = 0.003, min_confidence = 0.2, min_lift = 1.0, min_lenght = 2)

resultados = list(regras)
resultados

resultados2 = [list(x) for x in resultados]
resultados2
resultadoFormatado = []
for j in range(0, 10):
    resultadoFormatado.append([list(x) for x in resultados2[j][2]])
resultadoFormatado
