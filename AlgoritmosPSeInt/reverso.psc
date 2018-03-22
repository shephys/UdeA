Algoritmo reverso
	//Elaborar un algoritmo el cual reciba un n�mero de N cifras y lo invierta.
	Imprimir "Este programa invierte un n�mero de N cifras"
	Imprimir "Ingrese el n�mero de cifras del n�mero a invertir"
    Leer N
    Si N>=0 y N==trunc(N)
	    Imprimir "Por favor introduzca el n�mero natural de ",N," cifras"
		Leer num
		//Debemos asegurarnos que los datos sean correctos
		Si  num<0 o num-trunc(num)!=0 o num<10^(N-1) o N>10^(N)
			Imprimir "El n�mero debe ser natural y de ",N," cifras. Volver a ejecutar el programa"
		Sino
			//Ahora debemos identificar las unidades por cada 10^N.
            Dimension cifras[N]
            sum=0
            Para i=1 hasta N
			cifras[i]=trunc((num-sum)/10^(N-i))
			sum=sum + cifras[i]*10^(N-i)
		FinPara
		num_inv=0
		Para i=N hasta 1 con paso -1
			num_inv=num_inv + cifras[i]*10^(i-1)
		FinPara
		
		Imprimir "El n�mero inverso es: ",num_inv
           
	  FinSi
  FinSi
FinAlgoritmo
