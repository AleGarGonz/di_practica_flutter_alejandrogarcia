import 'package:flutter/material.dart';
import 'package:di_practica_flutter_alejandrogarcia/paginas/inicio.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InicioPage(),//tengo que hacerlo
    );
  }
}
