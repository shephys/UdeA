import sys
import math as m
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import rcParams

rcParams['text.latex.unicode']=True

sys.path.append("../lib/")
import functions as f2d

"""ESTA PARTE ES PARA LOS VECTORES"""

#Aquí usamos la clase ax que se usa para crear un objeto de ejes en la figura
fig = plt.figure("Fig5")  # creamos el objeto figura
ax = fig.add_subplot(1, 1, 1)  # Luego creamos el objeto ax dentro de la figura

#El titulo ahora se anexa de esta manera
ax.set_title(r"Vectores",fontsize=20)

#Primero vamos a mover las líneas de la izquierda y de abajo
#para que se intersecten con el origen. 
for spine in ["left", "bottom"]:
    ax.spines[spine].set_position("zero")

#Luego se eliminan las lineas de la derecha y la de arriba y devolvemos los ejes.
for spine in ["right", "top"]:
    ax.spines[spine].set_color("none")

#Genera el grafico de los vectores en el plano
ax.set_xlim(-5, 5)
ax.set_ylim(-5, 5)
ax.grid()
vecs = [[2, 4], [-3, 3], [-4, -3.5]] # lista de vectores
for v in vecs:
    ax.annotate("", xy=v, xytext=[0, 0],
               arrowprops=dict(facecolor="blue",
                              shrink=0,
                              alpha=0.7,
                              width=0.5))
    ax.text(1.1 * v[0], 1.1 * v[1], v)

plt.show()
