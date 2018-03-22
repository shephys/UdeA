Algoritmo letras
	//Haga el algoritmo que tras leer un carácter desde teclado, imprima por pantalla si la letra es
	//mayúscula o minúscula. Amplíe el algoritmo, indicando si el carácter es un dígito numérico.
	Imprimir "Este programa me indica si un carácter es una letra mayúscula o minúscula o un número" 
	Imprimir "Por favor introduzca el carácter"
	Leer car
	//Debemos asegurarnos de tomar los datos sean correctos.
	Si Longitud(car)!=1
		Imprimir "Debe ser un sólo carácter. Volver a ejecutar el programa"
	Sino
		//Ahora comprobamos si está entre las minúsculas
		Si car>="a" y car<="z"
			Imprimir "El carácter ingresado es una minúscula"
		Sino
			//Ahora comprobamos si está entre las mayúscula
			Si car>="A" y car<="Z"
				Imprimir "El carácter ingresado es una mayúscula"
			Sino
				//Ahora comprobamos si está entre los dígitos 
				Si car>="0" y car<="9"
					Imprimir  "El carácter es un dígito numérico"
				Sino
					Imprimir "El carácter ingresado no es una letra o un dígito numérico"
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
