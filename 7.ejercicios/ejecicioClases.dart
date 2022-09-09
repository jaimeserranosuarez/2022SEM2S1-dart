void main() {
  Artista artista1 = new Artista("Digital", "Diseñador Grafico", 2000000);
  Ingeniero ingeniero1 = new Ingeniero ("Desarrollo Web","Ingeniero Informatico", 8000000);
  Doctor doctor1 = new Doctor("Cardiologia", "Medicina Aplicada y Cirugia", 7500000);
  Atleta atleta1 = new Atleta("Boxeo", 10000000);

  print("El nombre del artista es ${artista1.nombre}");
  print("El Ingeniero esta " + ingeniero1.Estudiar());
  print("El doctor esta " + doctor1.Descansar());
  print("El atleta esta " + atleta1.Entrenar());
}

class Persona{
  String nombre;
  String? apellido;
  int? edad;

  Persona({required this.nombre,required this.apellido,required this.edad});
}
class Artista extends Persona {
  String? enfoqueArte;
  String?  titulo;
  int? salario;

  Artista (this.enfoqueArte,this.titulo,this.salario) : super(nombre: "Jaime", apellido: "serrano", edad: 23);

  String Dibujar() {
    return "Dibujando";
  }
}

class Ingeniero extends Persona {
  String? areaTrabajo;
  String?  titulo;
  int? salario;

  Ingeniero(this.areaTrabajo,this.titulo,this.salario): super(nombre: "Andres", apellido: "suarez", edad: 20);

  String Estudiar() {
    return "Estudiando";
  }

  String Trabajar() {
    return "Trabajando";
  }
}

class Doctor extends Persona {
  String? Especializacion;
  String?  titulo;
  int? salario;

  Doctor(this.Especializacion, this.titulo,this.salario) : super(nombre: "sebastian", apellido: "Fernandez", edad: 28);

  String Descansar() {
    return "Descansando";
  }

  String Guardia() {
    return "Empieza el Horario de Guardia";
  }
}

class Atleta extends Persona with Boxer {
  String? deporte;
  int? salario;

  Atleta(this.deporte,this.salario) : super(nombre: "Daniela", apellido: "serrano", edad: 23);
}

mixin Boxer {
  int? numeroPeleas;
  int? numeroVictorias;
  String? division;

  Entrenar() {
    return "Entrenando";
  }

  Box() {
    return "Boxear";
  }
}