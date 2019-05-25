# -*- coding: utf-8 -*-
"""
Created on Sat May 18 19:18:45 2019

@author: Luciano
"""

import matplotlib.pyplot as plt

###############################################################################
# Gráfico de Barras
###############################################################################

x = [1,2,3,4,5]
y = [2,3,7,1,0]

titulo = "Gráfico de Barras"
eixox = "Eixo x"
eixoy = "Eixo y"

# Legendas
plt.title(titulo)
plt.xlabel(eixox)
plt.ylabel(eixoy)

# Gráfico
plt.bar(x,y)
plt.show()

###############################################################################
# Gráfico de Barras Comparativo
###############################################################################

x1 = [1,3,5,7,9]
y1 = [2,3,7,1,0]

x2 = [2,4,6,8,10]
y2 = [5,1,3,7,4]

titulo = "Gráfico de Barras Comparativo"

eixox = "Eixo x"
eixoy = "Eixo y"

# Legendas
plt.title(titulo)
plt.xlabel(eixox)
plt.ylabel(eixoy)

# Gráfico
plt.bar(x1,y1, label = "Grupo 1", )
plt.bar(x2,y2, label = "Grupo 2")
plt.legend()

###############################################################################
# Scatterplot - Gráfico de Disopersão
###############################################################################

x = [1,2,3,4,5]
y = [2,3,7,1,0]
z = [200,500,2000,330,100]

titulo = "Scatterplot: Gráfico de Dispersão"
eixox = "Eixo x"
eixoy = "Eixo y"

# Legendas
plt.title(titulo)
plt.xlabel(eixox)
plt.ylabel(eixoy)

# Gráfico
plt.scatter(x, y, label="Meus Ponos", color="c", s=z)
plt.plot(x,y, color="c", linestyle="--")
plt.legend()
# plt.show()
plt.savefig("figura1.pdf")
plt.savefig("figura1.png", dpi=1200)

# Fonte: https://matplotlib.org/api/_as_gen/matplotlib.pyplot.plot.html
# =============================================================================
# 
# =============================================================================
# Documentação do MATPLOTLIB.PYPLOT
# Seção 1, aula 10
# Documentação oficial do Matplotlib
# A seguir, alguns exemplos de argumentos que podem ser aplicados ao método plot( ).
# 
# 
# 
# color:	cor (ver exemplos abaixo)
# 
# label:	rótulo
# 
# linestyle:	estilo de linha (ver exemplos abaixo)
# 
# linewidth: largura da linha
# 
# marker:	marcador (ver exemplos abaixo)
# 
# 
# 
# CORES (color)
# 'b'	blue
# 
# 'g'	green
# 
# 'r'	red
# 
# 'c'	cyan
# 
# 'm'	magenta
# 
# 'y'	yellow
# 
# 'k'	black
# 
# 'w'	white
# 
# 
# 
# Marcadores (marker)
# '.'	point marker
# 
# ','	pixel marker
# 
# 'o'	circle marker
# 
# 'v'	triangle_down marker
# 
# '^'	triangle_up marker
# 
# '<'	triangle_left marker
# 
# '>'	triangle_right marker
# 
# '1'	tri_down marker
# 
# '2'	tri_up marker
# 
# '3'	tri_left marker
# 
# '4'	tri_right marker
# 
# 's'	square marker
# 
# 'p'	pentagon marker
# 
# '*'	star marker
# 
# 'h'	hexagon1 marker
# 
# 'H'	hexagon2 marker
# 
# '+'	plus marker
# 
# 'x'	x marker
# 
# 'D'	diamond marker
# 
# 'd'	thin_diamond marker
# 
# '|'	vline marker
# 
# '_'	hline marker
# 
# 
# 
# 
# 
# Tipos de linha (linestyle)
# '-'	solid line style
# 
# '--'	dashed line style
# 
# '-.'	dash-dot line style
# 
# ':'	dotted line style
# 
