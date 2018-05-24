import sys
import math as m
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import rcParams

rcParams['text.latex.unicode']=True

sys.path.append("../lib/")
import functions as f2d


"""ESTA PARTE ES PARA LOS CIRCULOS"""

#Para un mismo theta
theta=np.linspace(0,2*m.pi,100)
x=np.zeros(100)
y=np.zeros(100)
#Círculo en el centro
x,y=f2d.circle(theta,1,0,0)

plt.figure('Fig3')
plt.suptitle(u'Círculos y Arcos')  # Ponemos un título
#Podemos usar subplots_adjust(left=None, bottom=None, right=None, top=None, wspace=None, hspace=None)
#Para ajustar los espacios de las figuras pequeñas
plt.subplots_adjust(wspace = 0.5,hspace=0.5)

##Vamos hacer 4 gráficas en una sóla figura
plt.subplot(2,2,1) 
plt.title(u'Círculo 1') 
plt.xlabel('x[m]')  # Ponemos etiqueta al eje x
plt.ylabel('y[m]')  # Ponemos etiqueta al eje y

#Por la forma de los ejes puede que no lo veamos como un círculo, agregamos que
#los ejes sean equitativos visualmente
plt.axis('equal')
plt.plot(x,y,linestyle="--") 

plt.subplot(2,2,2) 
plt.title(u'Círculo 2') 
plt.xlabel('x[m]')  # Ponemos etiqueta al eje x
plt.ylabel('y[m]')  # Ponemos etiqueta al eje y

#Círculo no centrado
x,y=f2d.circle(theta,1,-1,1)

#Vamos a asingar los límites de nuestro ejes
plt.xlim(-5, 5)
plt.ylim(-5, 5)
#Vamos hacer dos líneas negras en los ejes x=0 y=0
plt.axhline(y=0, color="black",xmin=0, xmax=10, hold=None)
plt.axvline(x=0, color="black",ymin=0, ymax=10, hold=None)
plt.plot(x,y, color="blue") 

plt.subplot(2,2,3) 

#Para un arco
theta=np.linspace((1.0/3.0)*m.pi,(5.0/3.0)*m.pi,100)
x=np.zeros(100)
y=np.zeros(100)
#Arco en el centro
x,y=f2d.circle(theta,1,0,0)

plt.title('Arco 1') 
plt.xlabel('x[m]')  # Ponemos etiqueta al eje x
plt.ylabel('y[m]')  # Ponemos etiqueta al eje y

plt.xlim(-1, 1)
plt.ylim(-1, 1)
plt.axis('equal')

#Aquí vemos un packman jajajaj 
plt.plot(x,y,color="black",linewidth=1) 
xline=np.linspace(0,1,100)*m.cos((1.0/3.0)*m.pi)
yline1=np.linspace(0,1,100)*m.sin((1.0/3.0)*m.pi)
yline2=np.linspace(0,1,100)*m.sin((5.0/3.0)*m.pi)
plt.plot(xline,yline1,color="black",linewidth=1) 
plt.plot(xline,yline2,color="black",linewidth=1) 


plt.subplot(2,2,4) 

plt.title('Arco 2') 
plt.xlabel('x[m]')  # Ponemos etiqueta al eje x
plt.ylabel('y[m]')  # Ponemos etiqueta al eje y

#Para un arco
theta=np.linspace((-1.0/3.0)*m.pi,(1.0/3.0)*m.pi,100)
x=np.zeros(100)
y=np.zeros(100)
#Arco en el centro
x,y=f2d.circle(theta,1,0,0)

#Aquí vemos el arco coloreado 
plt.plot(x,y,color="black") 
plt.plot(xline,yline1,color="black",linewidth=1) 
plt.plot(xline,yline2,color="black",linewidth=1) 
#Ahora vamos a colorear usando fill_between
#El primer argumento es el intervalo de x primero coloreamos entre las líneas rectas
plt.fill_between(xline, yline1,yline2,color="red")
#Luego coloreamos para el arco
plt.fill_between(x, 0,y,color="blue")
#Podemos colocarlo en el mismo tipo de color para que no se note la diferencia
plt.xlim(-1, 1)
plt.ylim(-1, 1)
plt.axis('equal')


plt.show()
