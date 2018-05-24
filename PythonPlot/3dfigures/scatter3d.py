import sys, os
import math as m
import numpy as np
import matplotlib.pyplot as plt

#Estas importaciones son para poder escribir letras griegas y tildes el las gráficas
from matplotlib import rcParams
rcParams['text.latex.unicode']=True
import matplotlib.animation as animation

#Estás para importar manejo de gráficas 3D
from pylab import *
from mpl_toolkits.mplot3d import Axes3D

x=np.random.rand(100)*5
y=np.random.rand(100)*5
z=np.random.rand(100)*5

#Y para finalizar un 3D sencillo
fig = figure("Conjunto sencillo de puntos")
ax = fig.add_subplot(111, projection='3d')
ax.scatter(x, y, z, c='skyblue', s=60)
ax.view_init(30, 185)
plt.show()

