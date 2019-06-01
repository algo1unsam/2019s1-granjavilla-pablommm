import wollok.game.*
import granjero.*

class Planta{
	var property regado = 0
	method serRegada(){}	
	method serCosechada(){}
}

class Tomaco inherits Planta{
	var property position = null
	method image() = "tomaco.png"
	
	method move(nuevaPosicion) {
		self.position(nuevaPosicion)}		
	
	override method serRegada(){
				self.move(self.position().up(1))
	}
}
class Trigo inherits Planta{
	
	method image(){
		if (regado == 0){ return "wheat_0.png"}
		else{return "wheat_1.png"}
			
		}
	}			

class Maiz inherits Planta{		
	
	override method serRegada(){ regado =+ 1 }
	
	method image() {		
		if (regado > 0){return "corn_adult.png"}
		else{return "corn_baby.png"}		
	}
	method esAdulto(){		
		return regado > 0	
	}
		
	}
