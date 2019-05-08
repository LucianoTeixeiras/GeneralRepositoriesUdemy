# -*- coding: utf-8 -*-
"""
Created on Fri Aug 11 15:45:17 2017

@author: Jones
"""
import pymysql
conexao = pymysql.connect(host='localhost', user='pymysql', passwd='260775Lt', db='mercado')
conexao

cursorVendas = conexao.cursor()
cursorVendasProdutos = conexao.cursor()
base = ''

cursorVendas.execute('select * from vendas')
for vendas in cursorVendas:
    print(vendas)
    quantidade = cursorVendasProdutos.execute('select prd.nome from venda_produtos vpr inner join produtos prd on vpr.idproduto = prd.idproduto where vpr.idvenda = ' + str(vendas[0]))
    i = 1
    for produtos in cursorVendasProdutos:
        print(produtos)
        
        if (i == quantidade):
            base = base + produtos[0]
        else:
            base = base + produtos[0] + ','
        i += 1
    
    base = base + '\n'
    
arquivo = open("base_importada.csv", "w")
arquivo.write(base)
arquivo.close()
    
cursorVendas.close()
cursorVendasProdutos.close()
conexao.close()