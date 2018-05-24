import sys
import math as m
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import rcParams

rcParams['text.latex.unicode']=True

sys.path.append("../lib/")
import functions as f2d


"""ESTA PARTE ES PARA LAS PARÁBOLAS"""

#Para un mismo x
x=np.linspace(-5,5,100)

plt.figure('Fig2')
plt.suptitle(u"Parábolas")  # Ponemos un título la r es para que no deje poner tildes de esta forma \'

##Vamos hacer 3 gráficas en una sóla con leyendas
plt.xlabel('x[m]')  # Ponemos etiqueta al eje x
plt.ylabel('y[m]')  # Ponemos etiqueta al eje y

#Aquí vemos como cambiar el marcador, su tamaño, su color de contorno (edge) y el color de relleno (face) 
plt.plot(x,f2d.parable(x,1,5,7),linestyle="",marker="o",markersize=5,markeredgecolor="blue",markerfacecolor="red",label=r"$x^2+5x+7$") 

#Aquí vemos como cambiar el tipo de línea y su grosor 
plt.plot(x,f2d.parable(x,-2,4,-8), color="blue",linestyle="--",linewidth=5,label=r"$-2x^2+4x-8$") 

#Aquí vemos como cambiar tanto líneas como marcadores. 
plt.plot(x,f2d.parable(x,0.5,-8,2),color="black",marker="d",linewidth=1,markersize=2,label=r"$0.5x^2-8x+2$") 

#Aquí ponemos las leyenda, podemos ubicarla con loc
plt.legend(loc="lower right", fontsize =15,ncol=1, shadow=True, title="Figuras", fancybox=True)

#Aquí ponemos una leyenda
plt.grid()

plt.show()
