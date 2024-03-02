import 'package:flutter/material.dart';
import 'pagina_comprar.dart'; // Importa la pantalla de compra

class DescripcionProducto extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  DescripcionProducto({
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Descripción'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://www.creativefabrica.com/wp-content/uploads/2022/12/27/Abstract-Marble-Light-Background-With-Turquoise-White-Grey-Pastel-Color-54732632-1.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                imageUrl,
                width: 200, // Ancho deseado de la imagen
                height: 200, // Alto deseado de la imagen
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20), // Espacio entre la imagen y el texto
              Text(
                title,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10), // Espacio entre el nombre y la descripción
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              SizedBox(height: 20), // Espacio entre la descripción y el botón
              ElevatedButton(
                onPressed: () {
                  // Navegar a la pantalla de compra
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PantallaCompra()),
                  );
                },
                child: Text('Comprar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}