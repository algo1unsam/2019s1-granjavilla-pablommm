import wollok.game.*

object hector{
	var property position = game.at(2,2)
	
	method image() = "player.png"
	
	method move(nuevaPosicion) {
		self.position(nuevaPosicion)}
		
	method siembra(unaplanta){
		game.addVisualIn(unaplanta,self.position())
	}
	method regar(planta){
		
	}
	
}