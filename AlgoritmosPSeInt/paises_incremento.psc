Algoritmo paises_incremento
	//Realice un Algoritmo que permita dar como salida la poblaci�n de dos pa�ses (a y b), teniendo en
	//cuenta para tal prop�sito lo siguiente:
	//En el primer a�o el pa�s "a" tiene menos poblaci�n que el pa�s \u201cb\u201d.
	//Las tasas de crecimiento de los pa�ses "a" y "b" son de 6% y 3% anuales respectivamente.
	//Se debe dar como salidas las poblaciones desde el segundo a�o hasta que la poblaci�n de "a"
	//exceda a la poblaci�n de "b", adem�s la cantidad de a�os que transcurrieron para que esto sucediera.
	Imprimir "Este programa me indica la poblaciones de dos pa�ses hasta que uno exceda al otro" 
	Imprimir "Por favor introduzca la poblaci�n de pa�s A y B. Recuerde que la poblaci�n de A debe ser menor"
	Leer pobA,pobB
	//Debemos asegurarnos de tomar los datos sean correctos.
	Si pobA>pobB o pobA-trunc(pobA)!=0 o pobB-trunc(pobB)!=0 
		Imprimir "La poblaci�n de A debe ser menor que la de B. Las poblaciones deben ser enteras. Volver a ejecutar el programa"
	Sino
		i=2
		//Como no sabemos cuando va exceder A a B usamos un ciclo mientras. Recordemos reescribir a las
		//poblaciones as� como avanzar en el contador i. 
		Mientras pobA<=pobB
			pobA=trunc(pobA*1.6)
			pobB=trunc(pobB*1.3)
			Imprimir "En el a�o ",i," la poblaci�n del pa�s A es igual a ",pobA," personas y del pa�s B ",pobB," personas"
			i=i+1
		FinMientras
		Imprimir "En el a�o ",i-1," la poblaci�n del pa�s A excedi� a la del pa�s B"
	FinSi
FinAlgoritmo
