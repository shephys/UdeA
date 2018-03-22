Algoritmo caja_esquinas
	//Hacer una caja cortando las esquinas de una rectángulo
	//       A
	//  x    
	//  ------------
	//  |_|      |_|
	//  |          |
	// B|          |
	//  |_        _|
	//  | |      | |
	//  ------------
	
	Imprimir "Este programa calcula el volumen de una caja formada por un rectángulo" 
	Imprimir "Ingrese las dimensiones del rectángulo (largo por ancho) en (cm)"
	Leer A,B
	Imprimir "Ingrese el corte de la esquina en cm"
	Leer x
	Si A<=0 o B<=0 o x<=0 o x>=0.5*A o x>=0.5*B
		Imprimir "Error en los datos, volver a ejecutar"
	SiNo
		V=(A-2*x)*(B-2*x)*x
		Imprimir "El volumen es ",V," cm^3"
	FinSi
FinAlgoritmo
