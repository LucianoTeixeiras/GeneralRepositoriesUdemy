# -*- coding: utf-8 -*-
"""
Created on Tue May  7 16:22:33 2019

@author: luciano.t.da.silva
"""

import pymysql
conexao = pymysql.connect(host='localhost', user='pymysql', passwd='260775Lt', db='mercado')
conexao

cursor = conexao.cursor()
cursor.execute('select * from produtos')
for linha in cursor:
    print(linha)

cursor.close()
conexao.close()

