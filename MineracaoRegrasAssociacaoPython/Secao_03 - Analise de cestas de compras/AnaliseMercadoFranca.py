# -*- coding: utf-8 -*-
"""
Created on Thu May  2 21:08:29 2019

@author: Luciano
"""

#Primeira Tenativa - Valor de Support muito alto para a base testada

#min_support = 0.3


import pandas as pd

dados = pd.read_csv('mercado2.csv', header = None)
transacoes = []
for i in range(0, 7501):
    transacoes.append([str(dados.values[i, j]) for j in range(0, 20)])
transacoes
from apyori import apriori
regras = apriori(transacoes, min_support = 0.003, min_confidence = 0.8, min_lift = 2, min_lenght = 2)

resultados = list(regras)
resultados

resultados2 = [list(x) for x in resultados]
resultados2
resultadoformatado = []
for j in range(0, 20):
    resultadoformatado.append([list(x) for x in resultados2[j][2]])
resultadoformatado

#Resultado não retornou nada, ou seja, retornou zero por conta do valor min_support = 0,3

#Segunda Tentativa.
# Estimando um min_support mais adequado

# Supondo que se queira analisar um produto que seja vendido até 4 vezes ao dia, considerando que esta base se
# refere à uma venda de uma semana, ou seja 7 dias, teremos o seguine pré-suposto.

freq = 4 * 7
freq

# produo vendodo 4 vezes ao dia no período de 7 dis temos: 4 * 7 = 28
# Dividindo 28 que é o número de vezes em que o prodo é vendido em 7 pelo total de transações contidas na base
# que é 7501, teremos: 28 / 7501 = 

coef = freq / 7501
coef

# teremos um min_support = 0,0037328356219170776

import pandas as pd

dados = pd.read_csv('mercado2.csv', header = None)
transacoes = []
for i in range(0, 7501):
    transacoes.append([str(dados.values[i, j]) for j in range(0, 20)])
transacoes
from apyori import apriori
regras = apriori(transacoes, min_support = 0.003, min_confidence = 0.8, min_lift = 2, min_lenght = 2)

resultados = list(regras)
resultados

resultados2 = [list(x) for x in resultados]
resultados2
resultadoformatado = []
for j in range(0, 20):
    resultadoformatado.append([list(x) for x in resultados2[j][2]])
resultadoformatado

# É sugerido que também o valor da confiança não seja tão alto, dado o tamanho da abse, sendo assim, testar outros valores
# é no mínimo recomendado.

import pandas as pd

dados = pd.read_csv('mercado2.csv', header = None)
transacoes = []
for i in range(0, 7501):
    transacoes.append([str(dados.values[i, j]) for j in range(0, 20)])
transacoes
from apyori import apriori
regras = apriori(transacoes, min_support=0.003, min_confidence=0.2, min_lift=3.0, min_lenght=2)

resultados = list(regras)
resultados

resultados2 = [list(x) for x in resultados]
resultados2
resultadoformatado = []
for j in range(0, 5):
    resultadoformatado.append([list(x) for x in resultados2[j][2]])
resultadoformatado

