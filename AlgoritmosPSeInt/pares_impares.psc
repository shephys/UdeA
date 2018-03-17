Algoritmo pares_impares
	//Hacer un algoritmo tal que dado N números, calcule y escriba la suma de los pares y el producto
	//de los impares.
	Imprimir "Este programa realiza las suma de los pares y el producto de los impares de un conjunto de números."
	Imprimir "Por favor introduzca el número de datos:"
	Leer N
	//Debemos asegurarnos que el número de datos sea entero y mayor que 0
	Si N - trunc(N)!=0 o N<=0
		Imprimir "Número de datos no valido. Volver a ejecutar el programa"
	Sino
		//Definimos las variables suma y producto
		suma=0
		prod=1
		
		//Usamos un ciclo para ingresar los números del 1 hasta N 
		Para i desde 1 hasta N
			
			//Ahora pedimos los números en orden
			Imprimir "Ingrese el número #",i
			Leer num
			
			//Aquí podemos hacer varias cosas dependiendo de lo que queramos
			//Los números pares o impares se definen como números enteros así que 
			//necesitamos revisar si es entero o no. 
			
			Si num - trunc(num)!=0
				//Creamos un menú que nos dé dos opciones viables, tomar su parte entera o permitirle al usuario 
				//volver a escribir el número.
				Imprimir "El número ingresado no es un entero por favor elija una de las opciones:"
				Imprimir "Opción 1. Tomar la parte entera del número."
				Imprimir "Opción 2. Introducir nuevamente el número."
				Leer op
				Segun op
					1:  //Tomamos su parte entera
						num=trunc(num)
						//Luego lo dividimos por 2. Recordemos que mod no funciona para números negativos						
						k=num/2
						//Comprobamos si k es entero o no, si lo es es par, sino es impar
						Si k - trunc(k)==0
							suma=suma+num
						Sino
							prod=prod*num
						FinSi
						
					2:  //Le permitimos ingresar el número nuevamente. 
						//El ciclo no termina hasta que el usuario ingrese un número valido
						Mientras num - trunc(num)!=0
							Imprimir "Ingrese el número nuevamente. Recuerde que debe ser entero"
							Leer num
						FinMientras
						//Luego lo dividimos po 2. Recordemos que mod no funciona para números negativos
						k=num/2
						//Comprobamos si k es entero o no, si lo es es par, sino es impar
						Si k - trunc(k)==0
							suma=suma+num
						Sino
							prod=prod*num
						FinSi
						
					De Otro Modo:
						//Si ingresa otra opción simplemente no contamos con este valor
						Imprimir "Opción incorrecta. El número #",i," no será contado en la suma o multiplicación."
				FinSegun
			Sino
				//num es entero, lo dividimos por 2. Recordemos que mod no funciona para números negativos
				k=num/2
				//Comprobamos si k es entero o no, si lo es es par, sino es impar
				Si k - trunc(k)==0
					suma=suma+num
				Sino
					prod=prod*num
				FinSi
			FinSi
		FinPara
		
		//Una vez terminemos el ciclo para, imprimimos la suma y el producto
		Imprimir "La suma de los pares es: ",suma," y el producto de los impares es: ",prod
	FinSi
FinAlgoritmo
