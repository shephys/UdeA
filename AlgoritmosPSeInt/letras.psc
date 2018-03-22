Algoritmo letras
	//Haga el algoritmo que tras leer un car�cter desde teclado, imprima por pantalla si la letra es
	//may�scula o min�scula. Ampl�e el algoritmo, indicando si el car�cter es un d�gito num�rico.
	Imprimir "Este programa me indica si un car�cter es una letra may�scula o min�scula o un n�mero" 
	Imprimir "Por favor introduzca el car�cter"
	Leer car
	//Debemos asegurarnos de tomar los datos sean correctos.
	Si Longitud(car)!=1
		Imprimir "Debe ser un s�lo car�cter. Volver a ejecutar el programa"
	Sino
		//Ahora comprobamos si est� entre las min�sculas
		Si car>="a" y car<="z"
			Imprimir "El car�cter ingresado es una min�scula"
		Sino
			//Ahora comprobamos si est� entre las may�scula
			Si car>="A" y car<="Z"
				Imprimir "El car�cter ingresado es una may�scula"
			Sino
				//Ahora comprobamos si est� entre los d�gitos 
				Si car>="0" y car<="9"
					Imprimir  "El car�cter es un d�gito num�rico"
				Sino
					Imprimir "El car�cter ingresado no es una letra o un d�gito num�rico"
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
