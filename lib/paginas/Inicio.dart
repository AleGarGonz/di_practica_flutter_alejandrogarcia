import 'package:flutter/material.dart';
import 'siguiente_pagina.dart'; // Importa la siguiente página

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://www.creativefabrica.com/wp-content/uploads/2022/12/27/Abstract-Marble-Light-Background-With-Turquoise-White-Grey-Pastel-Color-54732632-1.png'), // URL de la imagen de fondo
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Imagen en forma redonda
              ClipOval(
                child: Image.network(
                  'https://img.freepik.com/vector-premium/eshop-o-logotipo-compras-linea-tambien-diseno-logotipo-tienda_608547-132.jpg',
                  width: 200,
                  height: 200,
                ),
              ),
              SizedBox(height: 20),
              // Texto "Bienvenido" debajo de la imagen
              Text(
                '¡Bienvenido!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 16, right: 16),
        child: FloatingActionButton(
          backgroundColor: Colors.white, // Fondo de color gris claro para el botón
          onPressed: () {
            // Navega a la siguiente página
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SiguientePagina()),
            );
          },
          child: Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}