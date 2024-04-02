/*
 * 	FINALES: 
 * 		El lobo también se lo come de un bocado -> Peso Del Lobo: 27.1 
 * 		El cazador provoca una crisis en el lobo -> Peso Del Lobo: 0
 * 		El Cazador pelea por 4 horas con el lobo -> Peso del lobo: 3.1
 * 
 */




object lobo {
	
	var peso = 10
	
	method estaSaludable() {
		return peso.between(20, 150)
	}
	method aumentarPeso(cantidad){
		peso = peso + cantidad
	}
	method disminuirPeso(cantidad){
		peso = peso - cantidad
		
	}
	method sufrirUnaCrisis(){
		peso = 10
	}
	method comerAlgo(cantidadComida){
		peso = peso + (cantidadComida / 10)
	}
	method correrHacia_(){
		peso = peso - 1
	}
	
}


object caperucita {

	var peso = 60
	var cantManzanas = 6
	
	method pesoDeLaCanasta(){
		return cantManzanas * manzana.peso()
	}
	
	method quitarManzanas(cantidad){
		 cantManzanas = cantManzanas - cantidad
	}
	
	method agregarManzanas(cantidad){
		 cantManzanas = cantManzanas + cantidad
	
	}
	
	method pesoTotalCaperucita(){
		return peso + self.pesoDeLaCanasta()
	}
	
	
}

object abuelita {

	var peso = 50
	
	method pesoTotalAbuelita(){
		return peso
	}
	
}

object cazador {
	
	var peso = 80
	
	method darCrisisAlLobo(){
		lobo.sufrirUnaCrisis()
	}
	
	method pelearConElLobo(horasPeleadas){
		lobo.disminuirPeso((horasPeleadas * 4))
		
	}
	
	method pesoTotalCazador(){
		return peso
	}
	
}




object manzana {
	
	var peso = 0.2
	
	method peso(){
		return peso
	}
}
