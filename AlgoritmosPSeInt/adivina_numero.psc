Algoritmo adivina_numero
	//Plantear un algoritmo para adivinar un número de seis cifras con las siguientes condiciones:
	//- Ninguna cifra es impar.
	//- La primera es un tercio de la quinta y la mitad de la tercera.
	//- La segunda es la menor de todas.
	//- La última es la diferencia entre la cuarta y la quinta.
	//Se le pide al usuario cifra por cifra y se le va indicando si va por el camino correcto según las
	//	condiciones descritas arriba.
	Imprimir "Este programa nos permite adivinar un número de seis cifras cumpliendo las siguientes condiciones:" 
	Imprimir "1. Ninguna cifra es impar" 
	Imprimir "2. La primera es un tercio de la quinta y la mitad de la tercera." 
	Imprimir "3. La segunda es la menor de todas." 
	Imprimir "4. La última es la diferencia entre la cuarta y la quinta."
	//Definimos un vector de 6 cifras para el número
	Dimension cifras[6]
	error=Falso
	i=1
	//Mientras el error sea falso y el contador sea menor que 6 la persona habrá ganado el juego
	Mientras (!error y i<=6)
		Imprimir "Ingrese la cifra #",i
		Leer cifras[i]
		//Revisamos que no sea un numero mayor o igual a 10
		Si cifras[i]>=10
			Imprimir "La cifra debe ser menor que 10"
			error=verdadero
		Sino
			//Revisamos que sea entera positiva
			Si cifras[i]<0 o cifras[i]-trunc(cifras[i])!=0 
				Imprimir "La cifra debe ser entera positiva"
				error=verdadero
			Sino
				//Revisamos que la cifra no sea impar
				Si cifras[i] MOD 2 !=0 
					Imprimir "La cifra no deben ser impar"
					error=Verdadero
				SiNo
					//Revisamos que la primera cifra sea la mitad de la tercera
					Si i==3 y cifras[3]!=cifras[1]*2 
						Imprimir "La primera cifra no es la mitad de la tercera"
						error=verdadero
					Sino
						//Ahora revisamos que la primera sea un tercio de la quinta
						Si i==5 y cifras[5]!=cifras[1]*3 
							Imprimir "La primera cifra no es un tercio de la quita cifra"
							error=Verdadero
						Sino
							//Revisamos que la diferenica entre la cuarta y la quita cifra sea igual a la sexta cifra
							Si i==6 y cifras[6]!=cifras[4]-cifras[5] 
								Imprimir "La sexta cifra no es la diferencia entra la cuarta y la quinta cifra"
								error=Verdadero
							Sino
								//Revisamos que la cifra 2 sea la menor a todas, como no puede ser iguale evitamos la tercera cifra
								Si i>1 y cifras[2]>=cifras[i-1] y i!=3  
									Imprimir "La segunda no es la menor de todas"
									error=Verdadero
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		i=i+1
		//el contador aumenta
	FinMientras
	//Volvemos a comparar la segunda cifra con la última que no era revisada en el ciclo
	Si cifras[2]>=cifras[6] y !error
		Imprimir "La segunda no es la menor de todas"
	FinSi
	//Si al final pasa todas las pruebas ha ganado el juego. 
	Imprimir "Ha encontrado la solución el número correcto es: ",cifras[1],cifras[2],cifras[3],cifras[4],cifras[5],cifras[6]
FinAlgoritmo
