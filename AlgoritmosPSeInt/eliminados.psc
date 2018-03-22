Funcion val=ceil(N)
    //Verificamos si su parte decimal es mayor o menor que .5	
    Si N-trunc(N)<0.5
		val=trunc(N)
	SiNo
		val=trunc(N)+1
	FinSi
FinFuncion

Algoritmo eliminados
	Escribir 'Este algoritmo supone un conjunto de N números que se eliminan constantemente'
	Escribir 'El primero elimina al segundo, luego el tercero al cuarto y así de manera cíclica hasta que sólo sobrevive uno'
	Escribir 'Ingrese el valor de N'
	Leer N
	Si N>0 Y N==trunc(N) Entonces
		Dimension lista1[N]
		Dimension lista2[N]
		Para i=1 Hasta N Hacer
			lista1[i] = i
		FinPara
		i = 1
		Mientras (N>1) Hacer
			N = ceil[N/2]
			Escribir 'Comenzamos la eliminación #',i
			Para j=1 Hasta N Hacer
				lista2[j] = lista1[2*j-1]
			FinPara
			lista1[1] = lista2[N]
			Si N>1 Entonces
				Para j=2 Hasta N Hacer
					lista1[j] = lista2[j-1]
				FinPara
			FinSi
			//Para j=1 Hasta N Hacer
			//	Escribir lista1[j]
			//FinPara
			Escribir 'Quedan ',N
			i <- i+1
		FinMientras
		Escribir 'Sobrevivió el ',lista1[1]
	FinSi
FinAlgoritmo

