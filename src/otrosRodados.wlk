import pedidos.*
import dependencias.*
import colores.*
import wollok.game.*

class ChevroletCorsa {
	
	var property  color
	var property position 
	const property posiciones  = []
	var property image 
	
	method capacidad () { return 4 }

	method velocidadMaxima() { return 150 }

	method peso () { return 1300 }

	method pasoPor (posicion) { return posiciones.contains(posicion)}
	
	method pasoPorFila (numero) { return posiciones.map({ n => numero.x()}).asSet()} 
	
	method recorrioFilas(lista_de_numeros) { return posiciones.all ({ self.pasoPorFila(lista_de_numeros)})}
	
	method moverHaciaArriba() { position = position.up (1) }
	
	method moverHaciaAbajo() {  position = position.down (1) }
	
	method haciaLaDerecha() {  position = position.right (1) }
	
	method haciaLaIzquierda() {  position = position.left (1) }
	
	method cambiarColorAzul () { color = "Azul" image = deColorAzul.image()}
	
	method cambiarColorVerde () { color = "Verde" image = deColorVerde.image()}
	
	method cambiarColorRojo () { color = "Rojo" image = deColorRojo.image()}

}	
		

class RenaultKwid {
	var tieneTanqueAdicional = false

	method ponerTanque () { tieneTanqueAdicional = true }

	method sacarTanque () { tieneTanqueAdicional = false }

	method capacidad () { return if (tieneTanqueAdicional) { 3 } else { 4 } }

	method velocidadMaxima () { return if (tieneTanqueAdicional) { 120 } else { 110 } }

	method peso () { return if (tieneTanqueAdicional) { 1350 } else { 1200 } }

	method color() { return "Azul"}
}

class AutoEspecial {
	
	var property capacidad
	var property velocidadMaxima
	var property peso
	var property color
	
}