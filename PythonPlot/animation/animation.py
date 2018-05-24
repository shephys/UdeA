import sys, os
import math as m
import numpy as np
import matplotlib.pyplot as plt

#Estas importaciones son para poder escribir letras griegas y tildes el las gráficas
from matplotlib import rcParams
rcParams['text.latex.unicode']=True

#Esta es para animaciones
import matplotlib.animation as animation

#Ahora una animación sencilla de la función seno
#x=ang  y=r*sin(ang)
R=10
def data_gen(theta=0,r=R):
	contador = 0
	while contador < 101:
		contador += 1
		yield theta, r*m.sin(theta) 
		theta += 0.02*m.pi

#Aquí inicializamos el plano de la imagen de un ymin a ymax y de xmin a xmax
x1=0
x2=2.1*m.pi
y1=-1.1*R
y2=1.1*R
def init(xmin=x1,xmax=x2,ymin=y1,ymax=y2):
	ax.set_ylim(ymin,ymax)
	ax.set_xlim(xmin,xmax)
	del xdata[:]
	del ydata[:]
	line.set_data(xdata, ydata)
	return line,

#Luego creamos el entorno y la grid
fig3, ax = plt.subplots()
line, = ax.plot([], [], lw=2)
ax.grid()
xdata, ydata = [], []

#Esta es la función que hace que las imagenes se actualicen
def run(data):
    # update the data
    t, y = data
    xdata.append(t)
    ydata.append(y)
    xmin, xmax = ax.get_xlim()
	#Aquí se puede aumentar los limites de la gráfica pero como vamos hasta 
	#la altura máxima y el alcance no es necesario
    #if t >= xmax:
    #    ax.set_xlim(xmin, 2*xmax)
    #    ax.figure.canvas.draw()
    line.set_data(xdata, ydata)
    return line,

#Y aquí ya sale la animación, podemos cambiar algunas cosas para que sea más rápido
#se repita etc...
ani = animation.FuncAnimation(fig3, run, data_gen, blit=False, interval=100,
                              repeat=False, init_func=init)

plt.show()

