void main() {
  print(obtenerNombreApellidoNameParameter(apellido: "Serrano"));
  print(miFuncionAnonima("Hola"));
}
String obtenerNombre(String valor){
  return 'Mi nombre es $valor';
}

String obtenerNombreApellido(String nombre, String apellido){
  return 'Mi nombre es $nombre $apellido';
}

String obtenerNombreApellidoNameParameter(
  {String? nombre, required String apellido, int edad=0}){
  return 'Mi nombre es $nombre $apellido edad $edad';
}

String obtenerNombreApellidoDos(String nombre, [String? apellido]){
  return 'Mi nombre es $nombre $apellido';
}

var miFuncionAnonima = (String valor){
  return "el valor es $valor";
};