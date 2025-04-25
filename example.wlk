object envio{
  var property estaPago = false
  var property mensajero = roberto 
  method puedeEnviarse(destino) = self.estaPago() && destino.puedePasar(mensajero)
}

object puenteDeBrooklyn{
  method puedePasar(mensajero) = mensajero.peso() <= 1000
}

object laMatrix{
  method puedePasar(mensajero) = mensajero.puedeLlamar()
}

object roberto{
  var property pesoFisico = 90
  method peso() = pesoFisico + vehiculo.peso()
  var property vehiculo = bicicleta
  var property puedeLlamar = true
}

object chuck{
  var property peso = 80
  var property puedeLlamar = true
}

object neo{
  var property peso = 70
  var property tieneCredito = true
  var property puedeLlamar = self.tieneCredito()
}

object bicicleta{
  var property peso = 5
}

object camion{
  var property acoplado = 1
  const property peso = 500 * acoplado
}

object empresa{
  const property mensajeros = [neo, chuck]
  method contratar(mensajero){
    mensajeros.add(mensajero)
  }
  method despedir(mensajero){
    mensajeros.remove(mensajero)
  }
  method despedirTodos(){
    mensajeros.clear()
  }
  method mensajeriaEsGrande() = (mensajeros.size() > 2)
  method paquetePuedeEntregarsePorElPrimero(destino){
    return destino.puedePasar(mensajeros.first())
  }
  method pesoDelUltimo() = mensajeros.last().peso()

}