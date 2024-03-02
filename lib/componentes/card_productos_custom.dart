import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String descripcion;

  CardCustom({required this.imageUrl, required this.title,required this.descripcion});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // Imagen más grande
          Expanded(
            child: Image.network(
              imageUrl, // URL de la imagen correspondiente
              fit: BoxFit.cover,
            ),
          ),
          // Nombre que ocupa un poco de espacio en la parte inferior
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              title, // Título de la tarjeta
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}