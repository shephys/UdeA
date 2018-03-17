Algoritmo p5_5
	//El participante de un concurso tiene que recorrer en su automóvil una ruta determinada desde un
	//lugar A a un lugar B, entre los cuales hay una distancia que es igual a 4*K kilómetros. Con el depósito
	//de gasolina lleno, su coche puede recorrer una distancia máxima de K kilómetros. El concursante tiene
	//un mapa de la ruta que debe recorrer en el que figuran las distancias entre las gasolineras que hay
	//entre A y B, y planea realizar el viaje con la menor cantidad de paradas posible. Suponiendo que parte
	//de A con el depósito lleno, y que la distancia máxima entre dos gasolineras consecutivas obedece la
	//secuencia M(i)=0.1*sqrt(i) para i par y M(i)=0.05*(i)*K - 0.01*K para i impar, desarrollar un algoritmo
	//eficiente que determine en qué gasolineras deberá parar el concursante.
	
	Imprimir "El participante de un concurso tiene que recorrer en su automóvil una ruta determinada desde un lugar A a un lugar B."
	Imprimir "Entre estos lugares hay cierto número de gasolineras y el auto tiene un limite de distacia recorrida usando el tanque lleno K." 
	Imprimir "La distancia entre A y B es 4 veces K. Este programa calcula en que gasolineras debe parar, tal que llegue al lugar B con el menor número de paradas."
	Imprimir "Ingrese la distancia maxima del tanque en [Km]" 
	Leer K
	Si K>0
		//La distancia debe ser mayor que cero para que todo funcione
		Dimension M[1000]
		D=K*4.0
		
		Dtemp=0.0
		i=1
		//Primero debemos segurarnos de ubicar las gasolineras dentro de la distancia D
		Mientras Dtemp<D
			Si i MOD 2 !=0
				M[i]=0.05*K*i-0.01*K
				Dtemp=Dtemp+M[i]
			sino 
				M[i]=0.1*raiz(i)
				Dtemp=Dtemp+M[i]
			FinSi
			i=i+1
		FinMientras
		
		//Hay i-2 gasolineras, puesto que para la gasolinera i-1 ya debe haberse pasado de las distancia D pero al sumarse
		//el contador en la parte inferior para hacer el siguiente calculo tenemos que nos hemos pasado 2 gasolineras
		Imprimir "Hay ",i-2," gasolineras entre el lugar A y el lugar B, cuya distancia es ",D," [Km] el auto recorre como máximo ",K," [Km]" 
		
		Imprimir " " 
		Imprimir "********************************************************************************************" 
		Drec=0.0
		//Acá hacemos una lista del recorrido y sacamos el último tramo entre la gasolinera i-2 y la posición final de B
		Para j=1 hasta i-2
			Drec=Drec + M[j]
			Imprimir "La gasolinera ",j," está a ",M[j]," [Km] de la anterior. Total recorrido ",Drec, " [Km]"
		FinPara
		Utramo=D-Drec
		
		Drec=Drec + M[i-1]
		Imprimir "La gasolinera ",i-1," está a ",M[i-1]," [Km] de la anterior. Total recorrido ",Drec, " [Km]."
		Imprimir "Esta gasolinera está más allá de la ciudad B por ", Drec-D," [Km]" 
		Imprimir "*********************************************************************************************" 
		Imprimir " " 
		
		M[i-1]=Utramo
		//Ahora realizamos el plan de recorrido 
		Drec=0
		r=0
		j=1
		error=Falso
		rep=Falso
		
		Imprimir "************** PLAN DE RECORRIDO *************" 
		Mientras (!error  y j<=i-1)
			//Revisamos tanto el recorrido como la distancia recorrida por el auto con el tanque lleno
			Drec = Drec+M[j] 
			r= r + M[j]
			
			Si M[j]>K 
				//Revisamos que la gasolinera no esté más lejos que lo que puede recorrer el auto
				Si j<i-1
					//Siempre que sea menor que i-1 que es el ultimo tramo y el caso especial de j=2 tenemos que pasa por la primera pero
					//no llega a la segunda
					Si j==2
						Imprimir "Pasa por la gasolinera ",j-1," sin parar. Recorrido ",Drec-M[j]," [Km]"
						Imprimir "No se puede llegar a la gasolinera ",j,". Esta a ",M[j]," [Km] y lo máximo que puede recorrer es ",K," Km"
						error=Verdadero
					SiNo
						//En los otros casos solo se dice que no llega a tal gasolinera
						Imprimir "No se puede llegar a la gasolinera ",j,". Esta a ",M[j]," [Km] y lo máximo que puede recorrer es ",K," Km"
						error=Verdadero
					FinSi
				SiNo
					//En el caso del último tramo se dice que no puede llegar a B
					Imprimir "No se puede llegar a la Ciudad B. Esta a ",M[j]," [Km] y lo máximo que puede recorrer es ",K," Km"
					error=Verdadero
				FinSi
			Sino
				//Luego verificamos que el recorrido r no sea mayor que K
				Si r>K
					//Si lo es debe tanquear y debemos inicializar el recorrido r en la distancia desde la gasolinera que tanqueamos 
					Imprimir "-->Se debe parar en la gasolinera ",j-1,". Recorrido ",Drec-M[j]," [Km]"
					Imprimir "***Tanquea porque debe recorrer ",M[j]," [Km] y le queda combustible para ",K-r+M[j], " [Km]"
					r=0+M[j]
				SiNo
					//Sino, siempre y cuando j sea mayor que 1 para no tener problemas con el j-1, decimos que no debe parar 
					Si j>1
						Imprimir "Pasa por la gasolinera ",j-1," sin parar. Recorrido ",Drec-M[j]," [Km]"
					FinSi
				FinSi
			FinSi
			j=j+1
		FinMientras
		//Siempre que el error sea falso llega a la ciudad B
		Si !error
			Imprimir "Llega a la ciudad B"
		FinSi
	SiNo
		Imprimir "La distancia debe ser positva mayor que cero."
	FinSi
	
	
	
	
FinAlgoritmo
