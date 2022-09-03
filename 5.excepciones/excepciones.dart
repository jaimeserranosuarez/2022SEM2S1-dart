void main() {
  try {
    String elNombre = obtenerNombre("jaime");
    print(elNombre);
    } on FormatException catch (e){
      print("se presento una excepción FormatException = $e");
    } on Exception catch (e) {
      print("se presento una excepción Exception = $e")
    } catch (e) {
    print("Se presento una excepción general $e");
    } finally {
      print("este es el finally")
    }
}
String obtenerNombre(String nombre){
  if(nombre == 'jaime'){
    throw FormatException("Este nombre no esta permitido");
  }
  if(nombre == 'andres'){
    throw Exception("Este nombre no esta permitido");
  }  
  return 'Mi nombre es $nombre';
}
