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


#Y para finalizar un 3D sencillo
fig1 = figure("Montaje de una mesa")
ax1 = fig1.add_subplot(111, projection='3d')

limmin=[-1,-2,0]
limmax=[1,2,10]
H=5


#Ahora una mesa
y = np.linspace(limmin[1], limmax[1],100)
z = H*np.ones(len(y))
x = np.zeros(len(y))
ax1.plot(x, y, z, c='k')

y = np.linspace(limmin[1], limmax[1],100)
z = np.zeros(len(y))
x = np.zeros(len(y))
ax1.plot(x, y, z, c='k')

z = np.linspace(0, H,100)
y = limmin[1]*np.ones(len(z))
x = np.zeros(len(z))
ax1.plot(x, y, z, c='k')

z = np.linspace(0, H,100)
y = limmax[1]*np.ones(len(z))
x = np.zeros(len(z))
ax1.plot(x, y, z, c='k')

x = np.linspace(limmin[0], 0,100)
z = H*np.ones(len(x))
y = limmin[1]*np.ones(len(x))
ax1.plot(x, y, z, c='k')

x = np.linspace(limmin[0], 0,100)
z = H*np.ones(len(x))
y = limmax[1]*np.ones(len(x))
ax1.plot(x, y, z, c='k')

ax1.set_xlim3d(limmin[0], limmax[0])
ax1.set_ylim3d(limmin[1], limmax[1])
ax1.set_zlim3d(limmin[2], limmax[2])

plt.ioff()
plt.show()
