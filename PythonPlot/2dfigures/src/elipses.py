import sys
import math as m
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import rcParams

rcParams['text.latex.unicode']=True

sys.path.append("../lib/")
import functions as f2d


"""ESTA PARTE ES PARA LAS ELIPSES"""

#Para un mismo theta
theta=np.linspace(0,2*m.pi,100)
x=np.zeros(100)
y=np.zeros(100)
#Elipse en el centro
x,y=f2d.elipse(theta,0,0,1,2)

plt.figure('Fig4')
plt.suptitle(u'Elipses y Arcos')  # Ponemos un título
#Podemos usar subplots_adjust(left=None, bottom=None, right=None, top=None, wspace=None, hspace=None)
#Para ajustar los espacios de las figuras pequeñas
plt.subplots_adjust(wspace = 0.5,hspace=0.5)

##Vamos hacer 4 gráficas en una sóla figura
plt.subplot(2,2,1) 
plt.title(u'Elipse 1') 
#Vamos a quitar los ejes
plt.axis('off')
#Si queremos sólo quitamos los ticks(los números y el label para dejar el cuadro)
#plt.xticks([]) # labels 
#plt.yticks([])

plt.plot(x,y,linestyle="--") 

plt.subplot(2,2,2) 
plt.title(u'Elipse 2') 
plt.xlabel('x[m]')  # Ponemos etiqueta al eje x
plt.ylabel('y[m]')  # Ponemos etiqueta al eje y

#elipse no centrado
#Si recordamos el foco es igual a f=raiz(A^2-B^2) siendo A el semieje mayor
#Y la excentridad es igual a e=f/A, siendo A el semieje mayor.
#Si tenemos las ecuaciones del foco y la exentricidad podemos calcular la componente B
f=2
e=0.5
A=f/e
B=m.sqrt(A**2-f**2)
x,y=f2d.elipse(theta,1,1,A,B)

#Vamos a asingar los límites de nuestro ejes
plt.xlim(-6, 6)
plt.ylim(-6, 6)
#Vamos hacer dos líneas negras en los ejes x=0 y=0
plt.axhline(y=0, color="black",xmin=0, xmax=10, hold=None)
plt.axvline(x=0, color="black",ymin=0, ymax=10, hold=None)
plt.plot(x,y, color="blue") 
#Agreguemos una línea punteada para ubicar el foco 
plt.axhline(y=1, color="black",xmin=0, xmax=10,linestyle="--",linewidth=0.5)
plt.axvline(x=1, color="black",ymin=0, ymax=10,linestyle="--",linewidth=0.5)
plt.plot(f+1,1, linestyle="",marker="o",markersize=5,markeredgecolor="blue",markerfacecolor="red") 
plt.subplot(2,2,3) 

#Para un arco
theta=np.linspace((1.0/3.0)*m.pi,(5.0/3.0)*m.pi,100)
x=np.zeros(100)
y=np.zeros(100)
#Arco en el centro
x,y=f2d.elipse(theta,0,0,A,B)

plt.title('Arco 1') 
plt.xlabel('x[m]')  # Ponemos etiqueta al eje x
plt.ylabel('y[m]')  # Ponemos etiqueta al eje y


#Aquí vamos a poner un texto para el foco
plt.plot(x,y,color="black",linewidth=1) 
xline=A*np.linspace(0,1,100)*m.cos((1.0/3.0)*m.pi)
yline1=B*np.linspace(0,1,100)*m.sin((1.0/3.0)*m.pi)
yline2=B*np.linspace(0,1,100)*m.sin((5.0/3.0)*m.pi)
plt.plot(xline,yline1,color="black",linewidth=1) 
plt.plot(xline,yline2,color="black",linewidth=1) 
plt.plot(-f,0, linestyle="",marker="o",markersize=5,markeredgecolor="blue",markerfacecolor="red") 
plt.annotate('Foco',
            xy=(-f,0), xycoords='data',
            xytext=(+10, +30), textcoords='offset points', fontsize=10,
            arrowprops=dict(arrowstyle="->", connectionstyle="arc3,rad=.2"))

plt.subplot(2,2,4) 

plt.title('Arcos') 
plt.xlabel('x[m]')  # Ponemos etiqueta al eje x
plt.ylabel('y[m]')  # Ponemos etiqueta al eje y

#Una elipse completa
theta=np.linspace(0,2*m.pi,100)
x=np.zeros(100)
y=np.zeros(100)
x,y=f2d.elipse(theta,0,0,8,2)
#El foco estaría en (A^2-B^2)^0.5=12
f=12**0.5
#Aquí vemos la elipse con algunos arcos 
plt.plot(x,y,color="black",linestyle="--") 
plt.plot(-f,0, linestyle="",marker="o",markersize=15,markeredgecolor="black",markerfacecolor="yellow") 

#Los arcos van desde el foco hasta ciertos puntos de la elipse
plt.plot([-f,x[10]],[0,y[10]],color="black",linewidth=1) 
plt.plot([-f,x[15]],[0,y[15]],color="black",linewidth=1)

#Hacemos otro arco
plt.plot([-f,x[45]],[0,y[45]],color="black",linewidth=1) 
plt.plot([-f,x[53]],[0,y[53]],color="black",linewidth=1)

#Y otro más
plt.plot([-f,x[70]],[0,y[70]],color="black",linewidth=1) 
plt.plot([-f,x[80]],[0,y[80]],color="black",linewidth=1)



plt.show()
