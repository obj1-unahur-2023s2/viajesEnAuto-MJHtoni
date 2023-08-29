object ludmila {
	method precioKilometro() = 18 
}

object anaMaria {
	var economicamenteEstable = true
	
	method cambiarSituacionEconomica(){
		economicamenteEstable = !economicamenteEstable
	}
	
	method economicamenteEstable() = economicamenteEstable
	
	method precioKilometro(){
		if (economicamenteEstable)
			return 30
		else
			return 25
	}		
}

object teresa {
	var property precioKilometro = 22
}

object melina {
	var precioKilometro = ludmila.precioKilometro()
	
	method precioPorQuienTrabaja(cliente) { 
		precioKilometro = cliente.precioKilometro()
	}
	method precioKilometro() = precioKilometro - 3
}