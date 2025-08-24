object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		madurez = madurez + self.energiaQueAporta() * 0.1
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}

//Ejercicio 2
object pepon {
	var energia = 30

	method energia(){
		return energia
	}

	method comer(alimento){
		energia = energia + alimento.energiaQueAporta() / 2
	}

	method volar(kilometros){
		energia = energia - 20 - 2 * kilometros
	}

}

//Ejercicio 3
object roque {
	var ave = pepita
	var cantidadCenas = 0

	method suAve(_ave){
		cantidadCenas = 0
		ave = _ave
	}

	method ave() {
		return ave
	}

	method alimentar(alimento){
		ave.comer(alimento)
		cantidadCenas = cantidadCenas + 1
	}

	method cenas(){
		return cantidadCenas
	}
	
}