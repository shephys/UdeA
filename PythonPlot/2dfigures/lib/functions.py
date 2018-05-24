import sys
import math as m
import numpy as np

#Vamos hacer varias gráficas en una sóla ventana
#Y=MX+B
#Y=AX^2+BX+C 
#(X-A)^2+(Y-B)^2=R^2
#((X-X1)/A)^2+((Y-Y1)/B)^2=1

#la sentencia isinstance(a,tipo) es para comprobar si a es de tal tipo, sino hay un problema de ejecución

def check_array(x):
	return isinstance(x,np.ndarray)

def check_list(x):
	return isinstance(x,list)

def check_number(x):
	return (isinstance(x,float) or isinstance(x,int))

def line(x,m,b):
	if (check_array(x) and check_number(m) and check_number(b)):
		return m*x+b
	else:
		print("Error data!")

def parable(x,a,b,c):
	if (check_array(x) and check_number(a) and check_number(b) and check_number(c)):
		return a*x**2.0+b*x+c
	else:
		print("Error data!")

def circle(theta,R,A,B):
	if (check_array(theta) and check_number(R) and check_number(A) and check_number(B)):		
		x=np.cos(theta)*R+A
		y=np.sin(theta)*R+B
		return x,y
	else:
		print("Error data!")

def elipse(theta,X1,Y1,A,B):
	if (check_array(theta) and check_number(A) and check_number(B) and check_number(Y1) and check_number(X1)):		
		x=A*np.cos(theta)+X1
		y=B*np.sin(theta)+Y1
		return x,y
	else:
		print("Error data!")

