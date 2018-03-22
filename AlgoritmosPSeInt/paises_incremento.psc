Algoritmo paises_incremento
	//Realice un Algoritmo que permita dar como salida la población de dos países (a y b), teniendo en
	//cuenta para tal propósito lo siguiente:
	//En el primer año el país "a" tiene menos población que el país \u201cb\u201d.
	//Las tasas de crecimiento de los países "a" y "b" son de 6% y 3% anuales respectivamente.
	//Se debe dar como salidas las poblaciones desde el segundo año hasta que la población de "a"
	//exceda a la población de "b", además la cantidad de años que transcurrieron para que esto sucediera.
	Imprimir "Este programa me indica la poblaciones de dos países hasta que uno exceda al otro" 
	Imprimir "Por favor introduzca la población de país A y B. Recuerde que la población de A debe ser menor"
	Leer pobA,pobB
	//Debemos asegurarnos de tomar los datos sean correctos.
	Si pobA>pobB o pobA-trunc(pobA)!=0 o pobB-trunc(pobB)!=0 
		Imprimir "La población de A debe ser menor que la de B. Las poblaciones deben ser enteras. Volver a ejecutar el programa"
	Sino
		i=2
		//Como no sabemos cuando va exceder A a B usamos un ciclo mientras. Recordemos reescribir a las
		//poblaciones así como avanzar en el contador i. 
		Mientras pobA<=pobB
			pobA=trunc(pobA*1.6)
			pobB=trunc(pobB*1.3)
			Imprimir "En el año ",i," la población del país A es igual a ",pobA," personas y del país B ",pobB," personas"
			i=i+1
		FinMientras
		Imprimir "En el año ",i-1," la población del país A excedió a la del país B"
	FinSi
FinAlgoritmo
