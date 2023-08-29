import clientes.*
 
object roxana {
	
	method precioViaje(cliente, kilometros) = cliente.precioKilometro()*kilometros
}

object gabriela {
	
	method precioViaje(cliente, kilometros) = (cliente.precioKilometro()*kilometros)*1.2
}

object mariela {
	
	method precioViaje(cliente, kilometros) = 50.max(cliente.precioKilometro()*kilometros)
}

object juana {
	
	method precioViaje(cliente, kilometros) {
		return if (kilometros <= 8){100} else{200}
	}
}