import pedidos.*
import otrosRodados.*
import colores.*
import trafic.*

class Dependencias {
	
	const flotaRodados = []
	var empleados = 0
	const pedidos = []

	method empleados () { return empleados }

	method setEmpleados (cantidad) { empleados = cantidad }

	method agregarAFlota (rodado) { flotaRodados.add(rodado) }

	method pesoTotalFlota () { return flotaRodados.sum({rodado => rodado.peso()}) }

	method estaBienEquipada () { 
		return flotaRodados.size() > 3 and flotaRodados.all({rodado => rodado.velocidadMaxima() >= 100})
	}

	method capacidadTotalEnColor (color) {
		return flotaRodados.filter({rodado => rodado.color() == color}).sum({rodado => rodado.capacidad()})
	}

	method colorDelRodadoMasRapido () {
		return flotaRodados.max({rodado => rodado.velocidadMaxima()}).color()
	}

	method capacidadFaltante () {
		return empleados - flotaRodados.sum({rodado => rodado.capacidad()})
	}

	method esGrande () { return empleados >= 40 and flotaRodados.size() >= 5 }

	method agregarPedido (pedido) { pedidos.add (pedido) }
	
	method sacarPedido (pedido) { pedidos.remove (pedido)}
	
	method totalDePasajerosPedidos() { return pedidos.sum ({ p => p.cantidadDePasajeros()})}

	method noPuedeSerSatisfecho () { return pedidos.filter ({pedido => not self.pedidoSatisfecho(pedido)})}

	method pedidoSatisfecho(unPedido) { return flotaRodados.any ({ auto => unPedido.puedeSatisfacerUnpedido(auto)})}
		
	method todosComoColorIncompatible(color) { return pedidos.all ({pedido => pedido.colorIncompatible(color)})}
	
	method relajarTodosLosPedidos() { return pedidos.forEach ({pedido => pedido.relajar()})}	
	
} 

