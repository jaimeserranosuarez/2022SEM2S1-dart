void main() {
  Persona objetoPersona = Persona(nombre: "Jaime",apellido: "Serrano",edad: 23);

  Padre objetoPadre = Padre(1);

  print(objetoPadre.nombre);
  var objetoTaxi = Taxi();
  objetoTaxi.placa ="123";
  objetoTaxi.kilometraje=512;
  print(objetoTaxi.tipoVehiculo());
  print(objetoTaxi.placa);

  if(objetoTaxi is Taxi){
    print("Si es de tipo Taxi");
  } else {
    print("No es de tipo Taxi")
  }
  
}
class Persona{
  String nombre;
  String? apellido;
  int? edad;

  Persona({required this.nombre,required this.apellido,required this.edad});
  Persona.completo(this.nombre);
}

class Padre extends Persona{
  int hijos;

  // Padre(this.hijos): super(nombre: "jaime", apellido: "serrano", edad: 43);
  Padre(this.hijos) : super.completo("jaime andres");
}
abstract class Vehiculo{
  late String placa;

  bool VehiculoEncendido();
}
 class Taxi extends Vehiculo with Terrestre{
  @override
  bool VehiculoEncendido() {
    return true;
  }
}
mixin Terrestre{
  int? llantas;
  int? kilometraje;

  tipoVehiculo(){
    return "Terrestre";
  }
}
  
mixin Acuatico {
  int? motores;
  
  tipoVehiculo(){
    return "Acuatico";
  }
} 
