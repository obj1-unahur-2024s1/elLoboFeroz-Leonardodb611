/*
 * 	FINALES: 
 * 		El lobo también se lo come de un bocado -> Peso Del Lobo: 27.1 (el lobo esta saludable)
 * 		El cazador provoca una crisis en el lobo -> Peso Del Lobo: 10 (no es saludable)
 * 		El Cazador pelea por 4 horas con el lobo -> Peso del lobo: 3.1 (no esta saludable)
 * 		
 * 		El lobo se alimento bien y esta lo suficiente saludable
 * 		como para soplar todas las casas con una cantidad de energia de 1000, y despues se come a todos los chanchitos,
 * 		pero termina peleando 6 horas contra el cazador, el lobo termina saludable? ->   Peso del lobo: 783 (el lobo esta obeso :( )
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
		peso = peso + (cantidadComida * 0.1)
	}
	method correrHacia_(){
		peso = peso - 1
	}
	
	method soplarCasaPaja(){
		peso = peso - casaDePaja.resistencia()
	
	}
	method soplarCasaMadera(){
		peso = peso - casaDeMadera.resistencia()
	
	}
	method soplarCasaLadrillo(){
		peso = peso - casaDeLadrillo.resistencia()
	
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

object chanchito{
	var peso = 100
	
	method peso(){
		return peso
	}
}

object casaDePaja {
	
	var resistencia = 0
	var cantChanchitos = 1
	
	method resistencia(){
		return resistencia
	}
	
	method irALaSiguienteCasa(){
		casaDeMadera.agregarChanchito(cantChanchitos)
		cantChanchitos = 0
	}
}

object casaDeMadera{
	
	var resistencia = 5
	var cantChanchitos = 1
	
	method agregarChanchito(cant){
		cantChanchitos = cantChanchitos + cant
	}
	
	method resistencia(){
		return resistencia + (cantChanchitos + chanchito.peso())
	}
	
	method irALaSiguienteCasa(){
		casaDeLadrillo.agregarChanchito(cantChanchitos)
		cantChanchitos = 0
	}
}


object casaDeLadrillo{
	
	var cantLadrillos = 10
	var cantChanchitos = 1
	
	method resistencia(){
		return cantLadrillos * 2 +  (cantChanchitos + chanchito.peso())
		
	}
	
	method agregarChanchito(cant){
		cantChanchitos = cantChanchitos + cant
	}
		
	method agregarLadrillos(cant){
		cantLadrillos = cantLadrillos + cant
	}
	
	
	method quitarLadrillos(cant){
		cantLadrillos = cantLadrillos - cant
	}
	
	method agregarChanchito(){
		cantChanchitos = cantChanchitos + 1
	}
	
}

