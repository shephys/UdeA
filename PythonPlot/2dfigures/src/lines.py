import sys
import math as m
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import rcParams

rcParams['text.latex.unicode']=True

sys.path.append("../lib/")
import functions as f2d

"""ESTA PARTE ES PARA LAS LÍNEAS"""

#Para un mismo x
x=np.linspace(0,10,100)


plt.close("all")
plt.figure('Fig1')
plt.suptitle('Lineas Rectas')  # Ponemos un título
#Podemos usar subplots_adjust(left=None, bottom=None, right=None, top=None, wspace=None, hspace=None)
#Para ajustar los espacios de las figuras pequeñas
plt.subplots_adjust(wspace = 0.5)

##Vamos hacer 3 gráficas en una sóla figura
plt.subplot(1,3,1) 
plt.title('Linea 1') 
plt.xlabel('x[m]')  # Ponemos etiqueta al eje x
plt.ylabel('y[m]')  # Ponemos etiqueta al eje y

#Aquí vemos como cambiar el marcador, su tamaño, su color de contorno (edge) y el color de relleno (face) 
plt.plot(x,f2d.line(x,1,5),linestyle="",marker="o",markersize=5,markeredgecolor="blue",markerfacecolor="red") 

plt.subplot(1,3,2) 
plt.title('Linea 2') 
plt.xlabel('x[m]')  # Ponemos etiqueta al eje x
plt.ylabel('y[m]')  # Ponemos etiqueta al eje y

#Aquí vemos como cambiar el tipo de línea y su grosor 
plt.plot(x,f2d.line(x,-10,-4), color="blue",linestyle="--",linewidth=5) 

plt.subplot(1,3,3) 
plt.title('Linea 3') 
plt.xlabel('x[m]')  # Ponemos etiqueta al eje x
plt.ylabel('y[m]')  # Ponemos etiqueta al eje y

#Aquí vemos como cambiar tanto líneas como marcadores. 
plt.plot(x,f2d.line(x,0.2,8),color="black",marker="d",linewidth=1,markersize=2) 

plt.show()
