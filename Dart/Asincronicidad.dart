// El async y await de la linea 2 y la 8 y 16 es solo para esperar a que el metodo termine no es necesario para la asincronicidad
void main() async {
  inicio();

  // Para recibir lo retornado .then()
  // Para cuando termine .whenComplete()
  // Por si falla .catchError()
  // await accion().then((String value) {
  //   print("El mensaje es $value");
  // }).whenComplete(() {
  //   print("Completado mi papa");
  // }).catchError((error) {
  //   print("Error ${error.toString()}");
  // });

  try {
    String value = await accion();
    print(value);
  } catch (e) {
    print(e.toString());
  }
  fin();
}

inicio() {
  print("Inicio");
}

Future<String> accion() async {
  for (var i = 1; i <= 10; i++) {
    print("Accion $i");
  }
  return Future.delayed(Duration(seconds: 4), () => "Listo...");
}

fin() {
  print("Fin");
}
