Algoritmo pares_impares
	//Hacer un algoritmo tal que dado N n�meros, calcule y escriba la suma de los pares y el producto
	//de los impares.
	Imprimir "Este programa realiza las suma de los pares y el producto de los impares de un conjunto de n�meros."
	Imprimir "Por favor introduzca el n�mero de datos:"
	Leer N
	//Debemos asegurarnos que el n�mero de datos sea entero y mayor que 0
	Si N - trunc(N)!=0 o N<=0
		Imprimir "N�mero de datos no valido. Volver a ejecutar el programa"
	Sino
		//Definimos las variables suma y producto
		suma=0
		prod=1
		
		//Usamos un ciclo para ingresar los n�meros del 1 hasta N 
		Para i desde 1 hasta N
			
			//Ahora pedimos los n�meros en orden
			Imprimir "Ingrese el n�mero #",i
			Leer num
			
			//Aqu� podemos hacer varias cosas dependiendo de lo que queramos
			//Los n�meros pares o impares se definen como n�meros enteros as� que 
			//necesitamos revisar si es entero o no. 
			
			Si num - trunc(num)!=0
				//Creamos un men� que nos d� dos opciones viables, tomar su parte entera o permitirle al usuario 
				//volver a escribir el n�mero.
				Imprimir "El n�mero ingresado no es un entero por favor elija una de las opciones:"
				Imprimir "Opci�n 1. Tomar la parte entera del n�mero."
				Imprimir "Opci�n 2. Introducir nuevamente el n�mero."
				Leer op
				Segun op
					1:  //Tomamos su parte entera
						num=trunc(num)
						//Luego lo dividimos por 2. Recordemos que mod no funciona para n�meros negativos						
						k=num/2
						//Comprobamos si k es entero o no, si lo es es par, sino es impar
						Si k - trunc(k)==0
							suma=suma+num
						Sino
							prod=prod*num
						FinSi
						
					2:  //Le permitimos ingresar el n�mero nuevamente. 
						//El ciclo no termina hasta que el usuario ingrese un n�mero valido
						Mientras num - trunc(num)!=0
							Imprimir "Ingrese el n�mero nuevamente. Recuerde que debe ser entero"
							Leer num
						FinMientras
						//Luego lo dividimos po 2. Recordemos que mod no funciona para n�meros negativos
						k=num/2
						//Comprobamos si k es entero o no, si lo es es par, sino es impar
						Si k - trunc(k)==0
							suma=suma+num
						Sino
							prod=prod*num
						FinSi
						
					De Otro Modo:
						//Si ingresa otra opci�n simplemente no contamos con este valor
						Imprimir "Opci�n incorrecta. El n�mero #",i," no ser� contado en la suma o multiplicaci�n."
				FinSegun
			Sino
				//num es entero, lo dividimos por 2. Recordemos que mod no funciona para n�meros negativos
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
