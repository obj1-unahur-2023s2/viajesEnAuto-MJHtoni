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

object lucia {
	var estaReemplazando
	
	method estaReemplazando() = estaReemplazando
	method estaReemplazando(remisera) {
		if (self == remisera)
			self.error("No se puede reemplazar a si misma")
		estaReemplazando = remisera
	}
	method precioViaje(cliente, kilometros) {
		return estaReemplazando.precioViaje(cliente, kilometros)
	}
	
}