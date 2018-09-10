import elementos.*
import armas.*

object luisa {
	var personajeActivo = noHayPersonaje
	
	method aparece(elemento){
		personajeActivo.encontrar(elemento)
	}
	
}


object floki {
	
	var arma = null
	
	method asignarArma(objeto){
		arma = objeto
	}
	
	method encontrar(elemento) {
	    if (arma.estaCargada()) {
	        elemento.recibirAtaque(arma.potencia()) 
	        arma.registrarUso()
	    }else{
	    	self.error("El arma debe estar cargada")
	    }
	}
}


object mario {
	var valorRecolectado = 0
	var alturaDelUltimoEncontrado = null
	
	method encontrar(elemento) {
	    valorRecolectado += elemento.valorQueOtorga()
	    elemento.recibirTrabajo()
	   	alturaDelUltimoEncontrado = elemento.altura()
	}
	
	method esFeliz(){
		return valorRecolectado >= 50 || alturaDelUltimoEncontrado >= 10
	}
}


object noHayPersonaje {
	// no hace falta ponerle ningún método, es solamente para marcarle a Luisa que no tiene ningún personaje activo
}