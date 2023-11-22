void main() {
  // Alumno alumno = Alumno(nombre: "Smith", apellido: "Smitherens", edad: 25, telefono: "3197502666", calificaciones: [4.5, 3.8, 5.0, 4.2, 4.0]);
  Alumno alumno = Alumno();
  alumno.setNombre = "Smith";
  alumno.setApellido = "Smitherens";
  alumno.setEdad = 25;
  alumno.setTelefono = "0123456789";
  alumno.setCalificaciones = [4.5, 3.8, 5.0, 4.2, 4.0];
  alumno.obtenerPromedio();

  Profesor profesor = Profesor();
  profesor.setNombre = "Crank";
  profesor.setRfc = "A1B2C3D4E5";
  profesor._rfcProfesor();
}

class Escuela {
  bienvenida() {}
}

abstract class Persona implements Escuela {
  String _nombre = "";
  String _apellido = "";
  int _edad = 0;
  String _telefono = "";

  get getNombre => this._nombre;
  set setNombre(String nombre) => this._nombre = nombre;
  get getApellido => this._apellido;
  set setApellido(String apellido) => this._apellido = apellido;
  get getEdad => this._edad;
  set setEdad(int edad) => this._edad = 0;
  get getTelefono => this._telefono;
  set setTelefono(String telefono) => this._telefono = telefono;
}

class Alumno extends Persona {
  List<double> _calificaciones = [];

  // Alumno({this.nombre = "", this.apellido = "", this.edad = 0, this.telefono = "", this.calificaciones = const []});
  // Alumno(this.nombre, this.apellido, this.edad, this.telefono, this.calificaciones);

  get getCalificaciones => this._calificaciones;
  set setCalificaciones(List<double> calificaciones) => this._calificaciones = calificaciones;

  obtenerPromedio() {
    bienvenida();
    print("El promedio del alumno/a ${this._nombre} es ${_calcularPromedio()}");
  }

  // Los metodos privados se empiezan y llaman con _(guión bajo)
  double _calcularPromedio() {
    return this._calificaciones.reduce((value, element) => value + element) / this._calificaciones.length;
  }

  @override
  bienvenida() {
    print("Bienvenido/a alumno/a $_nombre");
  }
}

class Profesor extends Persona with Validaciones {
  String _rfc = "";

  get geRfc => this._rfc;
  set setRfc(String rfc) => this._rfc = rfc;

  _rfcProfesor() {
    bienvenida();
    if (this._rfc.isNotEmpty) {
      print("El RFC del profesor/a $_nombre es $_rfc");
    } else {
      print("El profesor/a no tiene RFC");
    }
    validarRfcHomoClave(_rfc);
  }

  @override
  bienvenida() {
    print("Bienvenido/a profesor/a $_nombre");
  }
}

mixin Validaciones {
  validarRfcHomoClave(String rfc) {
    print((rfc.length >= 10) ? "RFC con homoclave" : "RFC sin homoclave");
  }
}
