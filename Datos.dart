void main() {
  int edad = 25;
  double precio = 25.8;
  String nombre = "Smitherens";
  bool humano = true;

  // Se puede cambiar tantas veces sea requerido inclusive cambiando de tipo de dato dynamic
  dynamic ci = "2000";

  var open = true;

  final accept = [20, 11, 13];
  accept.add(5);
  // Diferencia entre final y const es que final no es 100% inmutable mientras que const si lo es
  const SKILL = [20, 11, 13];

  // El signo de pregunta permite la declaración de variables nulas
  String? prueba = null;

  int conversion = 22.3.toInt();
  double precioso = double.parse("25.3");
  String conversions = 333.toString();

  print("hola" + " mundo");
  // Interpolación
  print("hola $nombre");
  print("hola ${nombre.length}");

  // Escapeo de caracteres. Alt + 92 = \ -> Barra invertida
  print("\$100");

  print('''Hola probando
los saltos de linea''');

  // División sin decimales
  print(20 ~/ 3);
  // Modulo (residuo de la división)
  print(20 % 3);

  int? x;
  // Operador para valorar si una variable es una y le asigna el valor
  print(x ?? 10);

  List<String> colores = ["Amarelo", "Zuler", "Redin", "Grendo", "Norat"];
  colores.forEach((element) {
    print(element);
  });

  Map datos = {"nombre": "Skiny", "Apellido": "Pencar", "Edad": "32"};
  datos["email"] = "asd@asd.com";
  print(datos);

  datos.forEach((key, value) {
    print("$key $value");
  });

  pruebaOpcionales();
}

pruebaOpcionales() {
  imprimirNumeros(1, prueba: 10);
  imprimirNumeros(2);

  imprimirNumeros2(1, 2);
  imprimirNumeros2(3);
}

// Parametros opcionales
imprimirNumeros(int inicial, {int? prueba}) {
  print(inicial);
  print(prueba);
}

imprimirNumeros2(int inicial, [int? prueba]) {
  print(inicial);
  print(prueba);
}
