import wollok.game.*
import plantas.*


object hector{
	var property position = game.at(2,2)
	
	method image() = "player.png"
	
	method move(nuevaPosicion) {
		self.position(nuevaPosicion)}
		
	method siembra(unaplanta){
		game.addVisualIn(unaplanta,self.position())
	}
	method regar(planta){
		if (planta == []){
			game.say(self , "no hay nada que regar")
		}else{planta.forEach{cosa => cosa.serRegada()}}
		}
	method cosechar(planta){
		if (planta == []){
			game.say(self , "no hay nada que cosechar")}
			else{
		planta.forEach{cosa => cosa.serCosechada()}}
	}
}
	
