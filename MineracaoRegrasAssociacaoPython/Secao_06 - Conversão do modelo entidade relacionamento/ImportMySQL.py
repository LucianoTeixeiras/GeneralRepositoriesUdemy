# -*- coding: utf-8 -*-
"""
Created on Tue May  7 16:22:33 2019

@author: luciano.t.da.silva
"""

import pymysql
conexao = pymysql.connect(host='localhost', user='pymysql', passwd='260775Lt', db='mercado')
conexao

cursorVendas = conexao.cursor()
cursorVendasProdutos = conexao.cursor()

cursorVendas.execute('select * from vendas')
for vendas in cursorVendas:
    print(vendas)
    cursorVendasProdutos.execute('select * from venda_produtos where idvendas = ' + str(vendas[0]))
    for produtos in cursorVendasProdutos:
        print(produtos)

cursorVendas.close()
cursorVendasProdutos.close()
conexao.close()
