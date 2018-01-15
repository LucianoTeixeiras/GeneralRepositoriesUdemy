# Luciano

import pandas as pd

dados = pd.read_csv("mercado.csv", header=None)

transacoes = [0]
for i in range(0, 10):
    transacoes.append([str(dados.values[i, j]) for j in range(0, 4)])

from apyori import apriori
regras = apriori(transacoes)

resultados = list(regras)
