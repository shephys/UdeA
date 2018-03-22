Algoritmo primos
	//Hacer un algoritmo que determine si un numero N es primo o no
	Imprimir "Este programa determina si un número es primo o no" 
	Imprimir "Por favor introduzca el número natural"
	Leer N
	//Debemos asegurarnos que se los datos sean correctos
	Si N<=0 o N-trunc(N)!=0
		Imprimir "Los números primos son por definición naturales sin contar el 0. Volver a ejecutar el programa"
	Sino
		Si N=1 o N=2
			Imprimir "El número es primo"
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
				Imprimir "El número es primo"
			Sino
				Imprimir "El número no es primo"
			FinSi
			 
		FinSi
	FinSi
FinAlgoritmo
