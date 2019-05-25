# -*- coding: utf-8 -*-
"""
Created on Sat May 18 21:42:52 2019

@author: Luciano
"""

###############################################################################
# Boxplo - Diagram de Caixa
###############################################################################

import matplotlib.pyplot as plt
import random as rd

vetor = []

for i in range(10):
  num_aleatorio = rd.randint(0,5)
  vetor.append(num_aleatorio)
  
plt.boxplot(vetor)
