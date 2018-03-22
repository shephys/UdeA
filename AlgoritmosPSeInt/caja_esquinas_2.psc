Algoritmo caja_esquinas_2
	//Hacer una caja cortando las esquinas de un rectángulo formando las 6 caras. 
	//       A               A
	//  C    
	//  ------------    ------------
	// D|_|      |_|    |          |
	//  |          |    |          |
 	// B|          |  A |          |
	//  |_        _|    |          |
	//  | |      | |    |          |
	//  ------------    ------------
	
	Imprimir "Este programa calcula el volumen de una caja formada por 6 rectángulos" 
	Imprimir "Ingrese las dimensiones del rectángulo (largo por ancho) en (cm)"
	Leer A,B
	Imprimir "Ingrese el corte en las esquinas en cm"
	Leer C,D
	Si A<=0 o B<=0 o C<=0 o D<=0 o C>=0.5*A o D>=0.5*B
		Imprimir "Error en los datos, volver a ejecutar"
	SiNo
		V=(A-2*C)^2*(B-2*D)
		Imprimir "El volumen es ",V," cm^3"
	FinSi
FinAlgoritmo
