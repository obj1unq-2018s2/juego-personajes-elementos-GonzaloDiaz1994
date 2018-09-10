object castillo {
	
	var property nivelDeDefensa = 150
	
	method altura(){
		return 20
	}
	method recibirAtaque(potencia){
		nivelDeDefensa -= potencia
	}
	method valorQueOtorga(){
		return nivelDeDefensa / 5
	}
	method recibirTrabajo(){
		nivelDeDefensa = (nivelDeDefensa + 20).min(200)
	}
}

object aurora{
	
	var estaViva = true
	
	method altura(){
		return 1
	}
	method recibirAtaque(potencia){
		if(potencia >= 10){
			estaViva = false
		}
	}
	method valorQueOtorga(){
		return 15
	}
	method recibirTrabajo(){}
	
}


object tipa{
	
	var property altura = 8
	
	method recibirAtaque(potencia){}
	method valorQueOtorga(){
		return altura*2
	}
	method recibirTrabajo(){
		altura +=1
	}
	
}