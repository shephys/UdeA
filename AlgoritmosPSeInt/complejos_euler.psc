Funcion ang=atan2(x1,y1)
	//Corregimos la tangente por cuadrantes
	Si x1>0.0 y y1>=0.0
		ang=atan(y1/x1)
	Sino
		Si x1==0.0 y y1>0.0
			ang=pi*0.5
		Sino
			Si x<0.0
				ang=atan(y1/x1)+pi
			Sino
				Si x1==0.0 y y1<0.0
					ang=pi*1.5
				Sino
					Si x1>0.0 y y1<0.0
						ang=atan(y1/x1)+2*pi
					Sino
						ang=0.0
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion


Algoritmo complejos_euler
	//Realice el algoritmo que convierta un complejo z1=x1+iy1 en su forma de euler Ae^{itheta}.
	
	Imprimir "Este programa pasa un número complejo z1=x1+iy1 en su forma de euler Ae^{itheta}" 
	Imprimir "Los ángulos serán expresados en grados"
	
	//Primero leemos la parte real e imaginaria del número z1
	Imprimir "Ingrese la parte real"
	Leer x1
	Imprimir "Ingrese la parte imaginaria"
	Leer y1
	
	//La amplitud o módulo es calculada como:
	A=raiz(x1*x1+y1*y1)
    //Y el ángulo como:
	theta=atan2(x1,y1)*180/pi

	
	Imprimir "El número complejo z1= ",x1,"+ (",y1,")i en su forma de euler es ",A,"e^{(",theta,")i}"	
FinAlgoritmo
