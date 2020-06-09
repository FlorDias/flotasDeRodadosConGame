import otrosRodados.*
import trafic.*
import dependencias.*

class Pedidos {
	
	var property distanciaARecorrer
	var property tiempoMaximo
	var property cantidadDePasajeros
	var property  coloresIncompatibles = #{}
	
	method velocidadRequerida() { return distanciaARecorrer / tiempoMaximo  } 
	
	method puedeSatisfacerUnPedido(auto) { return auto.velocidadMaxima() + 10 < distanciaARecorrer 
		and auto.capacidad() <= cantidadDePasajeros and not self.colorIncompatible(auto) 
	}
	
	method agregarColorIncompatible (color) { coloresIncompatibles.add (color)}
	
	method sacarColorIncompatible (color) { coloresIncompatibles.remove (color)}
	
	method colorIncompatible(color) { return coloresIncompatibles.contains(color)  }
	
	method acelerar () { return tiempoMaximo - 1 }
	
	method relajar () { return tiempoMaximo + 1 }
	
}
