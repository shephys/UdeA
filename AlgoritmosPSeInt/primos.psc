Algoritmo primos
	//Hacer un algoritmo que determine si un numero N es primo o no
	Imprimir "Este programa determina si un n�mero es primo o no" 
	Imprimir "Por favor introduzca el n�mero natural"
	Leer N
	//Debemos asegurarnos que se los datos sean correctos
	Si N<=0 o N-trunc(N)!=0
		Imprimir "Los n�meros primos son por definici�n naturales sin contar el 0. Volver a ejecutar el programa"
	Sino
		Si N=1 o N=2
			Imprimir "El n�mero es primo"
		Sino
			primo=Verdadero
            i=2
			Mientras(i<N y primo)
				Si N MOD i ==0
					primo=Falso
				FinSi
            i=i+1
			FinMientras
			Si primo
				Imprimir "El n�mero es primo"
			Sino
				Imprimir "El n�mero no es primo"
			FinSi
			 
		FinSi
	FinSi
FinAlgoritmo
